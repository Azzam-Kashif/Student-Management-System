<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student_data.aspx.cs" Inherits="WEBENG_PROJECT.student_data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         body {
    font-family: Arial, sans-serif;
    margin: 20px;
}

h2 {
    margin-bottom: 10px;
    padding-left: 215px;
    color:#4CAF50;

}



/* Form styles */
form {
    width: 400px;
    margin: auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: #f9f9f9;
}

table {
    width: 100%;
    border-collapse: collapse;
}

table td {
    padding: 8px;
}

table td:first-child {
    font-weight: bold;
    width: 120px;
    
}

input[type="text"],
select {
    width: 100%;
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 3px;
    box-sizing: border-box;
}

select {
    height: 38px; /* To match the height of the text input */
}

input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 3px;
    padding: 10px 15px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #45a049;
}

/* Result label styles */
#lblResult {
    margin-top: 20px;
    font-weight: bold;
}

        .auto-style1 {
            width: 91px;
        }

        .auto-style2 {
            width: 624px;
        }

        .auto-style3 {
            width: 489px;
        }
        .auto-style4 {
            width: 99%;
            margin-right: 9px;
        }

        </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style2">
        <div>
            <h2>Student Information</h2>
            <table class="auto-style4">
                <tr>
                    <td class="auto-style1">Student ID:</td>
                    <td class="auto-style3"><asp:TextBox ID="txtStudentID" runat="server" Width="439px"></asp:TextBox>&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtStudentID" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Name:</td>
                    <td class="auto-style3"><asp:TextBox ID="txtName" runat="server" Width="439px"></asp:TextBox>&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style1">Department:</td>
                    <td class="auto-style3"><asp:DropDownList ID="ddldept" runat="server" Width="439px">
                            <asp:ListItem Text="--Select Department--" Value="-1" />
                            <asp:ListItem Text="Software Engineering"  />
                            <asp:ListItem Text="Computer Science" />
                            <asp:ListItem Text="Physics" />
                            <asp:ListItem Text="Mathematics" />
                            <asp:ListItem Text="Mass Communication" />
                            <asp:ListItem Text="Electrical Engineering" />
                            <asp:ListItem Text="Mechanical Engineering" />

                            
                        </asp:DropDownList>&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddldept" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="-1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Age:</td>
                    <td class="auto-style3"><asp:TextBox ID="txtAge" runat="server" Width="439px"></asp:TextBox>&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAge" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Contact:</td>
                    <td class="auto-style3"><asp:TextBox ID="txtContact" runat="server" Width="439px"></asp:TextBox>&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtContact" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Address:</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="ddlAddress" runat="server" Width="439px">
                            <asp:ListItem Text="--Select Address--" Value="-1" />
                            <asp:ListItem Text="Gujrat"  />
                            <asp:ListItem Text="Mandi Bahauddin"/>
                            <asp:ListItem Text="Kharian" />
                            <asp:ListItem Text="Lahore" />
                            <asp:ListItem Text="Gujranwala" />
                            <asp:ListItem Text="Islamabad" />
                            <asp:ListItem Text="Quetta" />
                            <asp:ListItem Text="Faisalabad" />

                            
                        </asp:DropDownList>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlAddress" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="-1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"></td>
                    <td class="auto-style3"><asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"  />
                        &nbsp;&nbsp;&nbsp; <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" OnClientClick="return confirm('Are you sure you want to update?');" />
                        &nbsp;&nbsp; <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btndel_Click" OnClientClick="return confirm('Are you sure you want to delete?');" CausesValidation="False" />
                        &nbsp;&nbsp; <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CausesValidation="False" />
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="GridView1" runat="server" CellPadding="3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
    </form>
</body>
</html>
