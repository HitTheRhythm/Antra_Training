using System;

namespace Exercise5
{
    class ComplexTest
    {
        static void Main(string[] args)
        {
            bool debug = false;

            ComplexNumber number = new ComplexNumber(5, 2);
            Console.WriteLine("Number is: " + number.ToString());

            number.SetImaginary(-3);
            Console.WriteLine("Number is: " + number.ToString());

            Console.Write("Magnitude is: ");
            Console.WriteLine(number.GetMagnitude());

            ComplexNumber number2 = new ComplexNumber(-1, 1);
            number.Add(number2);
            Console.Write("After adding: ");
            Console.WriteLine(number.ToString());

            if (debug)
                Console.ReadLine();
            Console.ReadKey();

        }
    }

    class ComplexNumber
    {
        int real, imagin;
        public ComplexNumber(int a, int b)
        {
            real = a;
            imagin = b;
        }
        public void SetReal(int a)
        {
            real = a;
        }

        public int GetReal()
        {
            return real;
        }

        public void SetImaginary(int a)
        {
            imagin = a;
        }

        public int GetImaginary()
        {
            return imagin;
        }

        public double GetMagnitude()
        {
            return Math.Sqrt(Math.Pow(real, 2) + Math.Pow(imagin, 2));
        }

        public void Add (ComplexNumber c)
        {
            real += c.real;
            imagin += c.imagin;
            
        }

        public string ToString()
        {
            return $"({real}, {imagin})";
        }

    }
}

