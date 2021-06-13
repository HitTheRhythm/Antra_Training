using System;
using System.Collections.Generic;
using System.Linq;

namespace Exercise8
{
    class Program
    {
        public class Store
        {
            public string Name { get; set; }
            public string City { get; set; }

            public override string ToString()
            {
                return Name + "\t" + City;
            }
        }
        static List<Store> CreateStores()
        {
            return new List<Store>
        {
            new Store { Name = "Jim’s Hardware",    City = "Berlin" },
            new Store { Name = "John’s Books",  City = "London" },
            new Store { Name = "Lisa’s Flowers",    City = "Torino" },
            new Store { Name = "Dana’s Hardware",   City = "London" },
            new Store { Name = "Tim’s Pets",    City = "Portland" },
            new Store { Name = "Scott’s Books",     City = "London" },
            new Store { Name = "Paula’s Cafe",  City = "Marseille" },
        };
        }

        static List<Customer> CreateCustomers()
        {
            return new List<Customer>
            {
                new Customer(1) { Name = "Maria Anders",     City = "Berlin"    },
                new Customer(2) { Name = "Laurence Lebihan", City = "Marseille" },
                new Customer(3) { Name = "Elizabeth Brown",  City = "London"    },
                new Customer(4) { Name = "Ann Devon",        City = "London"    },
                new Customer(5) { Name = "Paolo Accorti",    City = "Torino"    },
                new Customer(6) { Name = "Fran Wilson",      City = "Portland"  },
                new Customer(7) { Name = "Simon Crowther",   City = "London"    },
                new Customer(8) { Name = "Liz Nixon",        City = "Portland"  }
            };
        }
        public class Customer
        {
            public string Name { get; set; }
            public string City { get; set; }
            public int CustomerID { get; set; }
            public Customer(int i)
            {
                CustomerID = i;
            }

            public override string ToString()
            {
                return Name + "\t" + City;
            }
        }
        static void Query()
        {
            var results = from c in CreateCustomers()
                          join s in CreateStores() on c.City equals s.City
                          group s by c.Name into g
                          select new { CustomerName = g.Key, Count = g.Count() };

            foreach (var r in results)
                Console.WriteLine("{0}\t{1}", r.CustomerName, r.Count);


        }

        static void Main(string[] args)
        {
            Query();
        }
    }






}
