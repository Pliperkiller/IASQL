using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace IASQL.Models
{
    public class Compra
    {
        [Key]
        public int IdCompra { get; set; }

        [Required]
        [ForeignKey("Producto")]
        public int IdProducto { get; set; }
        public virtual Producto Producto { get; set; }

        [Required]
        public int CantProducto { get; set; }

        [Required]
        public DateTime FechaCreacion { get; set; }

        [Required]
        [MaxLength(100)]
        public string UsuarioCreador { get; set; }

        public virtual ICollection<CodCompra> CodsCompra { get; set; }

    }
}
