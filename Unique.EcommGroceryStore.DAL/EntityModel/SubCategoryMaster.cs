
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
    
public partial class SubCategoryMaster
{

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public SubCategoryMaster()
    {

        this.ProductDetails = new HashSet<ProductDetails>();

    }


    public int SubCategoryId { get; set; }

    public int MainCategoryId { get; set; }

    public string Name { get; set; }



    public virtual MainCategoryMaster MainCategoryMaster { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<ProductDetails> ProductDetails { get; set; }

}

}
