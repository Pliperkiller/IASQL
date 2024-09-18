using System.ComponentModel.DataAnnotations;
using System.Threading;

namespace IASQL.Models
{
    public class Descuento
    {
        [Key]
        public int IdDescuento { get; set; }

        [Required]
        [MaxLength(200)]
        public string NombreDescuento { get; set; }

        [Required]
        public float ValorDescuento { get; set; }

        [Required]
        public DateTime FechaCreacion { get; set; }

        [Required]
        [MaxLength(100)]
        public string UsuarioCreador { get; set; }

        public virtual ICollection<Producto> Productos { get; set; }
    }
}
