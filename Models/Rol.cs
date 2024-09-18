using System.ComponentModel.DataAnnotations;

namespace IASQL.Models
{
    public class Rol
    {
        [Key]
        public int IdRol { get; set; }

        [Required]
        public string NombreRol { get; set; }

        [Required]
        public DateTime FechaCreacion { get; set; }

        [Required]
        [MaxLength(100)]
        public string UsuarioCreador { get; set; }

        public virtual ICollection<Empleado> Empleados { get; set; }
    }
}
