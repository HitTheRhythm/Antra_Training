using System;
using System.Collections.Generic;
using System.Text;

namespace Exercise4
{
    class Person
    {
        int age;

        public Person()
        {
            Console.WriteLine("Hello!");
        }
        public void SetAge(int n)
        {
            age = n;
        }
        public int GetAge()
        {
            return age;
        }
    }

    class Student: Person
    {
        public void GoToClasses()
        {
            Console.WriteLine("I'm going to class.");
        }
        public void ShowAge()
        {
            Console.WriteLine($"My age is: {GetAge()} years old.");
        }
    }

    class Teacher: Person
    {
        private string subject;
        public void Explain()
        {
            Console.WriteLine("Hello!");
            Console.WriteLine($"My age is: {GetAge()} years old.");
            Console.WriteLine("Explaination begins");
        }
    }
}
