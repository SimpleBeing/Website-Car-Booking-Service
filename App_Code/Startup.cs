using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WilWeb.Startup))]
namespace WilWeb
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
