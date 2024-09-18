using Microsoft.EntityFrameworkCore.Metadata.Internal;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace IASQL.Models
{
    public class CodCompra
    {
        [Key]
        public int IdCodCompra { get; set; }


        [ForeignKey("Compra")]
        public int IdCompra { get; set; }
        public virtual Compra Compra { get; set; }

        [Required]
        public DateTime FechaCreacion { get; set; }

        [Required]
        [MaxLength(100)]
        public string UsuarioCreador { get; set; }

        public virtual ICollection<Transaccion> Transacciones { get; set; }
    }
}
