using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace Unique.EcommGroceryStore.Core.Utility
{
    public class Utilities
    {
        public static string GetIPAddress
        {
            get
            {
                string hostName = Dns.GetHostName(); // Retrive the Name of HOST
                return Dns.GetHostByName(hostName).AddressList[0].ToString();
            }
        }
    }
}
