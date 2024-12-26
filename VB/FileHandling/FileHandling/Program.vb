Imports System
Imports System.IO

Module Program
    Sub Main(args As String())
        Dim files As FileStream = New FileStream("sample.txt", FileMode.OpenOrCreate, FileAccess.ReadWrite)

        Dim num As Integer

        For num = 0 To 20
            files.WriteByte(CByte(num))
        Next num

        files.Position = 0

        For num = 0 To 20
            Console.Write("{0} ", files.ReadByte)
        Next num

        files.Close()
        Console.ReadLine()
    End Sub
End Module
