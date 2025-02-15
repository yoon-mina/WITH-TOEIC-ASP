﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FinalProject201931073.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <h2>회원 가입</h2>
    <table border="1" style="border-collapse: collapse" >
        <tr>
            <td style="padding: 3px">사용할 아이디</td>
            <td style="padding: 3px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>&nbsp;
                <asp:Button ID="Button5" runat="server" Text="중복확인" CausesValidation="False" OnClick="Button5_Click" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="[아이디] 필수입력" 
			ControlToValidate="TextBox1" Display="None">	</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="None"
			ErrorMessage="[아이디] 영문, 숫자 3~10자로 입력해주세요" ControlToValidate="TextBox1" 
			ValidationExpression="[0-9a-zA-Z]{3,10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="padding: 3px">비밀번호</td>
            <td style="padding: 3px">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" 
			Display="None" ErrorMessage="[비밀번호] 필수입력"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="padding: 3px">비밀번호 확인</td>
            <td style="padding: 3px">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" 
			Display="None" ErrorMessage="[비밀번호 확인] 필수입력"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" 
			ControlToValidate="TextBox3" Display="None" ErrorMessage="비밀번호가 일치하지 않습니다">
		</asp:CompareValidator></td>
        </tr>
        <tr>
            <td style="padding: 3px">이름</td>
            <td style="padding: 3px">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" 
			Display="None" ErrorMessage="[이름] 필수입력"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="padding: 3px">전화번호</td>
            <td style="padding: 3px">
              <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table><br />
    <asp:Button ID="Button6" runat="server" Text="회원 가입" OnClick="Button6_Click" />&nbsp;
    <asp:Button ID="Button7" runat="server" CausesValidation="False" Text="취소" OnClick="Button7_Click" /><br />
    <asp:Label ID="Label2" runat="server" style="font-weight: 700; color: #CC0066"></asp:Label><br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
		DisplayMode="List" ShowMessageBox="True" 
		ShowSummary="False" />
    <br />
</div>
</asp:Content>
