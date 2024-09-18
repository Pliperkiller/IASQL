using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace IASQL.Models
{
    public class Ciudad
    {
        [Key]
        public int IdCiudad { get; set; }

        [ForeignKey("Departamento")]
        public int IdDepartamento { get; set; }

        [Required]
        public string NombreCiudad { get; set; }

        [Required]
        public DateTime FechaCreacion { get; set; }

        [Required]
        [MaxLength(100)]
        public string UsuarioCreador { get; set; }

        public virtual ICollection<Establecimiento> Establecimientos { get; set; }
    }
}
