using System;
using System.Collections.Generic;
using System.Text;

namespace Exercise1
{
    abstract class Shape1
    {
        protected float R, L, B;
        protected float area, circum;
        public abstract float Area();
        public abstract float Circumference();
    }

    class Rectangle: Shape1
    {
        public override float Area()
        {
            Console.WriteLine("Enter Length: ");
            L = int.Parse(Console.ReadLine());

            Console.WriteLine("Enter Breadth: ");
            B = int.Parse(Console.ReadLine());

            return L * B;
        }
        public override float Circumference()
        {
            return (L + B) * 2;
        }
    }

    class Circle: Shape1
    {
        public override float Area()
        {
            Console.WriteLine("Enter Radius: ");
            R = int.Parse(Console.ReadLine());

            return (float)Math.PI * R * R;
        }

        public override float Circumference()
        {
            return (float)Math.PI * 2 * R;
        }
    }
}
