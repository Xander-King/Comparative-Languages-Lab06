// TODO:  Write the Madlib program in C#
//
using System; 

    class Program {
        static void Main(string[] args) {
            Console.WriteLine("Enter a Name: Enter a Color: Enter a Noun (pl): ");
            string name = Console.ReadLine();
            string color = Console.ReadLine();
            string noun = Console.ReadLine();
            Console.WriteLine();
            Console.WriteLine($"Roses are {color}");
            Console.WriteLine($"{noun} are blue,");
            Console.WriteLine($"{name} loves you.");
        }
    }


