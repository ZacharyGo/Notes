<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class Bill
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()>
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.txtAccountNumber = New System.Windows.Forms.TextBox()
        Me.txtAccountCode = New System.Windows.Forms.TextBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.txtAmount = New System.Windows.Forms.TextBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Segoe UI", 27.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point)
        Me.Label1.Location = New System.Drawing.Point(85, 114)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(330, 50)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "Account Number : "
        '
        'txtAccountNumber
        '
        Me.txtAccountNumber.BackColor = System.Drawing.SystemColors.Control
        Me.txtAccountNumber.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.txtAccountNumber.Enabled = False
        Me.txtAccountNumber.Font = New System.Drawing.Font("Segoe UI", 27.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point)
        Me.txtAccountNumber.Location = New System.Drawing.Point(435, 114)
        Me.txtAccountNumber.Name = "txtAccountNumber"
        Me.txtAccountNumber.Size = New System.Drawing.Size(240, 50)
        Me.txtAccountNumber.TabIndex = 2
        Me.txtAccountNumber.TextAlign = System.Windows.Forms.HorizontalAlignment.Right
        '
        'txtAccountCode
        '
        Me.txtAccountCode.BackColor = System.Drawing.SystemColors.Control
        Me.txtAccountCode.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.txtAccountCode.Enabled = False
        Me.txtAccountCode.Font = New System.Drawing.Font("Segoe UI", 27.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point)
        Me.txtAccountCode.Location = New System.Drawing.Point(435, 207)
        Me.txtAccountCode.Name = "txtAccountCode"
        Me.txtAccountCode.Size = New System.Drawing.Size(240, 50)
        Me.txtAccountCode.TabIndex = 4
        Me.txtAccountCode.TextAlign = System.Windows.Forms.HorizontalAlignment.Right
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Segoe UI", 27.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point)
        Me.Label2.Location = New System.Drawing.Point(85, 207)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(136, 50)
        Me.Label2.TabIndex = 3
        Me.Label2.Text = "Code : "
        '
        'txtAmount
        '
        Me.txtAmount.BackColor = System.Drawing.SystemColors.Control
        Me.txtAmount.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.txtAmount.Enabled = False
        Me.txtAmount.Font = New System.Drawing.Font("Segoe UI", 27.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point)
        Me.txtAmount.Location = New System.Drawing.Point(435, 300)
        Me.txtAmount.Name = "txtAmount"
        Me.txtAmount.Size = New System.Drawing.Size(240, 50)
        Me.txtAmount.TabIndex = 6
        Me.txtAmount.TextAlign = System.Windows.Forms.HorizontalAlignment.Right
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Segoe UI", 27.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point)
        Me.Label3.Location = New System.Drawing.Point(85, 300)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(249, 50)
        Me.Label3.TabIndex = 5
        Me.Label3.Text = "Amount Due :"
        '
        'Button1
        '
        Me.Button1.Font = New System.Drawing.Font("Segoe UI", 18.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point)
        Me.Button1.Location = New System.Drawing.Point(719, 358)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(83, 42)
        Me.Button1.TabIndex = 7
        Me.Button1.Text = "Close"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Font = New System.Drawing.Font("Segoe UI", 27.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point)
        Me.Label4.Location = New System.Drawing.Point(234, 35)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(399, 50)
        Me.Label4.TabIndex = 8
        Me.Label4.Text = "Statement of Account"
        '
        'Bill
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(7.0!, 15.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(810, 413)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.txtAmount)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.txtAccountCode)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.txtAccountNumber)
        Me.Controls.Add(Me.Label1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog
        Me.Margin = New System.Windows.Forms.Padding(4, 3, 4, 3)
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "Bill"
        Me.ShowInTaskbar = False
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent
        Me.Text = "Bill"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Label1 As Label
    Friend WithEvents txtAccountNumber As TextBox
    Friend WithEvents txtAccountCode As TextBox
    Friend WithEvents Label2 As Label
    Friend WithEvents txtAmount As TextBox
    Friend WithEvents Label3 As Label
    Friend WithEvents Button1 As Button
    Friend WithEvents Label4 As Label
End Class
