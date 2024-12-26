using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace VideoSurveillanceExerciseForms
{
    
    public partial class Exercise1 : Form
    {
        List<MyStruct> list = new List<MyStruct> { new MyStruct("fff", "b"), new MyStruct("c", "d") };
        public Exercise1()
        {

            InitializeComponent();
        }


    }
    public class MyStruct
    {
        public string Name { get; set; }
        public string Adres { get; set; }


        public MyStruct(string name, string adress)
        {
            Name = name;
            Adres = adress;
        }


    }
    
}
