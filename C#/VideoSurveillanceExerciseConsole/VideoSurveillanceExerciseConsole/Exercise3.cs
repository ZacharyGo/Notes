using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VideoSurveillanceExerciseConsole
{
    class Exercise3
    {
        public Exercise3()
        {
            bool validPassword = false;
            string password = "";
            do
            {
                bool withChar = false;
                bool withSpeacialChar = false;
                bool withNumber = false;
                bool withCapitalLetter = false;
                bool withoVowel = false;
                bool correctLenght = false;
                string specialCharacters = "~`!@#$%^&*()_+-[]{}|\\:\"'<>,.?/";
                string numericCharacters = "0123456789";
                string vowelCharacters = "AEIOU";
                Console.Clear();
                Console.WriteLine("Excercise 3");
                /*Console.Write("Enter New Password : ");
                string password = Console.ReadLine();*/
                password = GetPassword();
                if (password.Length > 0)
                {
                    foreach (char char1 in password.ToCharArray())
                    {
                        // 1. Not more less than 6 characters
                        correctLenght = password.Length == 6;

                        // 2. With special character/s
                        if (specialCharacters.Contains(char1))
                            withSpeacialChar = true;

                        // 3.With number / s
                        if (numericCharacters.Contains(char1))
                            withNumber = true;

                        // 4.with Capital letter
                        if (Char.ToUpper(char1) == char1)
                            withCapitalLetter = true;

                        // 4.not accepting word with vowel/ s
                        if (vowelCharacters.Contains(Char.ToUpper(char1)))
                            withoVowel = true;
                    }

                    if (correctLenght && withSpeacialChar && withNumber && withCapitalLetter && !withoVowel)
                    {
                        validPassword = true;
                        Console.WriteLine("password accepted");
                        Console.WriteLine("Press any key to continue");
                    }
                    else
                    {
                        validPassword = false;
                        Console.WriteLine("Password is invalid");
                        Console.WriteLine("Password Requirements : ");
                        Console.WriteLine("1.Not more less than 6 characters");
                        Console.WriteLine("2.With special character/ s");
                        Console.WriteLine("3.With number / s");
                        Console.WriteLine("4.with Capital letter");
                        Console.WriteLine("5.not accepting word with vowel/ s");
                        Console.WriteLine("Press any key to start again");
                    }
                    Console.ReadKey();
                }
                    
            } while ((password.Length>0) && (!validPassword));

            

            

        }
        public string GetPassword()
        {
            ConsoleKeyInfo charKeyEnterd;
            string newPassword = "";
            string specialCharacters = "~`!@#$%^&*()_+-[]{}|\\:\"'<>,.?/";

            bool acceptableKeys;
            do
            {
                acceptableKeys = false;
                VideoSurveillanceExerciseConsole.Tools.ClearConsoleLastLine();
                Console.Write($"Enter New Password : {new String('*', newPassword.Length)}");
                charKeyEnterd = Console.ReadKey(true);

                if ((charKeyEnterd.Key <= ConsoleKey.Z) && (charKeyEnterd.Key >= ConsoleKey.A)) //Alphabet
                {
                    acceptableKeys = true;
                }
                if (((charKeyEnterd.Key <= ConsoleKey.D9) && (charKeyEnterd.Key >= ConsoleKey.D0)) || ((charKeyEnterd.Key <= ConsoleKey.NumPad9) && (charKeyEnterd.Key >= ConsoleKey.NumPad0))) // Numeric
                {
                    acceptableKeys = true;
                }
                if (specialCharacters.Contains(charKeyEnterd.KeyChar))
                {
                    acceptableKeys = true;
                }
                if ((charKeyEnterd.Key == ConsoleKey.Backspace) && newPassword.Length > 0)
                {
                    newPassword = newPassword.Substring(0, newPassword.Length - 1);
                    //VideoSurveillanceExerciseConsole.Tools.ClearConsoleLastLine();
                    //Console.Write($"Enter New Password : {new String('*', newPassword.Length)}");
                }
                if (acceptableKeys)
                {
                    newPassword += charKeyEnterd.KeyChar;
                    
                }

            } while ((charKeyEnterd.Key != ConsoleKey.Escape) && (charKeyEnterd.Key != ConsoleKey.Enter));
            Console.WriteLine($" ------------ Password Entered : {newPassword}");
            return newPassword;
        }

    }
}
