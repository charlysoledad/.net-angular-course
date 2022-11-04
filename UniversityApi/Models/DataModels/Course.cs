using System.ComponentModel.DataAnnotations;

namespace UniversityApi.Models.DataModels
{
    public class Course : BaseEntity
    {
        public string Name { get; set; } = string.Empty;
        [StringLength(280)]
        public string ShortDescription { get; set; } = string.Empty;
        public string Description { get; set; } = string.Empty;
        public string PublicObjective { get; set; } = string.Empty;
        public string Objectives { get; set; } = string.Empty;
        public string Requirements { get; set; } = string.Empty;
        public Level Level { get; set; } = Level.Basic;

    }
}    
