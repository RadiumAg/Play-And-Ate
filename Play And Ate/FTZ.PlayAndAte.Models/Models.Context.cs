﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class PlayAndAteEntities : DbContext
    {
        public PlayAndAteEntities()
            : base("name=PlayAndAteEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Area> Area { get; set; }
        public virtual DbSet<CardType> CardType { get; set; }
        public virtual DbSet<Contacts> Contacts { get; set; }
        public virtual DbSet<Customers> Customers { get; set; }
        public virtual DbSet<Image> Image { get; set; }
        public virtual DbSet<Order> Order { get; set; }
        public virtual DbSet<OrderItem> OrderItem { get; set; }
        public virtual DbSet<PPointsType> PPointsType { get; set; }
        public virtual DbSet<Product> Product { get; set; }
        public virtual DbSet<PTotalType> PTotalType { get; set; }
        public virtual DbSet<Role_UserInfo> Role_UserInfo { get; set; }
        public virtual DbSet<Sincerity> Sincerity { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<UserInfo_Role> UserInfo_Role { get; set; }
        public virtual DbSet<Point> Point { get; set; }
    }
}
