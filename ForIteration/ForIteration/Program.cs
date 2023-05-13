using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ForIteration
{ 

    class Program
    { 
    
        static void Main(string[] args)
        { 
	        for (int i = 0; i < 10; i++)
            {
                //Console.WriteLine(i);
                if (i == 7)
                {
                    Console.WriteLine("Found seven!");
                    break;
		        }
	        }


            for (int a = 0; a < 12; a ++)
            {
                Console.WriteLine(a);
	        }

            Console.ReadLine();
        }
    }
}