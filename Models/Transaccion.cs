using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace IASQL.Models
{
    public class Transaccion
    {
        [Key]
        public int IdTransaccion { get; set; }

        [ForeignKey("CodCompra")]
        public int IdCodCompra {  get; set; }
        
        [ForeignKey("Empleado")]
        public int IdVendedor { get; set; }

        [ForeignKey("Cliente")]
        public int IdCliente { get; set; }
        

        [Required]
        public float TotalValorCompra { get; set; }

        [Required]
        public DateTime FechaTransacc {  get; set; }

        [Required]
        public DateTime FechaCreacion { get; set; }

        [Required]
        [MaxLength(100)]
        public string UsuarioCreador { get; set; }

        public virtual Empleado Empleado { get; set; }
        public virtual CodCompra CodCompra { get; set; }
        public virtual Cliente Cliente { get; set; }
    }
}
