//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace FTZ.PlayAndAte.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Product
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Product()
        {
            this.Image = new HashSet<Image>();
            this.Order = new HashSet<Order>();
            this.Point = new HashSet<Point>();
        }
    
        public int ProductId { get; set; }
        public int UserId { get; set; }
        public string ProductName { get; set; }
        public Nullable<int> PPTId { get; set; }
        public Nullable<int> AreaId { get; set; }
        public Nullable<decimal> ProductPrice { get; set; }
        public string DetailAreaName { get; set; }
        public string DetailIntroduction { get; set; }
        public string Feature { get; set; }
    
        public virtual Area Area { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Image> Image { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Order> Order { get; set; }
        public virtual PPointsType PPointsType { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Point> Point { get; set; }
        public virtual UserInfo_Role UserInfo_Role { get; set; }
    }
}
