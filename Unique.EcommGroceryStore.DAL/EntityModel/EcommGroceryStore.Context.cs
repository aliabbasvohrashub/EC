﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Unique.EcommGroceryStore.DAL.EntityModel
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class EcommGroceryDataContext : DbContext
    {
        public EcommGroceryDataContext()
            : base("name=EcommGroceryDataContext")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<AddressDetails> AddressDetails { get; set; }
        public virtual DbSet<AreaMaster> AreaMaster { get; set; }
        public virtual DbSet<CityMaster> CityMaster { get; set; }
        public virtual DbSet<CountryMaster> CountryMaster { get; set; }
        public virtual DbSet<CouponDetails> CouponDetails { get; set; }
        public virtual DbSet<FollowUpDetails> FollowUpDetails { get; set; }
        public virtual DbSet<MainCategoryMaster> MainCategoryMaster { get; set; }
        public virtual DbSet<ProductDetails> ProductDetails { get; set; }
        public virtual DbSet<Roles> Roles { get; set; }
        public virtual DbSet<SubCategoryMaster> SubCategoryMaster { get; set; }
        public virtual DbSet<Users> Users { get; set; }
    }
}
