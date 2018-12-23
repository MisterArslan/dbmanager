using System.Collections.Generic;

namespace DBManager
{
    static class DBList
    {
        public static Dictionary<string, List<string>> Data
            = new Dictionary<string, List<string>>()
            {
                { "zoo0", new List<string>(){
                "employee",
                "contract",
                "schedule",
                "feed",
                "animal",
                "zooanimal"
            } },
            { "zoo1", new List<string>(){
                "employee",
                "contract",
                "schedule",
                "feed",
                "animal",
                "animal_feed",
                "zooanimal"
            } },
            { "zoo2", new List<string>(){
                "employee",
                "jobtype",
                "role",
                "contract",
                "schedule",
                "feed",
                "animal",
                "animal_feed",
                "zooanimal"
            } },
            { "zoo3", new List<string>(){
                "employee",
                "jobtype",
                "role",
                "contract",
                "schedule",
                "feed",
                "animal",
                "animal_feed",
                "zooanimal"
            } }
            };
    }
}