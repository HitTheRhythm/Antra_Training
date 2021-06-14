using System;
namespace consoleApplication
{
    public class Myclass
    {
        public delegate void LogHandler(string message);
        public void process(LogHandler loghandler)
        {
            if (loghandler != null)
            {
                loghandler("begin");
            }
            if (loghandler != null)
            {
                loghandler("End");
            }
        }
        public class MyLogger
        {
            public void logger(string s)
            {
                Console.WriteLine(s);
            }
        }
        public class TestApplication
        {
            static void MyLogger(string s)
            {
                Console.WriteLine(s);
            }
            static void Main(string[] args)
            {
                MyLogger f1 = new MyLogger();
                Myclass myclass = new Myclass();
                Myclass.LogHandler myLogger = null;
                myLogger += new Myclass.LogHandler(f1.logger);
                myLogger += new Myclass.LogHandler(f1.logger);
                myclass.process(myLogger);
                return;
            }
        }
    }
}
