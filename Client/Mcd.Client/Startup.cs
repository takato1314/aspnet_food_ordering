using System;
using Microsoft.Owin;
using Microsoft.Owin.Extensions;
using Owin;
using Microsoft.Owin.Security.Cookies;

[assembly: OwinStartup(typeof(Mcd.Client.Startup))]

namespace Mcd.Client
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            app.UseCookieAuthentication(new CookieAuthenticationOptions
            {
                AuthenticationType = "Cookies",
                ExpireTimeSpan = TimeSpan.FromMinutes(10),
                SlidingExpiration = true
            });


            app.UseStageMarker(PipelineStage.Authenticate);
        }
    }
}
