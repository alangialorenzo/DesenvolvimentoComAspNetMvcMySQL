using System.Web.Mvc;
using CadeMeuMedico.Filtros;

namespace CadeMeuMedico.Controllers
{
    [AutorizacaoDeAcesso]
    public class BaseController : Controller
    {
        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            base.OnActionExecuting(filterContext);
        }

    }
}
