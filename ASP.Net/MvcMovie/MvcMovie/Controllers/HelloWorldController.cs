using Microsoft.AspNetCore.Mvc;
using System.Text.Encodings.Web;

namespace MvcMovie.Controllers;

public class HelloWorldController : Controller
{
    // 
    // GET: /HelloWorld/
    /*    public string Index()
        {
            return "This is my default action...";
        }*/
    public IActionResult Index()
    {
        return View();
    }
    // 
    /* 
    // GET: /HelloWorld/Welcome/ 
       public string Welcome()
        {
            return "This is the Welcome action method...";
        }*/
    // GET: /HelloWorld/Welcome/ 
    // Requires using System.Text.Encodings.Web;
    //https://localhost:{PORT}/HelloWorld/Welcome?name=Rick&numtimes=4
    /*    public string Welcome(string name, int numTimes = 1)
        {
            return HtmlEncoder.Default.Encode($"Hello {name}, NumTimes is: {numTimes}");
        }*/
    //https://localhost:{PORT}/HelloWorld/Welcome/3?name=Rick
    /*    public string Welcome(string name, int ID = 1)
        {
            return HtmlEncoder.Default.Encode($"Hello {name}, ID: {ID}");
        }*/
    public IActionResult Welcome(string name, int numTimes = 1)
    {
        ViewData["Message"] = "Hello " + name;
        ViewData["NumTimes"] = numTimes;
        return View();
    }
}


/*using Microsoft.AspNetCore.Mvc;

namespace MvcMovie.Controllers
{
    public class HelloWorldController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}*/