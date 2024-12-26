Imports System
Imports System.Data
Imports Newtonsoft.Json.Linq
Imports Xceed.Wpf.Toolkit

Module Program
    Sub Main(args As String())
        Dim myData As String
        myData = "a" + Environment.NewLine + "b" + Environment.NewLine + "c" + Environment.NewLine + "d"
        Dim myDataList() As String = Split(myData, Environment.NewLine)
        For Each dataRow As String In myDataList
            Console.WriteLine(dataRow)
            Console.WriteLine("-------------------")
        Next
        Dim SearchWithinThis As String = "ABCDEFGHIJKLMNOP"
        Dim SearchForThis As String = "DEF"
        Dim FirstCharacter As Integer = SearchWithinThis.IndexOf(SearchForThis)
        Console.WriteLine(Left(SearchWithinThis, FirstCharacter))
        Console.WriteLine(SearchWithinThis.Contains("HIJ"))


        Dim json As String = "{""date"": ""04-23-2022"",""time"": ""07:06:58 AM""}"
        Console.WriteLine(json)

        Dim parsejson As JObject = JObject.Parse(json)
        Dim thedate = parsejson.SelectToken("date").ToString()
        Console.WriteLine("Date Is " + thedate)

        Console.WriteLine(Strings.Left(SearchWithinThis, SearchWithinThis.IndexOf("G")))

        Dim FILE_NAME As String = "D:\Practice\VB.net\test.txt"

        If System.IO.File.Exists(FILE_NAME) = True Then

            Dim objWriter As New System.IO.StreamWriter(FILE_NAME)

            objWriter.Write("TextBox1.Text")
            objWriter.Close()
            'MessageBox.Show("Text written to file")
            Console.WriteLine("Text written to file")
        Else
            Console.WriteLine("File Does Not Exist")

        End If

    End Sub
End Module
