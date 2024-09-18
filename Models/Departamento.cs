using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace IASQL.Models
{
    public class Departamento
    {

        [Key]
        public int IdDepartamento { get; set; }

        [ForeignKey("Pais")]
        public int IdPais { get; set; }

        [Required]
        public string NombreDepartamento { get; set; }

        public virtual ICollection<Ciudad> Ciudades { get; set; }
    }
}
