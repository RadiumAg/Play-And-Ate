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
    
    public partial class Customers
    {
        public int CustomerId { get; set; }
        public string Name { get; set; }
        public string Phone { get; set; }
        public string Id_Number { get; set; }
        public int CardTypeId { get; set; }
        public int OrderItemID { get; set; }
    
        public virtual CardType CardType { get; set; }
        public virtual OrderItem OrderItem { get; set; }
    }
}
