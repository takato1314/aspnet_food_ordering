using System.Web.Optimization;

namespace Mcd.Admin
{
    public class BundleConfig
    {
        // For more information on Bundling, visit https://go.microsoft.com/fwlink/?LinkID=303951
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/WebFormsJs").Include(
                            "~/content/WebForms/WebForms.js",
                            "~/content/WebForms/WebUIValidation.js",
                            "~/content/WebForms/MenuStandards.js",
                            "~/content/WebForms/Focus.js",
                            "~/content/WebForms/GridView.js",
                            "~/content/WebForms/DetailsView.js",
                            "~/content/WebForms/TreeView.js",
                            "~/content/WebForms/WebParts.js"));

            // Order is very important for these files to work, they have explicit dependencies
            bundles.Add(new ScriptBundle("~/bundles/MsAjaxJs").Include(
                    "~/content/WebForms/MsAjax/MicrosoftAjax.js",
                    "~/content/WebForms/MsAjax/MicrosoftAjaxApplicationServices.js",
                    "~/content/WebForms/MsAjax/MicrosoftAjaxTimer.js",
                    "~/content/WebForms/MsAjax/MicrosoftAjaxWebForms.js"));

            // Use the Development version of Modernizr to develop with and learn from. Then, when you’re
            // ready for production, use the build tool at https://modernizr.com to pick only the tests you need
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                            "~/content/modernizr-*"));
        }
    }
}