//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class CouponDetails
    {
        public int CouponId { get; set; }
        public string CouponCode { get; set; }
        public System.DateTime ExpDate { get; set; }
        public bool Status { get; set; }
        public int DiscountPer { get; set; }
    }
}
