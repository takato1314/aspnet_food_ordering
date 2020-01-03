using System.Web.Optimization;
using System.Web.UI;

namespace Mcd.Client
{
    public class BundleConfig
    {
        // For more information on Bundling, visit https://go.microsoft.com/fwlink/?LinkID=303951
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/WebFormsJs").Include(
                            "~/Scripts/WebForms/WebForms.js",
                            "~/Scripts/WebForms/WebUIValidation.js",
                            "~/Scripts/WebForms/MenuStandards.js",
                            "~/Scripts/WebForms/Focus.js",
                            "~/Scripts/WebForms/GridView.js",
                            "~/Scripts/WebForms/DetailsView.js",
                            "~/Scripts/WebForms/TreeView.js",
                            "~/Scripts/WebForms/WebParts.js"));

            // Order is very important for these files to work, they have explicit dependencies
            bundles.Add(new ScriptBundle("~/bundles/MsAjaxJs").Include(
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjax.js",
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjaxApplicationServices.js",
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjaxTimer.js",
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjaxWebForms.js"));

            // TODO: Add custom bundle
            // https://www.tutorialsteacher.com/mvc/scriptbundle-mvc
            //bundles.Add(new ScriptBundle("~/bundles/jQueryUiJs").Include(
            //    "~/Content/jquery/js/jquery-3.4.1.min.js",
            //    "~/Content/jquery-migrate/jquery-migrate-3.0.1.min.js",
            //    "~/Content/jquery.easing/jquery.easing.1.3.js",
            //    "~/Content/jquery.waypoints/jquery.waypoints.min.js",
            //    "~/Content/jquery-stellar/jquery.stellar.min.js",
            //    "~/Content/jquery-magnific-popup/js/jquery.magnific-popup.min.js",
            //    "~/Content/jquery.animateNumber/jquery.animateNumber.min.js"));

            // Use the Development version of Modernizr to develop with and learn from. Then, when you’re
            // ready for production, use the build tool at https://modernizr.com to pick only the tests you need
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                            "~/Content/modernizr/js/modernizr-*"));

        }
    }
}