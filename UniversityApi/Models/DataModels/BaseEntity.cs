using System.ComponentModel.DataAnnotations;

namespace UniversityApi.Models.DataModels
{
    public class BaseEntity
    {
        [Required]
        [Key]
        public int Id { get; set; }

        public string? createdBy { get; set; }
        public string? updatedBy { get; set; }

        public string? deletedBy { get; set; }
        public DateTime createdAt { get; set; } = DateTime.Now;
        public DateTime? updatedAt { get; set; }
        public DateTime deletedAt { get; set; }
        public bool isDeleted { get; set; }
    }
}
