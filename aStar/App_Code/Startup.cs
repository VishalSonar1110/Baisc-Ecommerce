using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(aStar.Startup))]
namespace aStar
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
