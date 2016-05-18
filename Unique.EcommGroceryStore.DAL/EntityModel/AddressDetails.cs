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
    
    public partial class AddressDetails
    {
        public int AddressId { get; set; }
        public int UserId { get; set; }
        public string Address { get; set; }
        public string Landmark { get; set; }
        public string Direction { get; set; }
        public int CityId { get; set; }
        public int AreaId { get; set; }
        public int CountryId { get; set; }
        public string Pincode { get; set; }
        public int AddressTypeId { get; set; }
        public string OtherAddress { get; set; }
    
        public virtual AreaMaster AreaMaster { get; set; }
        public virtual CityMaster CityMaster { get; set; }
        public virtual CountryMaster CountryMaster { get; set; }
        public virtual Users Users { get; set; }
    }
}
