﻿using System.Web.Optimization;

namespace Mcd.Client
{
    public class BundleConfig
    {
        // For more information on Bundling, visit https://go.microsoft.com/fwlink/?LinkID=303951
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/WebFormsJs").Include(
                            "~/scripts/WebForms/WebForms.js",
                            "~/scripts/WebForms/WebUIValidation.js",
                            "~/scripts/WebForms/MenuStandards.js",
                            "~/scripts/WebForms/Focus.js",
                            "~/scripts/WebForms/GridView.js",
                            "~/scripts/WebForms/DetailsView.js",
                            "~/scripts/WebForms/TreeView.js",
                            "~/scripts/WebForms/WebParts.js"));

            // Order is very important for these files to work, they have explicit dependencies
            bundles.Add(new ScriptBundle("~/bundles/MsAjaxJs").Include(
                    "~/scripts/WebForms/MsAjax/MicrosoftAjax.js",
                    "~/scripts/WebForms/MsAjax/MicrosoftAjaxApplicationServices.js",
                    "~/scripts/WebForms/MsAjax/MicrosoftAjaxTimer.js",
                    "~/scripts/WebForms/MsAjax/MicrosoftAjaxWebForms.js"));

            // Use the Development version of Modernizr to develop with and learn from. Then, when you’re
            // ready for production, use the build tool at https://modernizr.com to pick only the tests you need
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                            "~/scripts/modernizr-*"));
        }
    }
}