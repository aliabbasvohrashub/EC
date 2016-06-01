﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using Unique.EcommGroceryStore.DAL.EntityModel;
using EcommGroceryStore.ViewModels;
using Unique.EcommGroceryStore.Core.Utility;

namespace EcommGroceryStore.Controllers
{
    public class ProductDetailsController : ApiController 
    {

        private EcommGroceryDataContext dbContext = new EcommGroceryDataContext();

        // GET api/<controller>
        public IQueryable<ProductDetails> GetProductDetails()
        {
            return dbContext.ProductDetails;
            //try
            //{
            //    using (var dbContext = new EcommGroceryDataContext())
            //    {
            //        return dbContext.ProductDetails;
            //    }
            //}
            //catch (Exception ex)
            //{
            //    throw;
            //}  
        }

        public IQueryable<vmProductDetails> getProductList()
        {
            return dbContext.ProductDetails.Select(x => new vmProductDetails
            {
                ProductId = x.ProductId,
                ProductName = x.ProductName,
                MainCategoryName = dbContext.ProductDetails.Where(xx => xx.MainCategoryId == x.MainCategoryId).Select(y => y.MainCategoryMaster.Name).FirstOrDefault(),
                SubCategoryName = dbContext.ProductDetails.Where(xx => xx.SubCategoryId == x.SubCategoryId).Select(y => y.SubCategoryMaster.Name).FirstOrDefault(),
                Quantity = x.Quantity,
                Description = x.Description,
                ImageURL = x.ImageURL,
                PricePerUnit = x.PricePerUnit,
                Unit = x.Unit,
                Status = x.Status
            });
        }


        public IQueryable<vmProductDetails> getFruitsList(int startindex, int stopindex)
        {
            IQueryable<vmProductDetails> query = dbContext.ProductDetails.Where(o => o.MainCategoryId == 2).Select(x => new vmProductDetails
            {
                ProductId = x.ProductId,
                ProductName = x.ProductName,
                MainCategoryName = dbContext.ProductDetails.Where(xx => xx.MainCategoryId == x.MainCategoryId).Select(y => y.MainCategoryMaster.Name).FirstOrDefault(),
                SubCategoryName = dbContext.ProductDetails.Where(xx => xx.SubCategoryId == x.SubCategoryId).Select(y => y.SubCategoryMaster.Name).FirstOrDefault(),
                Quantity = x.Quantity,
                Description = x.Description,
                ImageURL = x.ImageURL,
                PricePerUnit = x.PricePerUnit,
                Unit = x.Unit,
                Status = x.Status
            });

            query = query.OrderByField("ProductName", false,8 , 0);

            return query;

            //return dbContext.ProductDetails.Where(o=>o.MainCategoryId ==2).Select(x => new vmProductDetails
            //{
            //    ProductId = x.ProductId,
            //    ProductName = x.ProductName,
            //    MainCategoryName = dbContext.ProductDetails.Where(xx => xx.MainCategoryId == x.MainCategoryId).Select(y => y.MainCategoryMaster.Name).FirstOrDefault(),
            //    SubCategoryName = dbContext.ProductDetails.Where(xx => xx.SubCategoryId == x.SubCategoryId).Select(y => y.SubCategoryMaster.Name).FirstOrDefault(),
            //    Quantity = x.Quantity,
            //    Description = x.Description,
            //    ImageURL = x.ImageURL,
            //    PricePerUnit = x.PricePerUnit,
            //    Unit = x.Unit,
            //    Status = x.Status
            //}).OrderBy(x=>x.ProductName).Skip(startindex).Take(stopindex);
        }

        public IQueryable<vmPrdListDependency> getProductDetailsList()
        {
            return dbContext.ProductDetails.Select(x => new vmPrdListDependency
            {
                ProductId = x.ProductId,
                ProductName = x.ProductName,
                MainCategoryId = x.MainCategoryId,
                SubCategoryId = x.SubCategoryId,
                MainCategoryNames = dbContext.MainCategoryMaster.Select(a => new MainCategoryMasterSub { MainCategoryId = a.MainCategoryId, MainCategoryName = a.Name }).ToList(),
                SubCategoryNames = dbContext.SubCategoryMaster.Select(a => new SubCategoryMasterSub { SubCategoryId = a.SubCategoryId, SubCategoryName = a.Name }).ToList(),
                Quantity = x.Quantity,
                Description = x.Description,
                ImageURL = x.ImageURL,
                PricePerUnit = x.PricePerUnit,
                Unit = x.Unit,
                Status = x.Status
            });
        }


        public vmProductListMainSubCategories getProductDetailsList1()
        {
            dbContext.Configuration.ProxyCreationEnabled = false;
            vmProductListMainSubCategories obj = new vmProductListMainSubCategories();

            // obj.prd = dbContext.ProductDetails.ToList();
            obj.listMain = dbContext.MainCategoryMaster.ToList();
            obj.listSub = dbContext.SubCategoryMaster.ToList();

            return obj;
        }


        //public IQueryable<vmProductDetails> getProductList() {
        //    return dbContext.ProductDetails.Select(x => new vmProductDetails
        //    {
        //        ProductId = x.ProductId,
        //        ProductName = x.ProductName,
        //        MainCategoryId = x.MainCategoryId,
        //        SubCategoryId = x.SubCategoryId,
        //        Quantity = x.Quantity,
        //        Description = x.Description,
        //        ImageURL = x.ImageURL,
        //        PricePerUnit = x.PricePerUnit,
        //        Unit = x.Unit,
        //        Status = x.Status
        //    });
        //}

        [ResponseType(typeof(ProductDetails))]
        public IHttpActionResult GetProductDetails(int id)
        {
            //using (EcommGroceryDataContext dbContext = new EcommGroceryDataContext())
            //{
            ProductDetails prd = dbContext.ProductDetails.Find(id);
            if (prd == null)
            {
                return NotFound();
            }
            return Ok(prd);
            //}
        }



        // POST api/ProductDetails
        [ResponseType(typeof(ProductDetails))]
        public IHttpActionResult PostProductDetails(ProductDetails productdetails)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }
            //using (EcommGroceryDataContext dbContext = new EcommGroceryDataContext())
            //{
            dbContext.ProductDetails.Add(productdetails);
            dbContext.SaveChanges();
            //} 

            return CreatedAtRoute("DefaultApi", new { id = productdetails.ProductId }, productdetails);
        }

        // PUT api/<controller>/5
        public IHttpActionResult PutProductDetails(int id, ProductDetails productdetails)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != productdetails.ProductId)
            {
                return BadRequest();
            }


            //using (EcommGroceryDataContext dbContext = new EcommGroceryDataContext())
            //{
            dbContext.Entry(productdetails).State = EntityState.Modified;

            try
            {
                dbContext.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!(dbContext.ProductDetails.Count(e => e.ProductId == id) > 0))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }
            //} 

            return StatusCode(HttpStatusCode.NoContent);
        }

        // DELETE api/ProductDetails/5
        [ResponseType(typeof(ProductDetails))]
        public IHttpActionResult DeleteProductDetails(int id)
        {
            //using (EcommGroceryDataContext dbContext = new EcommGroceryDataContext())
            //{
            ProductDetails productdetails = dbContext.ProductDetails.Find(id);
            if (productdetails == null)
            {
                return NotFound();
            }

            dbContext.ProductDetails.Remove(productdetails);
            dbContext.SaveChanges();

            return Ok(productdetails);
            //}
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                dbContext.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}