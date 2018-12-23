namespace DBManager
{
    static class DBConnection
    {
        public static string Connection =>
            string.Concat("Host=", Host, ";Port=", Port,
                ";Username=", Username, ";Password=", Password,
                ";Database=", Database);
        public static string Host = "127.0.0.1";
        public static string Port = "5432";
        public static string Username = "postgres";
        public static string Password = "postgres";
        public static string Database = "zoo0";
    }
}