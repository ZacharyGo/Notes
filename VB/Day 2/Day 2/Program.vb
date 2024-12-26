Imports System

Module Program
    Sub Main(args As String())
        Dim independenceDay As New Date(1947, 8, 15, 0, 0, 0)
        Console.WriteLine("India Winds Freedm: ")

        Console.WriteLine(" Formate 'd:' " & independenceDay.ToString("d"))
        Console.WriteLine(" Formate 'D:' " & independenceDay.ToString("D"))
        Console.WriteLine(" Formate 't:' " & independenceDay.ToString("t"))
        Console.WriteLine(" Formate 'T:' " & independenceDay.ToString("T"))
        Console.WriteLine(" Formate 'f:' " & independenceDay.ToString("f"))
        Console.WriteLine(" Formate 'F:' " & independenceDay.ToString("F"))
        Console.WriteLine(" Formate 'g:' " & independenceDay.ToString("g"))
        Console.WriteLine(" Formate 'G:' " & independenceDay.ToString("G"))
        Console.WriteLine(" Formate 'M:' " & independenceDay.ToString("M"))
        Console.WriteLine(" Formate 'R:' " & independenceDay.ToString("R"))
        Console.WriteLine(" Formate 'y:' " & independenceDay.ToString("y"))

        Console.ReadLine()
    End Sub
End Module
