using System;
using Newtonsoft.Json.Linq;

namespace MyLibrary
{
    public static class Foo
    {
        public static int Sum(int a, int b)
        {
            return a + b;
        }

        public static string EnrichObject(string jsonString)
        {
            var jObject = JObject.Parse(jsonString);
            jObject["Foo"] = "Bar";
            return jObject.ToString();
        }
    }
}
