Imports System

Module Program
    Sub Main(args As String())
        Dim done As Boolean = False
        Do
            Console.Clear()
            Console.WriteLine("(1) Exercise 1")
            Console.WriteLine("(2) Exercise 2")
            Console.WriteLine("(3) Exercise 3")
            Console.WriteLine("(4) Exit")
            Console.Write("Enter choice : ")
            Dim choice = Console.ReadKey()
            If (Not IsNumeric(choice)) Then
                Console.WriteLine("Invalid choice, should be numeric between 1 to 3, press any to restart")
                Console.ReadKey()
                'done = True
            Else
                Select Case choice
                    Case 1
                        Exercise1()
                    Case 2
                        Exercise2()
                    Case 3
                        Exercise3()
                    Case 4
                        done = True
                    Case Else
                        Console.WriteLine("Invalid choice, should be between 1 to 3, press any to restart")
                End Select
            End If
        Loop Until (done)

    End Sub
    Sub Exercise()
        Dim myNum As Decimal = 123.456

        Console.WriteLine("Hello World!" & Convert.ToInt32(myNum) & ", " & Math.Round(myNum, 2))
    End Sub
    Sub Exercise1()
        Console.Write("Enter a number: ")
        Dim numberEntered As Integer = Console.ReadLine()
        If (numberEntered > 0) Then
            Console.WriteLine("You have entered a POSITVE number")
        ElseIf (numberEntered < 0) Then
            Console.WriteLine("You have entered a NEGATIVE number")
        Else
            Console.WriteLine("You have entered a ZERO")
        End If
    End Sub
    Sub Exercise2()
        Dim numberEntered(2) As Integer
        For index As Integer = 0 To 2
            Console.Write("Enter number {0}: ", index)
            numberEntered(index) = Console.ReadLine()
        Next
        Array.Sort(numberEntered)
        For Each currentNumber As Integer In numberEntered
            Console.WriteLine(currentNumber)
        Next
    End Sub
    Sub Exercise3()
        Dim callCost As Decimal = 0
        Console.Write("Enter number of minutes the call lasted: ")
        Dim numberOfMinutes = Console.ReadLine()
        If (Not IsNumeric(numberOfMinutes)) Then
            Console.Write("Invalid input")
        ElseIf (numberOfMinutes = 0) Then
            Console.WriteLine("{0,-30} : ${1,5:N2}", "Total Cost", Math.Round(0, 2))
        Else
            Console.WriteLine("{0,-30} : ${1,5:N2}", "Connection Fee", 1.99)
            Console.WriteLine("{0,-30} : ${1,5:N2}", "First three Minutes", 2)
            callCost = 1.99 + 2
            numberOfMinutes -= 3
            If numberOfMinutes > 0 Then
                Dim additionalCharges As Decimal = Math.Round(numberOfMinutes * 0.5, 2)
                Console.WriteLine("{0,-30} : ${1,5:N2}", "Additional " & numberOfMinutes & " Minutes cost", additionalCharges)
                callCost += additionalCharges
            End If
            Console.WriteLine("{0,-30} : ------", "")
            Console.WriteLine("{0,-30} : ${1,5:N2}", "Total Cost", Math.Round(callCost, 2))
        End If

    End Sub

End Module
