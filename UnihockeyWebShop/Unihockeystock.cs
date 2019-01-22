namespace UnihockeyWebShop
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Unihockeystock")]
    public partial class Unihockeystock
    {
        public int Id { get; set; }

        [Column("UnihockeyStock")]
        public string UnihockeyStock { get; set; }

        public string Marke { get; set; }

        public decimal? Preis { get; set; }
    }
}
