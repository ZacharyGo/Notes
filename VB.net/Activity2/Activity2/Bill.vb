Imports System.Windows.Forms

Public Class Bill
    Public Property data As String
    Private Sub OK_Button_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Me.DialogResult = System.Windows.Forms.DialogResult.OK
        Me.Close()
    End Sub

    Private Sub Cancel_Button_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Me.DialogResult = System.Windows.Forms.DialogResult.Cancel
        Me.Close()
    End Sub

    Private Sub Bill_VisibleChanged(sender As Object, e As EventArgs) Handles MyBase.VisibleChanged
        UpdatePage(data)
    End Sub

    Private Sub UpdatePage(accountInfo As String)
        Dim myDataList() As String = Split(accountInfo, Environment.NewLine)
        Dim processFee As Decimal
        Dim serviceFee As Decimal
        Dim premiumChannelCost As Decimal

        Dim dataValue As String
        Dim accountCode As String
        Dim connections As Int32
        Dim channels As Int32
        Dim amountDue As Decimal

        For Each dataRow As String In myDataList
            dataValue = Strings.Right(dataRow, dataRow.Length - dataRow.IndexOf(":") - 1)
            Select Case Strings.Left(dataRow, dataRow.IndexOf(":"))
                Case "AccountNumber"
                    Me.txtAccountNumber.Text = dataValue
                Case "AccountCode"
                    accountCode = dataValue
                    txtAccountCode.Text = accountCode
                Case "Connctions"
                    connections = Int32.Parse(dataValue)
                Case "Channels"
                    channels = Int32.Parse(dataValue)

            End Select
        Next
        If (accountCode = "R") Then
            processFee = 4.5
            serviceFee = 20.5
            premiumChannelCost = Decimal.Parse(7.5 * channels)
        Else
            processFee = 15
            serviceFee = Decimal.Parse(75 + Math.Max(0, ((connections - 10) * 5)))
            premiumChannelCost = Decimal.Parse(50 * channels)
        End If
        amountDue = Decimal.Parse(processFee + serviceFee + premiumChannelCost)
        Me.txtAmount.Text = amountDue.ToString("C")

    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Me.Close()
    End Sub
End Class
