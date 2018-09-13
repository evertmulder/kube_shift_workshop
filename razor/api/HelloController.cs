using Microsoft.AspNetCore.Mvc;


namespace razor.api
{
    [Route("api/[controller]")]
    [ApiController]
    public class HelloController : Controller
    {
        [HttpGet]
        public string Get()
        {
            var hostName = System.Environment.MachineName ?? System.Environment.GetEnvironmentVariable("HOSTNAME");
            return $"Hi van {hostName}";
        }
    }
}