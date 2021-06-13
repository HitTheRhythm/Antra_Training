using System;
using System.Collections.Generic;
namespace Exercise3
{
    class Program
    {
        class Customer
        {
            public String Name { get; set; }

            public override string ToString()
            {
                return Name.ToString();
            }
        }
        
        static void VarTest()
        {
            var i = 43;

            var s = "...This is only a test...";

            var numbers = new[] { 4, 9, 16 };

            var complex = new SortedDictionary<string, List<DateTime>>();
        }

        static void Main(string[] args)
        {
            var customers = CreateCustomers();

            Console.WriteLine("Customers:\n");
            foreach (var c in customers)
                Console.WriteLine(c.ToString());
        }

        static List<Customer>CreateCustomers()
        {
            return new List<Customer>()
            {
                new Customer { Name = "Jake"}
            };
        }
    }
}
