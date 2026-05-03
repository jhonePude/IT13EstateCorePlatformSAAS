using System;
using System.Collections.Generic;
using System.Text;

namespace IT13EstateCorePlatformMauiBlzaor.Data
{
    internal class DbConfig
    {
        public static readonly string ConnectionString = @"Server=jhone_puca\sqlexpress;Database=EstateCoreDB;Trusted_Connection=True;TrustServerCertificate=True;";
        string stripeKey = "REPLACE_ME";
    }
}
