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
    
    public partial class Sp_GetTransactionList_Result
    {
        public int TransactionId { get; set; }
        public int UserId { get; set; }
        public System.DateTime TransactionDate { get; set; }
        public Nullable<System.DateTime> ConfirmationDate { get; set; }
        public bool IsConfirm { get; set; }
        public string PGTransactionId { get; set; }
        public string InvoiceId { get; set; }
        public string Custom { get; set; }
        public string Custom1 { get; set; }
        public int CartId { get; set; }
        public string FullName { get; set; }
        public string EmailId { get; set; }
        public string MobileNumber { get; set; }
        public string AlternateNumber { get; set; }
    }
}
