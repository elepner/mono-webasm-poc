using System;
using MyLibrary;

namespace TestingMonowasm
{
    public static class Sample
    {
        public static string Run(string input)
        {
            return Foo.EnrichObject(input);
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine(Foo.Sum(420, 69));
            Console.WriteLine(Foo.EnrichObject("{test:'Test'}"));
        }
    }
}
