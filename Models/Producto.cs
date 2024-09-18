using Microsoft.EntityFrameworkCore.Metadata.Internal;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace IASQL.Models
{
    public class Producto
    {
        [Key]
        public int IdProducto { get; set; }

        [ForeignKey("Categoria")]
        public int IdCategoria { get; set; }
        public virtual Categoria Categoria { get; set; }

        [ForeignKey("Descuento")]
        public int IdDescuento { get; set; }
        public virtual Descuento Descuento { get; set; }


        public bool DescuentoActivo { get; set; }

        [Required]
        [MaxLength(200)]
        public string NombreProducto { get; set; }

        [Required]
        public float PrecioProducto { get; set; }

        [Required]
        public DateTime FechaCreacion { get; set; }

        [Required]
        public string UsuarioCreador { get; set; }

        public virtual ICollection<Compra> Compras { get; set; }

    }
}
