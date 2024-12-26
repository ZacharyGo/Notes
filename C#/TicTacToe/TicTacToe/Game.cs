using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TicTacToe
{
    class Game
    {
        char[,] slots;// = new char[3, 3];

        char playerType;
        char computerType;
        public Game()
        {
            char playAgain;
            do
            {
                slots = new char[3, 3] {
                    {' ', ' ', ' '},
                    {' ', ' ', ' '},
                    {' ', ' ', ' '}
                };
                Play();
                Console.Write("Play Again (Y/N)?");
                playAgain = Char.ToUpper(Console.ReadKey().KeyChar);

            } while (playAgain == 'Y');
            Console.ReadLine();
        }

        public void Play()
        {
            char winner;
            do
            {
                Console.Clear();
                Console.Write("Choose X or O");
                playerType = Char.ToUpper(Console.ReadKey().KeyChar);
                Console.WriteLine();
            } while ((playerType != 'O') && (playerType != 'X'));
            if (playerType =='O')
            {
                computerType = 'X';
            } else
            {
                computerType = 'O';
            }
            do
            {
                DisplayGame();
                GetPlayersChoice();
                GetComputerChoice();
                winner = Winner();
            } while (SlotsFull() && winner == ' ');
            DisplayGame();
            if (winner !=' ')
            {
                Console.WriteLine($"Winner is {winner}");
            } else
            {
                Console.WriteLine($"Tie");
            }
        }

        private void GetComputerChoice()
        {
            Random randomNumber = new Random();
            int row = 0, col = 0;
            bool incorrectSelection = true;

            do
            {
                // Need to change this it will cause app to hangs up looping for the correct one
                row = randomNumber.Next(3);
                col = randomNumber.Next(3);
                if (slots[col, row] == ' ')
                {
                    incorrectSelection = false;
                    slots[col, row] = computerType;
                }
            } while (incorrectSelection);
        }

        public char Winner()
        {
            //Downward
            if ((slots[0, 0] != ' ') && (slots[0, 0] == slots[0, 1] && slots[0, 1] == slots[0, 2])) {
                return slots[0, 0];
            }
            if ((slots[1, 0] != ' ') && (slots[1, 0] == slots[1, 1] && slots[1, 1] == slots[1, 2])) {
                return slots[1, 0];
            }
            if ((slots[2, 0] != ' ') && (slots[2, 0] == slots[2, 1] && slots[2, 1] == slots[2, 2])) {
                return slots[2, 0];
            }
            //Sideward
            if ((slots[0, 0] != ' ') && (slots[0, 0] == slots[1, 0] && slots[1, 0] == slots[2, 0])) {
                return slots[0, 0];
            }
            if ((slots[0, 1] != ' ') && (slots[0, 1] == slots[1, 1] && slots[1, 1] == slots[2, 1])) {
                return slots[0, 1];
            }
            if ((slots[0, 2] != ' ') && (slots[0, 2] == slots[1, 2] && slots[1, 2] == slots[2, 2])) {
                return slots[0, 2];
            }

            if ((slots[0, 0] != ' ') && (slots[0, 0] == slots[1, 1] && slots[1, 1] == slots[2, 2])) {
                return slots[0, 0];
            }
             if ((slots[0, 2] != ' ') && (slots[0, 2] == slots[1, 1] && slots[1, 1] == slots[2, 0])) {
                return slots[0, 2];
            }
            return ' ';
        }
        public bool SlotsFull()
        {
            int slotsFilled = 0;
            for (int x =0; x <=2; x++)
            {
                for (int y = 0; y <= 2; y++)
                {
                    if (slots[x, y] != ' ')
                    {
                        slotsFilled++;
                    }
                }
            }
            return (slotsFilled != 9);
        }

        public void GetPlayersChoice()
        {
            string selection = "";
            do
            {
                Console.Write("Enter Row,Col to select ex 0,0 ");
                selection = Console.ReadLine().Replace(" ", "").Replace(",", "").Trim();

            } while (SetSlot(selection));
        }

        public bool SetSlot(string selection)
        {
            bool incorrectSelection = true;
            int row = 0, col = 0;

            if (selection.Length == 2)
            {
                if ((int.TryParse(selection.Substring(0, 1), out row)) && (row >= 0) && (row <= 2))
                {
                    if ((int.TryParse(selection.Substring(1, 1), out col)) && (col >= 0) && (col <= 2))
                    {
                        if (slots[col, row] == ' ')
                        {
                            incorrectSelection = false;
                            slots[col, row] = playerType;
                        }
                    }
                }
            }
            if (incorrectSelection)
            {
                Console.SetCursorPosition(0, Console.CursorTop - 1);
                ClearConsoleLastLine();
            }
            return incorrectSelection;
        }
        private void DisplayGame()
        {
            Console.Clear();
            Console.WriteLine("Col    0   1   2");
                Console.WriteLine();
            Console.WriteLine($"Row 0  {slots[0, 0]} | {slots[1, 0]} | {slots[2, 0]}");
            Console.WriteLine("      ---|---|---");
            Console.WriteLine($"Row 1  {slots[0, 1]} | {slots[1, 1]} | {slots[2, 1]}");
            Console.WriteLine("      ---|---|---");
            Console.WriteLine($"Row 2  {slots[0, 2]} | {slots[1, 2]} | {slots[2, 2]}");
        }
        public static void ClearConsoleLastLine()
        {
            Console.SetCursorPosition(0, Console.CursorTop);
            Console.Write(new string(' ', Console.WindowWidth));
            Console.SetCursorPosition(0, Console.CursorTop);
        }
    }
}
