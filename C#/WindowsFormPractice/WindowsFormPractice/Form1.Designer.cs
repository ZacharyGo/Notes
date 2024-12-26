namespace WindowsFormPractice
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.exercisesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.exercise1ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.exercise2ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.exercise3ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.exercise4ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.exitToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.exercise1BindingSource2 = new System.Windows.Forms.BindingSource(this.components);
            this.programBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.exercise1BindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.exercise1BindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.panelBody = new System.Windows.Forms.Panel();
            this.programBindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.form1BindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.form1BindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.menuStrip1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.exercise1BindingSource2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.programBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.exercise1BindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.exercise1BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.programBindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.form1BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.form1BindingSource1)).BeginInit();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.BackColor = System.Drawing.Color.Red;
            this.menuStrip1.Font = new System.Drawing.Font("Segoe UI", 18F);
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.exercisesToolStripMenuItem,
            this.exitToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(1331, 40);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // exercisesToolStripMenuItem
            // 
            this.exercisesToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.exercise1ToolStripMenuItem,
            this.exercise2ToolStripMenuItem,
            this.exercise3ToolStripMenuItem,
            this.exercise4ToolStripMenuItem});
            this.exercisesToolStripMenuItem.ImageTransparentColor = System.Drawing.Color.Red;
            this.exercisesToolStripMenuItem.Name = "exercisesToolStripMenuItem";
            this.exercisesToolStripMenuItem.Size = new System.Drawing.Size(120, 36);
            this.exercisesToolStripMenuItem.Text = "Exercises";
            // 
            // exercise1ToolStripMenuItem
            // 
            this.exercise1ToolStripMenuItem.BackColor = System.Drawing.Color.Red;
            this.exercise1ToolStripMenuItem.Name = "exercise1ToolStripMenuItem";
            this.exercise1ToolStripMenuItem.Size = new System.Drawing.Size(192, 36);
            this.exercise1ToolStripMenuItem.Text = "Exercise 1";
            this.exercise1ToolStripMenuItem.Click += new System.EventHandler(this.exercise1);
            // 
            // exercise2ToolStripMenuItem
            // 
            this.exercise2ToolStripMenuItem.BackColor = System.Drawing.Color.Red;
            this.exercise2ToolStripMenuItem.Name = "exercise2ToolStripMenuItem";
            this.exercise2ToolStripMenuItem.Size = new System.Drawing.Size(192, 36);
            this.exercise2ToolStripMenuItem.Text = "Exercise 2";
            // 
            // exercise3ToolStripMenuItem
            // 
            this.exercise3ToolStripMenuItem.BackColor = System.Drawing.Color.Red;
            this.exercise3ToolStripMenuItem.Name = "exercise3ToolStripMenuItem";
            this.exercise3ToolStripMenuItem.Size = new System.Drawing.Size(192, 36);
            this.exercise3ToolStripMenuItem.Text = "Exercise 3";
            // 
            // exercise4ToolStripMenuItem
            // 
            this.exercise4ToolStripMenuItem.BackColor = System.Drawing.Color.Red;
            this.exercise4ToolStripMenuItem.Name = "exercise4ToolStripMenuItem";
            this.exercise4ToolStripMenuItem.Size = new System.Drawing.Size(192, 36);
            this.exercise4ToolStripMenuItem.Text = "Exercise 4";
            // 
            // exitToolStripMenuItem
            // 
            this.exitToolStripMenuItem.Name = "exitToolStripMenuItem";
            this.exitToolStripMenuItem.Size = new System.Drawing.Size(63, 36);
            this.exitToolStripMenuItem.Text = "Exit";
            this.exitToolStripMenuItem.Click += new System.EventHandler(this.Form1_Close);
            // 
            // panelBody
            // 
            this.panelBody.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(128)))));
            this.panelBody.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panelBody.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelBody.Location = new System.Drawing.Point(0, 40);
            this.panelBody.Name = "panelBody";
            this.panelBody.Size = new System.Drawing.Size(1331, 677);
            this.panelBody.TabIndex = 1;
            // 
            // programBindingSource1
            // 
            this.programBindingSource1.DataSource = typeof(WindowsFormPractice.Program);
            // 
            // form1BindingSource
            // 
            this.form1BindingSource.DataSource = typeof(WindowsFormPractice.Form1);
            // 
            // form1BindingSource1
            // 
            this.form1BindingSource1.DataSource = typeof(WindowsFormPractice.Form1);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoSize = true;
            this.ClientSize = new System.Drawing.Size(1331, 717);
            this.ControlBox = false;
            this.Controls.Add(this.panelBody);
            this.Controls.Add(this.menuStrip1);
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "Form1";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.Form1_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.exercise1BindingSource2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.programBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.exercise1BindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.exercise1BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.programBindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.form1BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.form1BindingSource1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem exercisesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem exercise1ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem exercise2ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem exercise3ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem exercise4ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem exitToolStripMenuItem;
        private System.Windows.Forms.BindingSource exercise1BindingSource1;
        private System.Windows.Forms.BindingSource exercise1BindingSource;
        private System.Windows.Forms.BindingSource programBindingSource;
        private System.Windows.Forms.BindingSource exercise1BindingSource2;
        private System.Windows.Forms.BindingSource programBindingSource1;
        private System.Windows.Forms.BindingSource form1BindingSource;
        private System.Windows.Forms.BindingSource form1BindingSource1;
        private System.Windows.Forms.Panel panelBody;
    }

}