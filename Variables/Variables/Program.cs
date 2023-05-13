using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Variables
{
    class Program
    {
        static void Main(String[] args)
        {
            /*
             * 
             * Multiple Line Comment
             *
             */
            /*
            int x;
            int y;

            x = 7;
            y = x + 3;

            Console.WriteLine(y);
            Console.ReadLine();
            */

            Console.WriteLine("What is your name?");
            Console.Write("Type your first name: ");
            // il ? evita che si possa assumere val = null
            string? myFirstName;
            myFirstName = Console.ReadLine();
            /*
            string? myLastName;
            Console.Write("Tipe your last name: ");
            myLastName = Console.ReadLine();
            */
            // a fast solution
            Console.WriteLine("Type your last name: ");
            string? myLastName = Console.ReadLine();

            Console.WriteLine("Hello, " + myFirstName + " " + myLastName);
            Console.ReadLine();
        }
    }
}
