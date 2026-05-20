using Microsoft.Maui.Networking;

namespace IT13EstateCorePlatformMauiBlzaor.Data
{
    internal class DbConfig
    {
        // Your actual credentials
        private static readonly string LocalConn = @"Server=jhone_puca\sqlexpress;Database=EstateCoreDB;Trusted_Connection=True;TrustServerCertificate=True;";
        private static readonly string OnlineConn = @"Server=db47718.public.databaseasp.net;Database=db47718;User Id=db47718;Password=9r-YeJ6#3+Fg ;Encrypt=False;MultipleActiveResultSets=True;TrustServerCertificate=True;";

        public static string ConnectionString
        {
            get
            {
                // Logic to switch database based on internet
                if (Connectivity.Current.NetworkAccess == NetworkAccess.Internet)
                    return OnlineConn;

                return LocalConn;
            }
        }

        public static bool IsOnline => Connectivity.Current.NetworkAccess == NetworkAccess.Internet;
        public static string GetLocalRaw => LocalConn; // Used by sync logic to find local data
    }
}