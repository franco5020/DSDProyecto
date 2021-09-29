using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace Bodeguita.WebApp
{
    public static class GlobalVar
    {
        public static string UrlApi
        {
            get
            {
                string urlApi = "";
                urlApi = ConfigurationManager.AppSettings["RestApiUrl"];
                return urlApi;
            }
        }

        public static string RootPath
        {
            get
            {
                return HttpContext.Current.Request.ApplicationPath;
            }
        }
    }
}