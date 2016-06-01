<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ManageUser.aspx.cs" Inherits="EcommGroceryStore.Admin.ManageUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="innerContent">
        <table id="example" clientidmode="Static" class="hover">
            <thead>
                <tr class="gridStyle">
                    <th>UserId</th>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Age</th>
                    <th>View Details</th>
                </tr>
            </thead>
            <tbody></tbody>
        </table>
    </div>
    <script src="../Scripts/DataTables/jquery.dataTables.min.js"></script>
    <link href="../Content/DataTables/css/jquery.dataTables.min.css" rel="stylesheet" />
    <script type="text/javascript">
        var table = $('#example').DataTable({
            "filter": false,
            "pagingType": "simple_numbers",
            "orderClasses": false,
            "order": [[0, "asc"]],
            "info": false,
            "scrollY": "450px",
            "scrollCollapse": true,
            "bProcessing": true,
            "bServerSide": true,
            "sAjaxSource": "WebServices/GetUserDetails.asmx/GetUserDetailList",
            "fnServerData": function (sSource, aoData, fnCallback) {
                //aoData.push({ "name": "roleId", "value": "admin" });
                $.ajax({
                    "dataType": 'json',
                    "contentType": "application/json; charset=utf-8",
                    "type": "GET",
                    "url": sSource,
                    "data": aoData,
                    "success": function (msg) {
                        var json = jQuery.parseJSON(msg.d);
                        fnCallback(json);
                        $("#example").show();
                    },
                    error: function (xhr, textStatus, error) {
                        if (typeof console == "object") {
                            console.log(xhr.status + "," + xhr.responseText + "," + textStatus + "," + error);
                        }
                    }
                });
            }            
        });
    </script>
</asp:Content>
