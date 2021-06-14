using System;

namespace Exercise6
{
    class Program
    {
        static void Main(string[] args)
        {
            Sqlconnection conn = new Sqlconnection(MyConnectString);
            Sqlcommand cmd = new Sqlcommand(“sp_Myproc”, conn);
            Conn.open();
            cmd.ExecuteNonQuery();
            And
            Sqlconnection conn = new Sqlconnection(Myconnectstring);
            Sqlcommand cmd = new Sqlcommand(“sp_Myproc”, conn);
            Using(conn)
{
                Conn.open();
                cmd.ExecuteNonQuery();
            }

        }
    }
}
