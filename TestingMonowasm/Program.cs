using System;
using MyLibrary;

namespace TestingMonowasm
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine(Foo.Sum(420, 69));
            Console.WriteLine(Foo.EnrichObject("{test:'Test'}"));
        }
    }
}
