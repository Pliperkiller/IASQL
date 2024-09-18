using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace IASQL.Models
{
    public class Empleado
    {
        [Key]
        public int IdEmpleado { get; set; }

        [ForeignKey("Establecimiento")]
        public int IdEstablecimiento { get; set; }
        public virtual Establecimiento Establecimiento { get; set; }

        [ForeignKey("Rol")]
        public int IdRol { get; set; }
        public virtual Rol Rol { get; set; }

        [Required]
        public long Documento { get; set; }

        [Required]
        public string Nombre { get; set; }

        [Required]
        public string Apellido { get; set; }

        [Required]
        public float SalarioEmpleado { get; set; }

        [Required]
        public bool EmpleadoActivo { get; set; }

        [Required]
        public DateTime FechaCreacion { get; set; }

        [Required]
        [MaxLength(100)]
        public string UsuarioCreador { get; set; }

    }
}
