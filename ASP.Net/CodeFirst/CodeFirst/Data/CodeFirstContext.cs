using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using CodeFirst.Model;

namespace CodeFirst.Data
{
    public class CodeFirstContext : DbContext
    {
        public CodeFirstContext (DbContextOptions<CodeFirstContext> options)
            : base(options)
        {
        }

        public DbSet<CodeFirst.Model.Product> Product { get; set; } = default!;
    }
}
