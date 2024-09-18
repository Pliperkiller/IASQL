using System.ComponentModel.DataAnnotations;

namespace IASQL.Models
{
    public class Cliente
    {
        [Key]
        public int IdCliente { get; set; }

        [Required]
        public int Documento { get; set;}

        [Required]
        public string Nombre { get; set;}

        [Required]
        public string Apellido { get; set;}

        [Required]
        public DateOnly FechaNacimiento {  get; set;}
        public string Telefono { get; set; }

        [Required]
        public DateTime FechaCreacion { get; set; }

        [Required]
        [MaxLength(100)]
        public string UsuarioCreador { get; set; }

        public virtual ICollection<Transaccion> Transacciones { get; set; }
    }
}
