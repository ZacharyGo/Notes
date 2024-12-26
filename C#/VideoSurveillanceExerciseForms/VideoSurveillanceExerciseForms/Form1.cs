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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            
        }

        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void exercise1ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Exercise1 exercise1 = new Exercise1();
            exercise1.TopLevel = false;
            panelBody.Controls.Add(exercise1);
            exercise1.BringToFront();
            exercise1.Show();
        }

    }
}
