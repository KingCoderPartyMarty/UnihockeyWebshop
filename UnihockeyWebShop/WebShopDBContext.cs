namespace UnihockeyWebShop
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class WebShopDBContext : DbContext
    {
        public WebShopDBContext()
            : base("name=WebShopDBContext")
        {
        }

        public virtual DbSet<Benutzer> Benutzer { get; set; }
        public virtual DbSet<Unihockeystock> Unihockeystock { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Unihockeystock>()
                .Property(e => e.Preis)
                .HasPrecision(18, 0);
        }
    }
}
