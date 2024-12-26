Imports System
Imports System.IO
Imports System.Net.WebRequestMethods

Module Program
    Sub Main(args As String())

        ' upload zip of solution into onerive And send the link to g.deguzman@fujitsu.com
        ' https://fujitsu-my.sharepoint.com/:f:/p/g_deguzman/En7TSlHUKlVKtvlaAgIJbwUBCjwpvQ0tKpB8g7trqsZSdw?e=bwSS9O
        Dim userInput As String
        Dim numberEntered As Integer
        Dim divisible(200) As Boolean
        Dim output As String
        Dim outputFiles As New FileStream("Exercse.txt", FileMode.Append, FileAccess.Write)
        Dim outputWriter As New StreamWriter(outputFiles)
        Console.Write("Enter a number from 1 to 200 : ")
        userInput = Console.ReadLine()
        If (Int32.TryParse(userInput, numberEntered)) Then
            If (numberEntered < 1 Or numberEntered > 200) Then
                Console.WriteLine("Number entered is not within 1 to 200 (Try Again)")
            Else
                For i As Integer = 1 To 200
                    If ((i > numberEntered) Or (numberEntered Mod i <> 0)) Then
                        divisible(i) = False
                    Else
                        divisible(i) = True
                    End If
                Next
                output = ""
                outputWriter.Write("The following numbers are divisible of " & userInput & " : ")
                For i As Integer = 1 To 200
                    If (divisible(i)) Then
                        If (output = "") Then
                            output = i.ToString
                        Else
                            output = output.Replace(" and ", ", ") & " and " & i.ToString 'example  1, 2, 3 and 5
                        End If
                    End If
                Next
                Console.WriteLine(output)
                outputWriter.WriteLine(output)
                outputWriter.Close()
            End If

        End If
        Console.WriteLine("userInput")
    End Sub
End Module
' Data Type, For loops,If statement,String,arrays