using System;
using System.Web.Mvc;
using OssPledge;


namespace OssPledgeWebUi.Controllers
{
    [HandleError]
    public class ProjectController : Controller
    {
        private FakeBus _bus;
        private ReadModelFacade _readmodel;

        public ProjectController()
        {
            _bus = ServiceLocator.Bus;
            _readmodel = new ReadModelFacade();
        }

        public ActionResult Index()
        {
            ViewData.Model = _readmodel.GetInventoryItems();

            return View();
        }


    }
}
