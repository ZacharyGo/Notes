using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormPractice
{

    public partial class Exercise1 : Form
    {
        public List<Scores> scores = new List<Scores>();
        public Exercise1()
        {

            InitializeComponent();


        }

        private void Exercise1_Load(object sender, EventArgs e)
        {
            scores.Add(new Scores("Mathematics", 0));
            scores.Add(new Scores("Science", 0));
            scores.Add(new Scores("Economics", 0));
            scores.Add(new Scores("Filipino", 0));
            scores.Add(new Scores("English", 0));
            scores.Add(new Scores("Araling Panlipunan", 0));
            dataGridView1.DataSource = scores;
        }

        private void button1_Click(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {

        }
        private void Column1_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void dataGridView1_EditingControlShowing(object sender, DataGridViewEditingControlShowingEventArgs e)
        {
            e.Control.KeyPress -= new KeyPressEventHandler(Column1_KeyPress);
            if (dataGridView1.CurrentCell.ColumnIndex == 1) //Desired Column
            {
                TextBox tb = e.Control as TextBox;
                if (tb != null)
                {
                    tb.KeyPress += new KeyPressEventHandler(Column1_KeyPress);
                }
            }
        }

        private void dataGridView1_CellEndEdit_1(object sender, DataGridViewCellEventArgs e)
        {
            for(int i=0; i<scores.Count; i++)
            {
                if (scores[i].Score > 100)
                    scores[i].Score = 100;
                if (scores[i].Score < 0)
                    scores[i].Score = 0;
            }
        }
    }
    public class Scores
    {
        public string Subject { get; set; }
        public int Score { get; set; }
        
        public Scores(string subject, int score)
        {
            Subject = subject;
            Score = score;
        }

    }
    
}
