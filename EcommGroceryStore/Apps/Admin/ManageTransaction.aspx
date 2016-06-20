<%@ Page Title="" Language="C#" MasterPageFile="~/Apps/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ManageTransaction.aspx.cs" Inherits="EcommGroceryStore.Apps.Admin.ManageTransaction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="innerContent">
        <asp:GridView ID="gvTransactionDetails" runat="server" AutoGenerateColumns="false" DataKeyNames="CartId" OnRowDataBound="gvTransactionDetails_RowDataBound"
            class="table table-bordered" Width="100%">
            <Columns>
                <asp:TemplateField ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <img alt="" style="cursor: pointer; width: 20px;" src="../../Images/plus.png" />
                        <asp:Panel ID="pnlOrders" runat="server" Style="display: none">
                            <asp:GridView ID="gvOrders" runat="server" AutoGenerateColumns="false" class="table table-bordered table-hover" Width="100%">
                                <Columns>
                                    <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                                    <asp:BoundField DataField="Description" HeaderText="Description" />
                                </Columns>
                            </asp:GridView>
                        </asp:Panel>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="FullName" HeaderText="Customer Name" />
                <asp:BoundField DataField="EmailId" HeaderText="Email Address" />
                <asp:BoundField DataField="MobileNumber" HeaderText="Mobile Number" />
                <asp:BoundField DataField="AlternateNumber" HeaderText="Alternate Number" />
            </Columns>
        </asp:GridView>
    </div>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $("[src*=plus]").live("click", function () {
            $(this).closest("tr").after("<tr><td></td><td colspan = '999'>" + $(this).next().html() + "</td></tr>")
            $(this).attr("src", "../../Images/minus.png");
        });
        $("[src*=minus]").live("click", function () {
            $(this).attr("src", "../../Images/plus.png");
            $(this).closest("tr").next().remove();
        });
    </script>
</asp:Content>
