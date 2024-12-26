Public Class Entry
    Public formobj = New Bill 'Object for Bill form
    Dim accountInfo As String = "" 'Data to store Account Information
    Private Sub btnShowBill_Click(sender As Object, e As EventArgs) Handles btnShowBill.Click
        Dim ErrorMsg As String = ""
        accountInfo = ""
        ' Check each user entry if available and add to Account Information Data
        If (String.IsNullOrEmpty(txtAccountNumber.Text)) Then
            ErrorMsg = "        Account Number"
            lblAccountNumber.ForeColor = Color.Red
        Else
            AddNewDataToAccountInfo("AccountNumber", txtAccountNumber.Text)
        End If

        If (Not String.IsNullOrEmpty(txtChannels.Text)) Then
            AddNewDataToAccountInfo("Channels", txtChannels.Text)
        Else
            If (Not String.IsNullOrEmpty(ErrorMsg)) Then
                ErrorMsg = ErrorMsg + Environment.NewLine + "        Number of Channels"
            Else
                ErrorMsg = "        Number of Channels"
            End If
            lblChannels.ForeColor = Color.Red
        End If

        If (optResidential.Checked) Then
            AddNewDataToAccountInfo("AccountCode", "R")
        ElseIf (optBusiness.Checked) Then
            AddNewDataToAccountInfo("AccountCode", "B")
            If (Not String.IsNullOrEmpty(txtConnections.Text)) Then
                AddNewDataToAccountInfo("Connctions", txtConnections.Text)
            Else
                If (Not String.IsNullOrEmpty(ErrorMsg)) Then
                    ErrorMsg = ErrorMsg + Environment.NewLine + "        Number of Connections"
                Else
                    ErrorMsg = "        Number of Connections"
                End If
                lblConnections.ForeColor = Color.Red
            End If
        Else
            If (Not String.IsNullOrEmpty(ErrorMsg)) Then
                ErrorMsg = ErrorMsg + Environment.NewLine + "        Customer Type"
            Else
                ErrorMsg = "        Customer Type"
            End If
            lblCustomerType.ForeColor = Color.Red
        End If
        ' If no error send data to Bill Form and Show Bill Form
        If (String.IsNullOrEmpty(ErrorMsg)) Then
            'MessageBox.Show(accountInfo)
            formobj.data = accountInfo
            formobj.ShowDialog()
        Else
            ErrorMsg = "Please the following : " + Environment.NewLine + ErrorMsg
            MessageBox.Show(ErrorMsg)
        End If
    End Sub

    ' Tool to concatenate Account Information Data
    Private Sub AddNewDataToAccountInfo(infoType As String, infoValue As String)
        Dim inforData As String = infoType + ":" + infoValue
        If (String.IsNullOrEmpty(accountInfo)) Then
            accountInfo = inforData
        Else
            accountInfo = accountInfo + Environment.NewLine + inforData
        End If
    End Sub
    Private Sub txtAccountNumber_KeyPress(sender As Object, e As KeyPressEventArgs) Handles txtAccountNumber.KeyPress
        e.Handled = KeyPressedIsNumeric(e.KeyChar)
    End Sub
    Private Function KeyPressedIsNumeric(key As Char)
        '97 - 122 = Ascii codes for simple letters
        '65 - 90  = Ascii codes for capital letters
        '48 - 57  = Ascii codes for numbers

        If Asc(key) <> 8 Then
            If Asc(key) < 48 Or Asc(key) > 57 Then
                KeyPressedIsNumeric = True
            Else
                KeyPressedIsNumeric = False
            End If
        Else
            KeyPressedIsNumeric = False
        End If
    End Function

    Private Sub txtAccountNumber_Validating(sender As Object, e As System.ComponentModel.CancelEventArgs) Handles txtAccountNumber.Validating
        If (Not String.IsNullOrEmpty(Me.Text)) Then
            lblAccountNumber.ForeColor = Color.Black
        End If
    End Sub

    Private Sub txtConnections_Validating(sender As Object, e As System.ComponentModel.CancelEventArgs) Handles txtConnections.Validating
        If (Not String.IsNullOrEmpty(Me.Text)) Then
            lblConnections.ForeColor = Color.Black
        End If
    End Sub

    Private Sub txtChannels_Validating(sender As Object, e As System.ComponentModel.CancelEventArgs) Handles txtChannels.Validating
        If (Not String.IsNullOrEmpty(Me.Text)) Then
            lblChannels.ForeColor = Color.Black
        End If
    End Sub

    Private Sub optResidential_Click(sender As Object, e As EventArgs) Handles optResidential.Click
        Me.lblConnections.Visible = False
        Me.txtConnections.Visible = False
        lblCustomerType.ForeColor = Color.Black
    End Sub

    Private Sub optBusiness_Click(sender As Object, e As EventArgs) Handles optBusiness.Click
        Me.lblConnections.Visible = True
        Me.txtConnections.Visible = True
        lblCustomerType.ForeColor = Color.Black
    End Sub
End Class
