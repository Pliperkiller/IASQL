using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace IASQL.Models
{
    public class Pais
    {

        [Key]
        public int IdPais { get; set; }

        [Required]
        public string NombrePais { get; set; }

        [Required]
        public DateTime FechaCreacion { get; set; }

        [Required]
        [MaxLength(100)]
        public string UsuarioCreador { get; set; }
        public virtual ICollection<Departamento> Departamentos { get; set; }
    }
}
