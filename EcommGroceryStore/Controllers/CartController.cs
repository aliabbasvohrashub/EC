using System;
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

namespace EcommGroceryStore.Controllers
{
    public class CartController : ApiController
    {
        private EcommGroceryDataContext db = new EcommGroceryDataContext();

        // GET api/Cart
        public IQueryable<Cart> GetCart()
        {
            return db.Cart;
        }

        // GET api/Cart/5
        [ResponseType(typeof(Cart))]
        public IHttpActionResult GetCart(int id)
        {
            Cart cart = db.Cart.Find(id);
            if (cart == null)
            {
                return NotFound();
            }

            return Ok(cart);
        }

        // PUT api/Cart/5
        public IHttpActionResult PutCart(int id, Cart cart)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != cart.CartId)
            {
                return BadRequest();
            }

            db.Entry(cart).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!CartExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST api/Cart
        [ResponseType(typeof(Cart))]
        [HttpPost]
        public IHttpActionResult PostCart(Cart cart)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);//"error";//
            }

            cart.DateCreated = System.DateTime.Now;
            db.Cart.Add(cart);
            db.SaveChanges();
            return CreatedAtRoute("CartApi", new { id = cart.CartId }, cart);
        }


        [ResponseType(typeof(CartDetail))]
        [HttpPost]
        public IHttpActionResult PostCartDetail(CartDetail cartdetail)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);//"error";//
            }

            bool count = db.CartDetail.Where(x => x.ProductId == cartdetail.ProductId && x.CartId == cartdetail.CartId).Any();
            if (count)
            {
                cartdetail.Timestamp = System.DateTime.Now;
                var quantitysupplied = db.CartDetail.Where(x => x.ProductId == cartdetail.ProductId && x.CartId == cartdetail.CartId).Select(x => x.Quantity).FirstOrDefault().HasValue ? db.CartDetail.Where(x => x.ProductId == cartdetail.ProductId && x.CartId == cartdetail.CartId).Select(x => x.Quantity).FirstOrDefault() : 0;
                cartdetail.CartDetailId = db.CartDetail.Where(x => x.ProductId == cartdetail.ProductId && x.CartId == cartdetail.CartId).Select(x => x.CartDetailId).Single();
                cartdetail.Quantity = cartdetail.Quantity.HasValue ? cartdetail.Quantity : 0 + Convert.ToInt16(quantitysupplied);
                db.Entry(cartdetail).State = EntityState.Modified;

                try
                {
                    db.SaveChanges();
                }
                catch (DbUpdateConcurrencyException)
                {
                    throw;
                }
            }
            else
            {

                cartdetail.Timestamp = System.DateTime.Now;
                db.CartDetail.Add(cartdetail);
                db.SaveChanges();
            }
            return CreatedAtRoute("CartApi", new { id = cartdetail.CartDetailId }, cartdetail);
        }


        public void Posting([FromBody]string name)
        {
        }


        [ResponseType(typeof(string))]
        [HttpPost]
        public IHttpActionResult GetNewPostMethod(string cart)
        {
            //db.Cart.Add(cart);
            //db.SaveChanges();
            //  return cart.CartId.ToString();
            return CreatedAtRoute("CartApi", new { id = 1 }, cart);
            //return CreatedAtRoute("ActionApi", new { id = cart.CartId }, cart);

        }

        // DELETE api/Cart/5
        [ResponseType(typeof(Cart))]
        public IHttpActionResult DeleteCart(int id)
        {
            Cart cart = db.Cart.Find(id);
            if (cart == null)
            {
                return NotFound();
            }

            db.Cart.Remove(cart);
            db.SaveChanges();

            return Ok(cart);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool CartExists(int id)
        {
            return db.Cart.Count(e => e.CartId == id) > 0;
        }
    }
}