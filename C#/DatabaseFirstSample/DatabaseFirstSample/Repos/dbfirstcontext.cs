using System;
using System.Collections.Generic;
using DatabaseFirstSample.Repos.Models;
using Microsoft.EntityFrameworkCore;

namespace DatabaseFirstSample.Repos;

public partial class dbfirstcontext : DbContext
{
    public dbfirstcontext()
    {
    }

    public dbfirstcontext(DbContextOptions<dbfirstcontext> options)
        : base(options)
    {
    }

    public virtual DbSet<Blog> Blogs { get; set; }

    public virtual DbSet<Post> Posts { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=G07PHXNWES03492\\MSSQL2017;Initial Catalog=DatabaseFirst.Blogging; Trusted_Connection=True;TrustServerCertificate=True;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Blog>(entity =>
        {
            entity.HasKey(e => e.BlogId).HasName("PK_dbo.Blogs");
        });

        modelBuilder.Entity<Post>(entity =>
        {
            entity.HasKey(e => e.PostId).HasName("PK_dbo.Posts");

            entity.HasOne(d => d.Blog).WithMany(p => p.Posts).HasConstraintName("FK_dbo.Posts_dbo.Blogs_BlogId");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
