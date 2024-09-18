using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace IASQL.Models
{
    public class Establecimiento
    {

        [Key]
        public int IdEstablecimiento { get; set; }

        [ForeignKey("Ciudad")]
        public int IdCiudad { get; set; }
        public virtual Ciudad Ciudad { get; set; }

        public string NombreLocal {  get; set; }

        [Required]
        public DateTime FechaCreacion { get; set; }

        [Required]
        [MaxLength(100)]
        public string UsuarioCreador { get; set; }

        public virtual ICollection<Empleado> Empleados { get; set; }

    }
}
