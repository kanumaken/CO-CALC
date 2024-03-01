using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CO_CALC.Startup))]
namespace CO_CALC
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
