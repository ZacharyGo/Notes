using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace DatabaseFirstSample.Repos.Models;

public partial class Blog
{
    [Key]
    public int BlogId { get; set; }

    [StringLength(200)]
    public string? Name { get; set; }

    [StringLength(200)]
    public string? Url { get; set; }

    [InverseProperty("Blog")]
    public virtual ICollection<Post> Posts { get; } = new List<Post>();
}
