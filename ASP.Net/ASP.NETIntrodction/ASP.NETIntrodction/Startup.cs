using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;

namespace ASP.NETIntrodction
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddRazorPages();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            /*if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler("/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }*/

            /*            app.UseHttpsRedirection();
                        app.UseStaticFiles();

                        app.UseRouting();

                        app.UseAuthorization();

                        app.UseEndpoints(endpoints =>
                        {
                            endpoints.MapRazorPages();
                        });*/
            /*app.Map("/health", healthApp => {
                healthApp.Run(healthContext =>
                {
                    return healthContext.Response.WriteAsync("Everything is ok");
                });
                healthApp.UseWelcomePage();
                });

            app.MapWhen(ctx => ctx.User.Identity.IsAuthenticated, authApp =>
            { 
                authApp.Run(authContext =>
                {
                    return authContext.Response.WriteAsync("How did you get in here");
                });
            });
            app.UseStaticFiles();
            app.UseWelcomePage();*/ // From video Middleware Mapping
            app.Use(async (ctx, next) =>
            {
                if (ctx.Request.Headers.ContainsKey("Ping"))
                {
                    ctx.Response.Headers["Pong"] = "Returned";
                    ctx.Response.StatusCode = (int)HttpStatusCode.OK;
                    return;
                }
                await next();
            });
            app.Run(async (context)  =>
            {
                await context.Response.WriteAsync("Hello World!");
            });
        }
    }
}
