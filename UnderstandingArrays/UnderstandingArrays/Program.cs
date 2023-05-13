using System; // questi 3 con il commento alla fine solitamente ci sono sempre
using System.Collections.Generic; //
using System.Linq; //
using System.Text;
using System.Threading.Tasks;

namespace UnderstandingArrays
{

    class Program
    {
        static void Main(string[] args)
        {
            int[] numbers = { 4, 8, 15, 16, 23 };

            for (int i = 0; i < numbers.Length; i++)
            {
                Console.WriteLine(numbers[i]);
                // Console.ReadLine(); there for any next item I have to click on the console 
	        }

            // there it will output any numbers in the array and wait to close console
            Console.ReadLine();
        }
    }
}