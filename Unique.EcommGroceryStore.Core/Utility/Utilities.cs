using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.ServiceModel;
using System.ServiceModel.Channels;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace Unique.EcommGroceryStore.Core.Utility
{
    public class Utilities
    {
        public static string GetIPAddress
        {
            get
            {
                try
                {
                    string ipAddress = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
                    if (ipAddress == null || ipAddress == "")
                    {
                        ipAddress = HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];
                    }
                    return ipAddress;
                }
                catch (Exception)
                {
                    string ip = "";
                    var props = OperationContext.Current.IncomingMessageProperties;
                    var endpointProperty = props[RemoteEndpointMessageProperty.Name] as RemoteEndpointMessageProperty;
                    if (endpointProperty != null)
                    {
                        ip = endpointProperty.Address;
                    }
                    return ip;
                }
            }
        }

        public static string GetServerIPAddress
        {
            get
            {
                string strHostName = System.Net.Dns.GetHostName();
                IPHostEntry ipHostInfo = Dns.Resolve(Dns.GetHostName());
                IPAddress ipAddress = ipHostInfo.AddressList[0];
                return ipAddress.ToString();
            }
        }

        /// <summary>
        /// JSON conversion for datatables 
        /// </summary>
        /// <param name="tbl"></param>
        /// <param name="additionalInfo"></param>
        /// <returns></returns>
        public static String ConvertDataTableToJSONWithCustomInfo(DataTable tbl, Dictionary<String, String> additionalInfo)
        {
            Dictionary<String, Object> outerWrapper = new Dictionary<string, object>();
            foreach (String key in additionalInfo.Keys)
            {
                outerWrapper.Add(key, additionalInfo[key].ToString());
            }
            List<Dictionary<String, Object>> rows = new List<Dictionary<string, object>>();
            Dictionary<String, Object> row;

            foreach (DataRow r in tbl.Rows)
            {
                row = new Dictionary<string, object>();
                foreach (DataColumn col in tbl.Columns)
                {
                    row.Add(col.ColumnName, r[col.ColumnName]);
                }
                rows.Add(row);
            }
            outerWrapper.Add("aaData", rows);
            return JsonConvert.SerializeObject(outerWrapper);
        }

        /// <summary>
        /// Convert csv or test file in to datatable formate
        /// </summary>
        /// <param name="stream">content stream</param>
        /// <param name="isRowOneHeader"></param>
        /// <returns></returns>
        public static DataTable FlatFileToDataTable(Stream stream, bool isRowOneHeader)
        {
            DataTable csvDataTable = new DataTable();
            //no try/catch - add these in yourselfs or let exception happen
            // String[] csvData = File.ReadAllLines(HttpContext.Current.Server.MapPath(file));
            using (StreamReader sr = new StreamReader(stream))
            {
                string AllData = sr.ReadToEnd();
                string[] csvData = AllData.Split("\n".ToCharArray());
                //if no data in file ‘manually’ throw an exception
                if (csvData.Length == 0)
                {
                    throw new Exception("CSV File Appears to be Empty");
                }

                String[] headings = csvData[0].Split(',');
                int index = 0; //will be zero or one depending on isRowOneHeader

                if (isRowOneHeader) //if first record lists headers
                {
                    index = 1; //so we won’t take headings as data
                    //for each heading
                    for (int i = 0; i < headings.Length; i++)
                    {
                        //replace spaces with underscores for column names
                        headings[i] = headings[i].Replace(" ", "_");

                        //add a column for each heading
                        csvDataTable.Columns.Add(headings[i], typeof(string));
                    }
                }
                else //if no headers just go for col1, col2 etc.
                {
                    for (int i = 0; i < headings.Length; i++)
                    {
                        //create arbitary column names
                        csvDataTable.Columns.Add("col" + (i + 1).ToString(), typeof(string));
                    }
                }
                //populate the DataTable
                for (int i = index; i < csvData.Length; i++)
                {
                    //create new rows
                    DataRow row = csvDataTable.NewRow();

                    for (int j = 0; j < headings.Length; j++)
                    {
                        string[] data = csvData[i].Split(',');

                        if (data.Length > j)
                        {
                            //fill them
                            row[j] = csvData[i].Split(',')[j];
                        }
                    }
                    //add rows to over DataTable
                    csvDataTable.Rows.Add(row);
                }
            }
            //return the CSV DataTable
            return csvDataTable;

        }
    }
}
