Imports System.Runtime.InteropServices
Imports System.Runtime.Intrinsics.X86

Public Class Form1
    Private Sub txtAdultTicket_TextChanged(sender As Object, e As EventArgs) Handles txtAdultTicket.TextChanged
        FixNumeric()
        txtAdultAmount.Text = Decimal.Parse(txtAdultTicket.Text) * IIf(IsNumeric(txtAdultPrice.Text), Decimal.Parse(txtAdultPrice.Text), 0)
        txtTotalTicket.Text = Decimal.Parse(txtAdultTicket.Text) + Decimal.Parse(txtChildrenTicket.Text)
        'txtGrossAmount.Text = Decimal.Parse(txtAdultAmount.Text) + Decimal.Parse(txtChildernAmount.Text)
        'MessageBox.Show(IIf(IsNumeric(txtAdultPrice.Text), Decimal.Parse(txtAdultPrice.Text), 0))
    End Sub

    Private Sub txtAdultPrice_TextChanged(sender As Object, e As EventArgs) Handles txtAdultPrice.TextChanged
        FixNumeric()
        txtAdultAmount.Text = Decimal.Parse(txtAdultTicket.Text) * IIf(IsNumeric(txtAdultPrice.Text), Decimal.Parse(txtAdultPrice.Text), 0)
        'txtTotalTicket.Text = Decimal.Parse(txtAdultTicket.Text) + Decimal.Parse(txtChildrenTicket.Text)
        'MessageBox.Show(Decimal.Parse(txtAdultPrice.Text).ToString)
    End Sub
    Private Sub txtAdultAmount_TextChanged(sender As Object, e As EventArgs) Handles txtAdultAmount.TextChanged
        FixNumeric()
        txtGrossAmount.Text = Decimal.Parse(txtAdultAmount.Text) + Decimal.Parse(txtChildernAmount.Text)
    End Sub

    Private Sub txtChildrenTicket_TextChanged(sender As Object, e As EventArgs) Handles txtChildrenTicket.TextChanged
        FixNumeric()
        txtChildernAmount.Text = Decimal.Parse(txtChildrenTicket.Text) * Decimal.Parse(txtChildrenPrice.Text)
        txtTotalTicket.Text = Decimal.Parse(txtAdultTicket.Text) + Decimal.Parse(txtChildrenTicket.Text)
    End Sub
    Private Sub txtChildrenPrice_TextChanged(sender As Object, e As EventArgs) Handles txtChildrenPrice.TextChanged
        FixNumeric()
        txtChildernAmount.Text = Decimal.Parse(txtChildrenTicket.Text) * Decimal.Parse(txtChildrenPrice.Text)
    End Sub
    Private Sub txtChildernAmount_TextChanged(sender As Object, e As EventArgs) Handles txtChildernAmount.TextChanged
        FixNumeric()
        txtGrossAmount.Text = Decimal.Parse(txtAdultAmount.Text) + Decimal.Parse(txtChildernAmount.Text)
    End Sub


    Private Sub txtGrossAmount_TextChanged(sender As Object, e As EventArgs) Handles txtGrossAmount.TextChanged
        Update_Donation_Amount()
    End Sub
    Private Sub txtPercentage_TextChanged(sender As Object, e As EventArgs) Handles txtPercentage.TextChanged
        Update_Donation_Amount()
    End Sub
    Private Sub Update_Donation_Amount()
        FixNumeric()
        txtAmountDonated.Text = Decimal.Parse(txtGrossAmount.Text) * Decimal.Parse(txtPercentage.Text) / 100
    End Sub

    Private Sub FixNumeric()
        txtAdultTicket.Text = IIf(IsNumeric(txtAdultTicket.Text), txtAdultTicket.Text, 0)
        txtAdultPrice.Text = IIf(IsNumeric(txtAdultPrice.Text), txtAdultPrice.Text, 0)
        txtAdultAmount.Text = IIf(IsNumeric(txtAdultAmount.Text), txtAdultAmount.Text, 0)
        txtChildrenTicket.Text = IIf(IsNumeric(txtChildrenTicket.Text), txtChildrenTicket.Text, 0)
        txtChildrenPrice.Text = IIf(IsNumeric(txtChildrenPrice.Text), txtChildrenPrice.Text, 0)
        txtChildernAmount.Text = IIf(IsNumeric(txtChildernAmount.Text), txtChildernAmount.Text, 0)
        txtPercentage.Text = IIf(IsNumeric(txtPercentage.Text), txtPercentage.Text, 0)
        txtGrossAmount.Text = IIf(IsNumeric(txtGrossAmount.Text), txtGrossAmount.Text, 0)
    End Sub
End Class
