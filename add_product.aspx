<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_product.aspx.cs" Inherits="web3.add_product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>add_product.aspx</title>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
   
    <link rel="stylesheet" href="style.css"/>
       
    <script >

        function chek() {
            var nmm = document.getElementById("name");

            if (nmm.value == []) {
                alert("< " + nmm.value + " > Incorrect entry \n Enter name ");
                nmm.focus();
                nmm.select();
                return false;
            }
            else
                var nn = document.getElementById("number");

            var nn1 = nn.value.search(/^[a-z or A-Z]{3}[0-9]{7}\ ?$/);
            if (nn1 != 0) {
                alert("< " + nn.value + " > Incorrect entry \n Please enter a number according to the form  <ddd9999999>");
                nn.focus();
                nn.select();
                return false;
            }
            else


                var tt = document.getElementById("type");

            var tt1 = tt.value.search(/^[a-z or A-Z or 0-9]+\ ?$/);
            if (tt1 != 0) {
                alert("< " + tt.value + " > Incorrect entry \n Enter(Type) letters and numbers only");
                tt.focus();
                tt.select();
                return false;
            }
            else

                var dd = document.getElementById("date");

            var dd1 = dd.value.search(/^[0-9][0-9][0-9][0-9]\ ?$/);
            if (dd1 != 0) {
                alert("< " + dd.value + " > Incorrect entry \n Enter(Manufacturing year) four positive numbers ");
                dd.focus();
                dd.select();
                return false;
            }
            else

                var pp = document.getElementById("price");
            var pp1 = Number(pp.value);
            var pp2 = pp.value.search(/^[0-9]+\ ?$/);
            if (pp1 < 0 || pp1 > 10000 || pp2 != 0) {
                alert("< " + pp.value + " > Incorrect entry \n Enter(price) between [0 --> 10000] ");
                pp.focus();
                pp.select();
                return false;
            }
            return true;
        }



/**/</script>
</head >
<body class="body">

    <p class="first">Enter the new product information </p>

    <form id="form1" runat="server" action="result.aspx" onsubmit="return chek();" >
 
        
 
        <asp:Table ID="Table1" runat="server" border="1" Width="1016px" Height="371px">
            <asp:TableRow runat="server">

                <asp:TableCell runat="server">
                     Product name:
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="name" runat="server" ></asp:TextBox>
                    
                </asp:TableCell>
                <asp:TableCell runat="server">
                    Product name must be entered
                </asp:TableCell>

            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    Product number:
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="number" runat="server"></asp:TextBox>

                </asp:TableCell>
                <asp:TableCell runat="server">
                    Example: (Esp1234567)
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                      Contry of manufacture:
                </asp:TableCell>
                <asp:TableCell runat="server" RowSpan="1" TabIndex="1">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>China</asp:ListItem>

                        <asp:ListItem>Italia</asp:ListItem>

                        <asp:ListItem>USA</asp:ListItem>

                        <asp:ListItem>Syria</asp:ListItem>

                        <asp:ListItem>Germany</asp:ListItem>

                        <asp:ListItem>France</asp:ListItem>

                        <asp:ListItem>Russia</asp:ListItem>

                        <asp:ListItem>Spain</asp:ListItem>

                        <asp:ListItem>other</asp:ListItem>


                    </asp:DropDownList>


                </asp:TableCell>

            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    Type:
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="type" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    Example: (rf56DerDD4)
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    Manufacturing year:
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="date" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    Example: (2012)
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                     The price:
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="price" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server">
                     Enter  between (0  to  10000)
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                        <input id="Submit1" type="submit" class="button-m" value="Send data" />
                </asp:TableCell>
                <asp:TableCell runat="server">
                        <input id="Reset1" type="reset" class="button-m" value="reset values" />
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <a href="index.html" class="button-m">Home</a>
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
       
    </form>
</body>
</html>
