using Microsoft.AspNetCore.Mvc;
using System.Dynamic;
using ViewBagTest.Models;

namespace ViewBagTest.Controllers
{
    public class MultipleModelInOneViewController : Controller
    {
        public List<Teacher> GetTeachers()
        {
            List<Teacher> teachers = new List<Teacher>();
            teachers.Add(new Teacher { TeacherId = 1, Code = "TT", Name = "Tejas Trivedi" });
            teachers.Add(new Teacher { TeacherId = 2, Code = "JT", Name = "Jignesh Trivedi" });
            teachers.Add(new Teacher { TeacherId = 3, Code = "RT", Name = "Rakesh Trivedi" });
            return teachers;
        }
        public List<Student> GetStudents()
        {
            List<Student> students = new List<Student>();
            students.Add(new Student { StudentId = 1, Code = "L0001", Name = "Amit Gupta", EnrollmentNo = "201404150001" });
            students.Add(new Student { StudentId = 2, Code = "L0002", Name = "Chetan Gujjar", EnrollmentNo = "201404150002" });
            students.Add(new Student { StudentId = 3, Code = "L0003", Name = "Bhavin Patel", EnrollmentNo = "201404150003" });
            return students;
        }
        public IActionResult Index()
        {
            ViewBag.Message = "Using Dynamic Model";
            dynamic mymodel = new ExpandoObject();
            mymodel.Teachers = GetTeachers();
            mymodel.Students = GetStudents();
            return View(mymodel);
        }

        public ActionResult IndexViewModel()
        {
            ViewBag.Message = "Using View Model!";
            ViewModel mymodel = new ViewModel();
            mymodel.Teachers = GetTeachers();
            mymodel.Students = GetStudents();
            return View(mymodel);
        }
        public ActionResult IndexViewData()
        {
            ViewBag.Message = "Index View Data!";
            ViewData["Teachers"] = GetTeachers();
            ViewData["Students"] = GetStudents();
            return View();
        }

        public ActionResult IndexViewBag()
        {
            ViewBag.Message = "Index View Bag!";
            ViewBag.Teachers = GetTeachers();
            ViewBag.Students = GetStudents();
            return View();
        }

        public ActionResult IndexTuple()
        {
            ViewBag.Message = "Index Tuple!";
            var tupleModel = new Tuple<List<Teacher>, List<Student>>(GetTeachers(), GetStudents());
            return View(tupleModel);
        }
        public ActionResult PartialView()
        {
            ViewBag.Message = "Welcome to my demo!";
            return View();
        }

        /// <summary>
        /// Render Teacher List
        /// </summary>
        /// <returns></returns>
        public PartialViewResult RenderTeacher()
        {
            return PartialView(GetTeachers());
        }

        /// <summary>
        /// Render Student List
        /// </summary>
        /// <returns></returns>
        public PartialViewResult RenderStudent()
        {
            return PartialView(GetStudents());
        }

    }

}
