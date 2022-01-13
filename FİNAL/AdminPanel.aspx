<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="FİNAL.AdminPanel" %>

<!DOCTYPE html>
<html>
    <head>
<title>ADMİN PANELİ</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <style type="text/css">
            .w3-bar-block {
                width: 280px;
                margin-right: 87px;
            }
        </style>
</head>
<body>

    <form id="form1" runat="server">

<!-- Sidebar -->
<div class="w3-sidebar w3-light-grey w3-bar-block">
  <h3 class="w3-bar-item">Admin Panel</h3>
  <a href="AdminPanel.aspx" class="w3-bar-item w3-button">Ana Sayfa</a>
  <a href="FİNAL.aspx" class="w3-bar-item w3-button btn-info">Siteye Git </a>
  <a href="ADMİN.aspx" class="w3-bar-item w3-button btn-danger">Çıkış</a>

</div>

<!-- Page Content -->
<div style="margin-left:25%">

<div class="w3-container w3-teal" style=" background-image: linear-gradient(120deg,#3498db,#8e44ad);">
  <h1>Turizm Konaklama Sitesi</h1>
</div>



<div class="w3-container">
<p>&nbsp;</p>
    <p>&nbsp;</p>
</div>

<h2><i><b>KULLANICI BİLGİLERİ</b></i></h2>

    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="MUSTERIID" DataSourceID="final" ForeColor="Black">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="MUSTERIID" HeaderText="MUSTERIID" InsertVisible="False" ReadOnly="True" SortExpression="MUSTERIID" />
            <asp:BoundField DataField="ADULT" HeaderText="ADULT" SortExpression="ADULT" />
            <asp:BoundField DataField="DESTİNATİON" HeaderText="DESTİNATİON" SortExpression="DESTİNATİON" />
            <asp:BoundField DataField="CHECKIN" HeaderText="CHECKIN" SortExpression="CHECKIN" />
            <asp:BoundField DataField="CHECKOUT" HeaderText="CHECKOUT" SortExpression="CHECKOUT" />
            <asp:BoundField DataField="CHILDREN" HeaderText="CHILDREN" SortExpression="CHILDREN" />
            <asp:BoundField DataField="ROOM" HeaderText="ROOM" SortExpression="ROOM" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="final" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:finalConnectionString %>" DeleteCommand="DELETE FROM [Table_3] WHERE [MUSTERIID] = @original_MUSTERIID AND (([ADULT] = @original_ADULT) OR ([ADULT] IS NULL AND @original_ADULT IS NULL)) AND (([DESTİNATİON] = @original_DESTİNATİON) OR ([DESTİNATİON] IS NULL AND @original_DESTİNATİON IS NULL)) AND (([CHECKIN] = @original_CHECKIN) OR ([CHECKIN] IS NULL AND @original_CHECKIN IS NULL)) AND (([CHECKOUT] = @original_CHECKOUT) OR ([CHECKOUT] IS NULL AND @original_CHECKOUT IS NULL)) AND (([CHILDREN] = @original_CHILDREN) OR ([CHILDREN] IS NULL AND @original_CHILDREN IS NULL)) AND (([ROOM] = @original_ROOM) OR ([ROOM] IS NULL AND @original_ROOM IS NULL))" InsertCommand="INSERT INTO [Table_3] ([ADULT], [DESTİNATİON], [CHECKIN], [CHECKOUT], [CHILDREN], [ROOM]) VALUES (@ADULT, @DESTİNATİON, @CHECKIN, @CHECKOUT, @CHILDREN, @ROOM)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Table_3]" UpdateCommand="UPDATE [Table_3] SET [ADULT] = @ADULT, [DESTİNATİON] = @DESTİNATİON, [CHECKIN] = @CHECKIN, [CHECKOUT] = @CHECKOUT, [CHILDREN] = @CHILDREN, [ROOM] = @ROOM WHERE [MUSTERIID] = @original_MUSTERIID AND (([ADULT] = @original_ADULT) OR ([ADULT] IS NULL AND @original_ADULT IS NULL)) AND (([DESTİNATİON] = @original_DESTİNATİON) OR ([DESTİNATİON] IS NULL AND @original_DESTİNATİON IS NULL)) AND (([CHECKIN] = @original_CHECKIN) OR ([CHECKIN] IS NULL AND @original_CHECKIN IS NULL)) AND (([CHECKOUT] = @original_CHECKOUT) OR ([CHECKOUT] IS NULL AND @original_CHECKOUT IS NULL)) AND (([CHILDREN] = @original_CHILDREN) OR ([CHILDREN] IS NULL AND @original_CHILDREN IS NULL)) AND (([ROOM] = @original_ROOM) OR ([ROOM] IS NULL AND @original_ROOM IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_MUSTERIID" Type="Int32" />
            <asp:Parameter Name="original_ADULT" Type="String" />
            <asp:Parameter Name="original_DESTİNATİON" Type="String" />
            <asp:Parameter Name="original_CHECKIN" Type="String" />
            <asp:Parameter Name="original_CHECKOUT" Type="String" />
            <asp:Parameter Name="original_CHILDREN" Type="String" />
            <asp:Parameter Name="original_ROOM" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ADULT" Type="String" />
            <asp:Parameter Name="DESTİNATİON" Type="String" />
            <asp:Parameter Name="CHECKIN" Type="String" />
            <asp:Parameter Name="CHECKOUT" Type="String" />
            <asp:Parameter Name="CHILDREN" Type="String" />
            <asp:Parameter Name="ROOM" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ADULT" Type="String" />
            <asp:Parameter Name="DESTİNATİON" Type="String" />
            <asp:Parameter Name="CHECKIN" Type="String" />
            <asp:Parameter Name="CHECKOUT" Type="String" />
            <asp:Parameter Name="CHILDREN" Type="String" />
            <asp:Parameter Name="ROOM" Type="String" />
            <asp:Parameter Name="original_MUSTERIID" Type="Int32" />
            <asp:Parameter Name="original_ADULT" Type="String" />
            <asp:Parameter Name="original_DESTİNATİON" Type="String" />
            <asp:Parameter Name="original_CHECKIN" Type="String" />
            <asp:Parameter Name="original_CHECKOUT" Type="String" />
            <asp:Parameter Name="original_CHILDREN" Type="String" />
            <asp:Parameter Name="original_ROOM" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>
      
    </form>
      
</body>
</html>