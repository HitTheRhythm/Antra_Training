using System;

namespace Exercise1
{
    class Program
    {
        static void Main(string[] args)
        {
            Rectangle rect = new Rectangle();
            Circle circle = new Circle();

            Calculate(rect);
            Calculate(circle);
            
        }

        public static void Calculate (Shape1 S)
        {
            Console.WriteLine("Area : {0}", S.Area());
            Console.WriteLine("Circumference : {0}", S.Circumference());

        }
    }
}
