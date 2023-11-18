using System;
using System.Collections.Generic;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace Prueba002.Models.dbModels
{
    public partial class Incio_ProyectoContext : IdentityDbContext<ApplicationUser , IdentityRole<int>,int>
    {
        public Incio_ProyectoContext()
        {
        }
        // 
        public Incio_ProyectoContext(DbContextOptions<Incio_ProyectoContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Carrito> Carritos { get; set; } = null!;
        public virtual DbSet<Categorium> Categoria { get; set; } = null!;
        public virtual DbSet<Ciudad> Ciudads { get; set; } = null!;
        public virtual DbSet<Compra> Compras { get; set; } = null!;
        public virtual DbSet<DetalleCompra> DetalleCompras { get; set; } = null!;
        public virtual DbSet<EstatusEnvio> EstatusEnvios { get; set; } = null!;
        public virtual DbSet<Marca> Marcas { get; set; } = null!;
        public virtual DbSet<Producto> Productos { get; set; } = null!;
        public virtual DbSet<Proveedor> Proveedors { get; set; } = null!;


        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            modelBuilder.Entity<Carrito>(entity =>
            {
                entity.HasKey(e => new { e.IdProducto, e.IdUsuario })
                    .HasName("PK_Carrito_1");

                entity.HasOne(d => d.IdProductoNavigation)
                    .WithMany(p => p.Carritos)
                    .HasForeignKey(d => d.IdProducto)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Carrito_Producto");

                entity.HasOne(d => d.IdUsuarioNavigation)
                    .WithMany(p => p.Carritos)
                    .HasForeignKey(d => d.IdUsuario)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Carrito_Usuario");
            });

            modelBuilder.Entity<Categorium>(entity =>
            {
                entity.HasKey(e => e.IdCategoria)
                    .HasName("PK_categoria");
            });

            modelBuilder.Entity<Compra>(entity =>
            {
                entity.HasOne(d => d.IdEstatusEnvioNavigation)
                    .WithMany(p => p.Compras)
                    .HasForeignKey(d => d.IdEstatusEnvio)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Compra_EstatusEnvio");
            });

            modelBuilder.Entity<DetalleCompra>(entity =>
            {
                entity.HasKey(e => new { e.IdCompra, e.IdProducto })
                    .HasName("PK_Detalle-Compra_1");

                entity.HasOne(d => d.IdCompraNavigation)
                    .WithMany(p => p.DetalleCompras)
                    .HasForeignKey(d => d.IdCompra)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Detalle-Compra_Compra1");

                entity.HasOne(d => d.IdProductoNavigation)
                    .WithMany(p => p.DetalleCompras)
                    .HasForeignKey(d => d.IdProducto)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Detalle-Compra_Producto");
            });

            modelBuilder.Entity<Producto>(entity =>
            {
                entity.HasOne(d => d.IdCategoriaNavigation)
                    .WithMany(p => p.Productos)
                    .HasForeignKey(d => d.IdCategoria)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Producto_categoria");

                entity.HasOne(d => d.IdMarcasNavigation)
                    .WithMany(p => p.Productos)
                    .HasForeignKey(d => d.IdMarcas)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Producto_Marcas");

                entity.HasMany(d => d.IdProveedors)
                    .WithMany(p => p.IdProductos)
                    .UsingEntity<Dictionary<string, object>>(
                        "DetallesProducto",
                        l => l.HasOne<Proveedor>().WithMany().HasForeignKey("IdProveedor").OnDelete(DeleteBehavior.ClientSetNull).HasConstraintName("FK_Detalles-Producto_Proveedor"),
                        r => r.HasOne<Producto>().WithMany().HasForeignKey("IdProducto").OnDelete(DeleteBehavior.ClientSetNull).HasConstraintName("FK_Detalles-Producto_Producto"),
                        j =>
                        {
                            j.HasKey("IdProducto", "IdProveedor");

                            j.ToTable("Detalles-Producto");

                            j.IndexerProperty<int>("IdProducto").HasColumnName("ID_Producto");

                            j.IndexerProperty<int>("IdProveedor").HasColumnName("ID_Proveedor");
                        });
            });

            

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
