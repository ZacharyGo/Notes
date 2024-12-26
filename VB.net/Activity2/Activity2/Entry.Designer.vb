<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class Entry
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
        Me.lblAccountNumber = New System.Windows.Forms.Label()
        Me.txtAccountNumber = New System.Windows.Forms.TextBox()
        Me.lblCustomerType = New System.Windows.Forms.Label()
        Me.optResidential = New System.Windows.Forms.RadioButton()
        Me.optBusiness = New System.Windows.Forms.RadioButton()
        Me.txtChannels = New System.Windows.Forms.TextBox()
        Me.lblChannels = New System.Windows.Forms.Label()
        Me.txtConnections = New System.Windows.Forms.TextBox()
        Me.lblConnections = New System.Windows.Forms.Label()
        Me.btnShowBill = New System.Windows.Forms.Button()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.SuspendLayout()
        '
        'lblAccountNumber
        '
        Me.lblAccountNumber.AutoSize = True
        Me.lblAccountNumber.Font = New System.Drawing.Font("Segoe UI", 27.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point)
        Me.lblAccountNumber.Location = New System.Drawing.Point(77, 125)
        Me.lblAccountNumber.Name = "lblAccountNumber"
        Me.lblAccountNumber.Size = New System.Drawing.Size(338, 50)
        Me.lblAccountNumber.TabIndex = 2
        Me.lblAccountNumber.Text = "Account Number :"
        '
        'txtAccountNumber
        '
        Me.txtAccountNumber.Font = New System.Drawing.Font("Segoe UI", 27.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point)
        Me.txtAccountNumber.Location = New System.Drawing.Point(432, 122)
        Me.txtAccountNumber.Name = "txtAccountNumber"
        Me.txtAccountNumber.Size = New System.Drawing.Size(237, 57)
        Me.txtAccountNumber.TabIndex = 3
        Me.txtAccountNumber.TextAlign = System.Windows.Forms.HorizontalAlignment.Right
        '
        'lblCustomerType
        '
        Me.lblCustomerType.AutoSize = True
        Me.lblCustomerType.Font = New System.Drawing.Font("Segoe UI", 27.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point)
        Me.lblCustomerType.Location = New System.Drawing.Point(76, 198)
        Me.lblCustomerType.Name = "lblCustomerType"
        Me.lblCustomerType.Size = New System.Drawing.Size(302, 50)
        Me.lblCustomerType.TabIndex = 4
        Me.lblCustomerType.Text = "Customer Type :"
        '
        'optResidential
        '
        Me.optResidential.AutoSize = True
        Me.optResidential.Font = New System.Drawing.Font("Segoe UI", 27.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point)
        Me.optResidential.Location = New System.Drawing.Point(432, 194)
        Me.optResidential.Name = "optResidential"
        Me.optResidential.Size = New System.Drawing.Size(217, 54)
        Me.optResidential.TabIndex = 5
        Me.optResidential.TabStop = True
        Me.optResidential.Text = "Residential"
        Me.optResidential.UseVisualStyleBackColor = True
        '
        'optBusiness
        '
        Me.optBusiness.AutoSize = True
        Me.optBusiness.Font = New System.Drawing.Font("Segoe UI", 27.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point)
        Me.optBusiness.Location = New System.Drawing.Point(432, 262)
        Me.optBusiness.Name = "optBusiness"
        Me.optBusiness.Size = New System.Drawing.Size(179, 54)
        Me.optBusiness.TabIndex = 6
        Me.optBusiness.TabStop = True
        Me.optBusiness.Text = "Business"
        Me.optBusiness.UseVisualStyleBackColor = True
        '
        'txtChannels
        '
        Me.txtChannels.Font = New System.Drawing.Font("Segoe UI", 27.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point)
        Me.txtChannels.Location = New System.Drawing.Point(431, 402)
        Me.txtChannels.Name = "txtChannels"
        Me.txtChannels.Size = New System.Drawing.Size(237, 57)
        Me.txtChannels.TabIndex = 12
        Me.txtChannels.TextAlign = System.Windows.Forms.HorizontalAlignment.Right
        '
        'lblChannels
        '
        Me.lblChannels.AutoSize = True
        Me.lblChannels.Font = New System.Drawing.Font("Segoe UI", 27.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point)
        Me.lblChannels.Location = New System.Drawing.Point(77, 405)
        Me.lblChannels.Name = "lblChannels"
        Me.lblChannels.Size = New System.Drawing.Size(198, 50)
        Me.lblChannels.TabIndex = 11
        Me.lblChannels.Text = "Channels :"
        '
        'txtConnections
        '
        Me.txtConnections.Font = New System.Drawing.Font("Segoe UI", 27.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point)
        Me.txtConnections.Location = New System.Drawing.Point(432, 330)
        Me.txtConnections.Name = "txtConnections"
        Me.txtConnections.Size = New System.Drawing.Size(237, 57)
        Me.txtConnections.TabIndex = 10
        Me.txtConnections.TextAlign = System.Windows.Forms.HorizontalAlignment.Right
        '
        'lblConnections
        '
        Me.lblConnections.AutoSize = True
        Me.lblConnections.Font = New System.Drawing.Font("Segoe UI", 27.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point)
        Me.lblConnections.Location = New System.Drawing.Point(76, 333)
        Me.lblConnections.Name = "lblConnections"
        Me.lblConnections.Size = New System.Drawing.Size(256, 50)
        Me.lblConnections.TabIndex = 9
        Me.lblConnections.Text = "Connections :"
        '
        'btnShowBill
        '
        Me.btnShowBill.Font = New System.Drawing.Font("Segoe UI", 27.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point)
        Me.btnShowBill.Location = New System.Drawing.Point(271, 512)
        Me.btnShowBill.Name = "btnShowBill"
        Me.btnShowBill.Size = New System.Drawing.Size(220, 55)
        Me.btnShowBill.TabIndex = 13
        Me.btnShowBill.Text = "Show Bill"
        Me.btnShowBill.UseVisualStyleBackColor = True
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Segoe UI", 36.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point)
        Me.Label1.Location = New System.Drawing.Point(132, 27)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(498, 65)
        Me.Label1.TabIndex = 14
        Me.Label1.Text = "Account Information"
        '
        'Entry
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(7.0!, 15.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(800, 622)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.btnShowBill)
        Me.Controls.Add(Me.txtChannels)
        Me.Controls.Add(Me.lblChannels)
        Me.Controls.Add(Me.txtConnections)
        Me.Controls.Add(Me.lblConnections)
        Me.Controls.Add(Me.optBusiness)
        Me.Controls.Add(Me.optResidential)
        Me.Controls.Add(Me.lblCustomerType)
        Me.Controls.Add(Me.txtAccountNumber)
        Me.Controls.Add(Me.lblAccountNumber)
        Me.Name = "Entry"
        Me.Text = "Form1"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents lblAccountNumber As Label
    Friend WithEvents txtAccountNumber As TextBox
    Friend WithEvents lblCustomerType As Label
    Friend WithEvents optResidential As RadioButton
    Friend WithEvents optBusiness As RadioButton
    Friend WithEvents txtChannels As TextBox
    Friend WithEvents lblChannels As Label
    Friend WithEvents txtConnections As TextBox
    Friend WithEvents lblConnections As Label
    Friend WithEvents btnShowBill As Button
    Friend WithEvents Label1 As Label
End Class
