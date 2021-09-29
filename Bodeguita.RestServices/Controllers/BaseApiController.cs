using Bodeguita.RestServices.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Bodeguita.RestServices.Controllers
{
    public class BaseApiController : ApiController
    {
        private ModelFactory _modelFactory;

        protected ModelFactory ModelFactory
        {
            get
            {
                if (_modelFactory == null)
                {
                    _modelFactory = new ModelFactory();
                }
                return _modelFactory;
            }
        }
    }
}
