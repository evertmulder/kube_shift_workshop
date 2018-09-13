using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace razor.Pages
{
    public class IndexModel : PageModel
    {

        public string HostName { get; private set; } = "?";

        public void OnGet()
        {
            HostName = System.Environment.MachineName ?? System.Environment.GetEnvironmentVariable("HOSTNAME");
        }
    }
}
