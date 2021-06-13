using System;

namespace Exercise4
{
    class StudentAndTeacherTest
    {
        static void Main(string[] args)
        {
            Student student = new Student();
            Teacher teacher = new Teacher();

            student.SetAge(21);
            student.ShowAge();

            teacher.SetAge(30);
            teacher.Explain();
        }
    }
}
