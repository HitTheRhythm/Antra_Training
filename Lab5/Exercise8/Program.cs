using System;

namespace Exercise8
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
        }
    }

    class A
    {
        int x;
        public abstract void f(unsigned n);
        private virtual void g(int n)
    {
         x = n as int;
    }
    public string ToString()
    {
        return x.ToString();
    }
}

}
