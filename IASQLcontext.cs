using IASQL.Models;
using Microsoft.EntityFrameworkCore;

namespace IASQL
{
    public class IASQLcontext: DbContext
    {
        public DbSet<Producto> Productos { get; set; }
        public DbSet<Categoria> Categorias { get; set; }
        public DbSet<Descuento> Descuentos { get; set;}

        public IASQLcontext(DbContextOptions<IASQLcontext> options) : base(options) { }

    }
}
