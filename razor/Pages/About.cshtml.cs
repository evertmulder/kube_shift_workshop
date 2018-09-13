using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace razor.Pages
{
    public class AboutModel : PageModel
    {
        public Dictionary<string,string> Messages { get; set; }
        public string Message { get; set; }

        public void OnGet()
        {
            Message = "Your application description page.";
            var env = System.Environment.GetEnvironmentVariables();

            Messages= new Dictionary<string, string>();
            foreach (System.Collections.DictionaryEntry item in env)
            {
                Messages.Add(item.Key.ToString(),item.Value.ToString());
            }
        }
    }
}
