
<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="icble.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentinner" runat="server">

 <div class=" container">
        <div class="row">
            <div class="cms-section">
                <div class="cms-area">
                   
                    <div class="container py-5 txtbold">
        <div class="row">
            <div class="col-md-12">
                <center>
                    <h4>Registration Form (ICBLE - 2023)</h4>
                </center>
                
                <hr />
            </div>
            <div class="col-md-2 py-2">
                <label for="txt_email" class="form-label" CssClass="form-control">Delegate Type</label>
            </div>
            
                <div class="col-md-10 py-2">
                <asp:RadioButtonList ID="rdbdelegate" runat="server" RepeatDirection="Horizontal"  AutoPostBack="true" OnSelectedIndexChanged="rb_day1_SelectedIndexChanged" CellPadding="1" CellSpacing="1">
                            <asp:ListItem Value="1" class="mr-1">National</asp:ListItem>
                            <asp:ListItem Value="0">International</asp:ListItem>
                        </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="vrdbdelegate" runat="server" ErrorMessage="Please Select" CssClass="ValidatorClass" ControlToValidate="rdbdelegate" Text="Required" ValidationGroup="vgRegister" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>

            </div>

            <div class="col-md-2 py-2">
                <label for="txt_email" class="form-label">Professional</label>
            </div>
            <div class="col-md-10 py-2">
                <asp:DropDownList ID="ddlprof" runat="server" CssClass="form-control">
                     <asp:ListItem Value="-1">--Please Select--</asp:ListItem>  
                        <asp:ListItem>Faculty</asp:ListItem>  
                        <asp:ListItem>Industry Experts</asp:ListItem>  
                        <asp:ListItem>Student</asp:ListItem>  
                        <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="vddlprof" runat="server" ErrorMessage="Please Enter" CssClass="ValidatorClass" ControlToValidate="ddlprof" InitialValue="-1" ValidationGroup="vgRegister" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>

            </div>
            <hr />
            <div class="col-md-2 py-2">
                <label for="txt_email" class="form-label">Email ID</label>
            </div>
            <div class="col-md-10 py-2">
                <asp:TextBox ID="txt_email" AutoPostBack="true" OnTextChanged="txt_email_TextChanged1" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_email" runat="server" ErrorMessage="Please Enter" ForeColor="Red" CssClass="ValidatorClass" ControlToValidate="txt_email" ValidationGroup="vgRegister" SetFocusOnError="true"  Display="Dynamic"></asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator ID="rev_email" runat="server" ErrorMessage="Please enter valid email Id" ValidationGroup="vgRegister" ControlToValidate="txt_email" CssClass="ValidatorClass"
                    Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:Label ID="lblStatus" Visible="false" style="color:red" runat="server"></asp:Label>

            </div>

            <div class="col-md-2 py-2">

                <label for="txt_title" class="form-label">Title</label>
            </div>

            <div class="col-md-10">
                <div class="">
                    <asp:DropDownList ID="ddl_title" runat="server" CssClass="form-control">
                        <asp:ListItem Value="-1">--Please Select--</asp:ListItem>
                        <asp:ListItem Value="Mr.">Mr.</asp:ListItem>
                        <asp:ListItem Value="Ms.">Ms.</asp:ListItem>
                        <asp:ListItem Value="Mrs.">Mrs.</asp:ListItem>
                        <asp:ListItem Value="Dr.">Dr.</asp:ListItem>
                        <asp:ListItem Value="Prof.">Prof.</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfv_title" runat="server" ErrorMessage="Please Enter" ForeColor="Red" InitialValue="-1" CssClass="ValidatorClass" ControlToValidate="ddl_title" ValidationGroup="vgRegister" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator><br />
                    
                </div>
            </div>
            <div class="col-md-2 py-2">
                <label for="txt_name" class="form-label">Last Name</label>
            </div>
            <div class="col-md-2 py-2">
                <asp:TextBox ID="txt_last" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter" Forecolor="Red" CssClass="ValidatorClass" ControlToValidate="txt_last" ValidationGroup="vgRegister" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator><br />
            </div>
            <div class="col-md-2 py-2">
                <label for="txt_name" class="form-label">Middle Name</label>
            </div>
            <div class="col-md-2 py-2">
                <asp:TextBox ID="txt_middle" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
            </div>
            <div class="col-md-2 py-2 ">
                <label for="txt_name" class="form-label">First Name</label>
            </div>
            <div class="col-md-2 py-2">
                <asp:TextBox ID="txt_name" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_name" runat="server" ErrorMessage="Please Enter" Forecolor="Red" CssClass="ValidatorClass" ControlToValidate="txt_name" ValidationGroup="vgRegister" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator><br />
            </div>

             <div class="col-md-2 py-2">
                <label for="gender" class="form-lable">Gender</label>
                
            </div>
            <div class="col-md-10 py-2">
                <div class="">
                    <asp:DropDownList ID="ddl_Gender" runat="server" CssClass="form-control">
                        <asp:ListItem Value="0">--Please Select--</asp:ListItem>
                        <asp:ListItem Value="Male">Male</asp:ListItem>
                        <asp:ListItem Value="Female">Female</asp:ListItem>
                        <asp:ListItem Value="Others">Others</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfv_gender" runat="server" ErrorMessage="Please Select" Forecolor="Red" CssClass="ValidatorClass" ControlToValidate="ddl_Gender" ValidationGroup="vgRegister" InitialValue="0" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>

                </div>
            </div>

           <%-- <div class="col-md-2 py-2">
                <label for="user_type" class="form-lable">User Type</label>
                
            </div>
            <div class="col-md-10 py-2">
                <div class="">
                    <asp:DropDownList ID="ddl_usertype" runat="server" CssClass="form-control">
                        <asp:ListItem Value="0">--Please Select--</asp:ListItem>
                        <asp:ListItem Value="Faculty">Faculty</asp:ListItem>
                        <asp:ListItem Value="Student">Student</asp:ListItem>
                        
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfv_user_type" runat="server" ErrorMessage="Please Select" Forecolor="Red" CssClass="ValidatorClass" ControlToValidate="ddl_usertype" ValidationGroup="vgRegister" InitialValue="0" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>

                </div>
            </div>--%>

            <div class="col-md-2 py-2">
                <label for="txt_code" class="form-label">Contact No.</label>
            </div>
            
             <div class="col-md-4 py-2">
                <asp:TextBox ID="txt_contact" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter" Forecolor="Red" CssClass="ValidatorClass" ControlToValidate="txt_contact" ValidationGroup="vgRegister" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator><br />
            </div>
            <div class="col-md-2 py-2">
                <label for="txt_code" class="form-label">Phone No.</label>
            </div>
            <div class="col-md-4 py-2">
                <asp:TextBox ID="txt_mobile" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_mobile" runat="server" ErrorMessage="Please Enter" Forecolor="Red" CssClass="ValidatorClass" ControlToValidate="txt_mobile" ValidationGroup="vgRegister" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator><br />
            </div>
            
            <div class="col-md-2 py-2">
                <label for="txt_org" class="form-label">Organisation Name</label>
            </div>
            <div class="col-md-10 py-2">
                <div class="row">
                    <div class="col-md-10">
                        <%-- <label for="" class="form-day mr-2 float-left">Day 1</label>--%>
                        <asp:RadioButtonList ID="rb_day1" runat="server" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="rb_day1_SelectedIndexChanged" CssClass="radio_style" CellPadding="1" CellSpacing="1">
                            <asp:ListItem Value="1" class="mr-5"> &nbsp ICAR/SAU's</asp:ListItem>
                            <asp:ListItem Value="0"> &nbsp Others</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="rfv_arrangement" runat="server" ErrorMessage="Please Select" Forecolor="Red" CssClass="ValidatorClass" ControlToValidate="rb_day1" ValidationGroup="vgRegister" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                     <div class="col-md-10">
                <asp:TextBox ID="txt_org" runat="server" CssClass="form-control" visible="false"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_org" runat="server" ErrorMessage="Please Enter" Forecolor="Red" CssClass="ValidatorClass" ControlToValidate="txt_org" ValidationGroup="vgRegister" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator><br />
               </div>
                    <div class="col-md-12">
                <asp:DropDownList ID="ddlorg" runat="server" CssClass="form-control" visible="false"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter" Forecolor="Red" CssClass="ValidatorClass" ControlToValidate="ddlorg" ValidationGroup="vgRegister" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator><br />
         
            </div>
          

                </div>
            </div>
            <%--<div class="col-md-2 py-2">
                <label for="txt_mod" class="form-label">Mode of Participtaion</label>
            </div>
            <div class="col-md-10 py-2">
                <asp:RadioButtonList ID="list1" runat="server" RepeatDirection="Horizontal" AutoPostBack="true">
            <asp:ListItem Value="item1" Text="Online"></asp:ListItem>
            <asp:ListItem Value="item2" Text="Offline"></asp:ListItem>
        </asp:RadioButtonList>
      
            </div>--%>
             
            <div class="col-md-2 py-2">
                <label for="txt_designation" class="form-label">Designation</label>
            </div>
            <div class="col-md-10 py-2">
                <asp:TextBox ID="txt_designation" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_designation" runat="server" ErrorMessage="Please Enter" Forecolor="Red" CssClass="ValidatorClass" ControlToValidate="txt_designation" ValidationGroup="vgRegister" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator><br />
            </div>
            <div class="col-md-2 py-2">
                <label for="" class="form-label">Address</label>
            </div>
            <div class="col-md-10 py-2">
                <asp:TextBox ID="txt_address" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_address" runat="server" ErrorMessage="Please Enter"  Forecolor="Red" CssClass="ValidatorClass" ControlToValidate="txt_address" ValidationGroup="vgRegister" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator><br />
            </div>
            <div class="col-md-2 py-2">
               <asp:Label ID="modp" runat="server" Text="Mode of participation" class="form-label" Visible="true"></asp:Label>
               
            </div>
            <div class="col-md-10  py-3">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="rb_day1_SelectedIndexChanged" CssClass="radio_style"  CellPadding="1" CellSpacing="1">
                            <asp:ListItem Value="1" class="mr-5" Selected="True">&nbsp Online</asp:ListItem>
                            <asp:ListItem Value="0" Enabled="true">&nbsp Offline</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Select" Forecolor="Red" CssClass="ValidatorClass" ControlToValidate="RadioButtonList1" ValidationGroup="vgRegister" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>

            <div class="col-md-2 py-2">
                <label for="" CssClass="form-label">Select Nationality</label>
            </div>
            <div class="col-md-10 py-2">
                <asp:DropDownList ID="ddl_nationality" runat="server" CssClass="form-control" AutoPostBack="true"
                            OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged" required>
                     <asp:listitem text="Select" value="0" readonly></asp:listitem>
                    <asp:listitem text="Indian" value="1"></asp:listitem>
                    <asp:listitem text="Other Nationality" value="2"></asp:listitem>
                </asp:DropDownList>
                 <asp:RequiredFieldValidator ID="ddl_requirefiled"  runat="server" ErrorMessage="Please Select" CssClass="ValidatorClass" ForeColor="red" 
                     InitialValue="0" ControlToValidate="ddl_nationality" ValidationGroup="vgRegister" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator><br />
            </div>

           <div class="col-md-2 py-2">
               <asp:Label ID="lbl_indian" runat="server" CssClass="form-label"  style="font-weight: bold; color: #848484; font-family: Montserrat, sans-serif; line-height:65px;" Text="State" Visible="false"></asp:Label>
               <asp:Label ID="lbl_others" runat="server" CssClass="form-label"  style="font-weight: bold; color: #848484; font-family: Montserrat, sans-serif; line-height:26px;" Text="Country" Visible="false"></asp:Label>
            </div>
            <div class="col-md-10">
            <asp:DropDownList ID="ddl_country" runat="server" CssClass="form-control" Visible="false">
                        <asp:ListItem Value="0" readonly>--Please Select Country--</asp:ListItem>
                         <asp:ListItem Value="others">Others</asp:ListItem>
                        <asp:ListItem Value="Afganistan">Afghanistan</asp:ListItem>
                        <asp:ListItem Value="Albania">Albania</asp:ListItem>
                        <asp:ListItem Value="Algeria">Algeria</asp:ListItem>
                        <asp:ListItem Value="American Samoa">American Samoa</asp:ListItem>
                        <asp:ListItem Value="Andorra">Andorra</asp:ListItem>
                        <asp:ListItem Value="Angola">Angola</asp:ListItem>
                        <asp:ListItem Value="Anguilla">Anguilla</asp:ListItem>
                        <asp:ListItem Value="Antigua & Barbuda">Antigua & Barbuda</asp:ListItem>
                        <asp:ListItem Value="Argentina">Argentina</asp:ListItem>
                        <asp:ListItem Value="Armenia">Armenia</asp:ListItem>
                        <asp:ListItem Value="Aruba">Aruba</asp:ListItem>
                        <asp:ListItem Value="Australia">Australia</asp:ListItem>
                        <asp:ListItem Value="Austria">Austria</asp:ListItem>
                        <asp:ListItem Value="Azerbaijan">Azerbaijan</asp:ListItem>
                        <asp:ListItem Value="Bahamas">Bahamas</asp:ListItem>
                        <asp:ListItem Value="Bahrain">Bahrain</asp:ListItem>
                        <asp:ListItem Value="Bangladesh">Bangladesh</asp:ListItem>
                        <asp:ListItem Value="Barbados">Barbados</asp:ListItem>
                        <asp:ListItem Value="Belarus">Belarus</asp:ListItem>
                        <asp:ListItem Value="Belgium">Belgium</asp:ListItem>
                        <asp:ListItem Value="Belize">Belize</asp:ListItem>
                        <asp:ListItem Value="Benin">Benin</asp:ListItem>
                        <asp:ListItem Value="Bermuda">Bermuda</asp:ListItem>
                        <asp:ListItem Value="Bhutan">Bhutan</asp:ListItem>
                        <asp:ListItem Value="Bolivia">Bolivia</asp:ListItem>
                        <asp:ListItem Value="Bonaire">Bonaire</asp:ListItem>
                        <asp:ListItem Value="Bosnia & Herzegovina">Bosnia & Herzegovina</asp:ListItem>
                        <asp:ListItem Value="Botswana">Botswana</asp:ListItem>
                        <asp:ListItem Value="Brazil">Brazil</asp:ListItem>
                        <asp:ListItem Value="British Indian Ocean Ter">British Indian Ocean Ter</asp:ListItem>
                        <asp:ListItem Value="Brunei">Brunei</asp:ListItem>
                        <asp:ListItem Value="Bulgaria">Bulgaria</asp:ListItem>
                        <asp:ListItem Value="Burkina Faso">Burkina Faso</asp:ListItem>
                        <asp:ListItem Value="Burundi">Burundi</asp:ListItem>
                        <asp:ListItem Value="Cambodia">Cambodia</asp:ListItem>
                        <asp:ListItem Value="Cameroon">Cameroon</asp:ListItem>
                        <asp:ListItem Value="Canada">Canada</asp:ListItem>
                        <asp:ListItem Value="Canary Islands">Canary Islands</asp:ListItem>
                        <asp:ListItem Value="Cape Verde">Cape Verde</asp:ListItem>
                        <asp:ListItem Value="Cayman Islands">Cayman Islands</asp:ListItem>
                        <asp:ListItem Value="Central African Republic">Central African Republic</asp:ListItem>
                        <asp:ListItem Value="Chad">Chad</asp:ListItem>
                        <asp:ListItem Value="Channel Islands">Channel Islands</asp:ListItem>
                        <asp:ListItem Value="Chile">Chile</asp:ListItem>
                        <asp:ListItem Value="China">China</asp:ListItem>
                        <asp:ListItem Value="Christmas Island">Christmas Island</asp:ListItem>
                        <asp:ListItem Value="Cocos Island">Cocos Island</asp:ListItem>
                        <asp:ListItem Value="Colombia">Colombia</asp:ListItem>
                        <asp:ListItem Value="Comoros">Comoros</asp:ListItem>
                        <asp:ListItem Value="Congo">Congo</asp:ListItem>
                        <asp:ListItem Value="Cook Islands">Cook Islands</asp:ListItem>
                        <asp:ListItem Value="Costa Rica">Costa Rica</asp:ListItem>
                        <asp:ListItem Value="Cote DIvoire">Cote DIvoire</asp:ListItem>
                        <asp:ListItem Value="Croatia">Croatia</asp:ListItem>
                        <asp:ListItem Value="Cuba">Cuba</asp:ListItem>
                        <asp:ListItem Value="Curaco">Curacao</asp:ListItem>
                        <asp:ListItem Value="Cyprus">Cyprus</asp:ListItem>
                        <asp:ListItem Value="Czech Republic">Czech Republic</asp:ListItem>
                        <asp:ListItem Value="Denmark">Denmark</asp:ListItem>
                        <asp:ListItem Value="Djibouti">Djibouti</asp:ListItem>
                        <asp:ListItem Value="Dominica">Dominica</asp:ListItem>
                        <asp:ListItem Value="Dominican Republic">Dominican Republic</asp:ListItem>
                        <asp:ListItem Value="East Timor">East Timor</asp:ListItem>
                        <asp:ListItem Value="Ecuador">Ecuador</asp:ListItem>
                        <asp:ListItem Value="Egypt">Egypt</asp:ListItem>
                        <asp:ListItem Value="El Salvador">El Salvador</asp:ListItem>
                        <asp:ListItem Value="Equatorial Guinea">Equatorial Guinea</asp:ListItem>
                        <asp:ListItem Value="Eritrea">Eritrea</asp:ListItem>
                        <asp:ListItem Value="Estonia">Estonia</asp:ListItem>
                        <asp:ListItem Value="Ethiopia">Ethiopia</asp:ListItem>
                        <asp:ListItem Value="Falkland Islands">Falkland Islands</asp:ListItem>
                        <asp:ListItem Value="Faroe Islands">Faroe Islands</asp:ListItem>
                        <asp:ListItem Value="Fiji">Fiji</asp:ListItem>
                        <asp:ListItem Value="Finland">Finland</asp:ListItem>
                        <asp:ListItem Value="France">France</asp:ListItem>
                        <asp:ListItem Value="French Guiana">French Guiana</asp:ListItem>
                        <asp:ListItem Value="French Polynesia">French Polynesia</asp:ListItem>
                        <asp:ListItem Value="French Southern Ter">French Southern Ter</asp:ListItem>
                        <asp:ListItem Value="Gabon">Gabon</asp:ListItem>
                        <asp:ListItem Value="Gambia">Gambia</asp:ListItem>
                        <asp:ListItem Value="Georgia">Georgia</asp:ListItem>
                        <asp:ListItem Value="Germany">Germany</asp:ListItem>
                        <asp:ListItem Value="Ghana">Ghana</asp:ListItem>
                        <asp:ListItem Value="Gibraltar">Gibraltar</asp:ListItem>
                        <asp:ListItem Value="Great Britain">Great Britain</asp:ListItem>
                        <asp:ListItem Value="Greece">Greece</asp:ListItem>
                        <asp:ListItem Value="Greenland">Greenland</asp:ListItem>
                        <asp:ListItem Value="Grenada">Grenada</asp:ListItem>
                        <asp:ListItem Value="Guadeloupe">Guadeloupe</asp:ListItem>
                        <asp:ListItem Value="Guam">Guam</asp:ListItem>
                        <asp:ListItem Value="Guatemala">Guatemala</asp:ListItem>
                        <asp:ListItem Value="Guinea">Guinea</asp:ListItem>
                        <asp:ListItem Value="Guyana">Guyana</asp:ListItem>
                        <asp:ListItem Value="Haiti">Haiti</asp:ListItem>
                        <asp:ListItem Value="Hawaii">Hawaii</asp:ListItem>
                        <asp:ListItem Value="Honduras">Honduras</asp:ListItem>
                        <asp:ListItem Value="Hong Kong">Hong Kong</asp:ListItem>
                        <asp:ListItem Value="Hungary">Hungary</asp:ListItem>
                        <asp:ListItem Value="Iceland">Iceland</asp:ListItem>
                        <asp:ListItem Value="Indonesia">Indonesia</asp:ListItem>
                        <asp:ListItem Value="India" Selected="True">India</asp:ListItem>
                        <asp:ListItem Value="Iran">Iran</asp:ListItem>
                        <asp:ListItem Value="Iraq">Iraq</asp:ListItem>
                        <asp:ListItem Value="Ireland">Ireland</asp:ListItem>
                        <asp:ListItem Value="Isle of Man">Isle of Man</asp:ListItem>
                        <asp:ListItem Value="Israel">Israel</asp:ListItem>
                        <asp:ListItem Value="Italy">Italy</asp:ListItem>
                        <asp:ListItem Value="Jamaica">Jamaica</asp:ListItem>
                        <asp:ListItem Value="Japan">Japan</asp:ListItem>
                        <asp:ListItem Value="Jordan">Jordan</asp:ListItem>
                        <asp:ListItem Value="Kazakhstan">Kazakhstan</asp:ListItem>
                        <asp:ListItem Value="Kenya">Kenya</asp:ListItem>
                        <asp:ListItem Value="Kiribati">Kiribati</asp:ListItem>
                        <asp:ListItem Value="Korea North">Korea North</asp:ListItem>
                        <asp:ListItem Value="Korea Sout">Korea South</asp:ListItem>
                        <asp:ListItem Value="Kuwait">Kuwait</asp:ListItem>
                        <asp:ListItem Value="Kyrgyzstan">Kyrgyzstan</asp:ListItem>
                        <asp:ListItem Value="Laos">Laos</asp:ListItem>
                        <asp:ListItem Value="Latvia">Latvia</asp:ListItem>
                        <asp:ListItem Value="Lebanon">Lebanon</asp:ListItem>
                        <asp:ListItem Value="Lesotho">Lesotho</asp:ListItem>
                        <asp:ListItem Value="Liberia">Liberia</asp:ListItem>
                        <asp:ListItem Value="Libya">Libya</asp:ListItem>
                        <asp:ListItem Value="Liechtenstein">Liechtenstein</asp:ListItem>
                        <asp:ListItem Value="Lithuania">Lithuania</asp:ListItem>
                        <asp:ListItem Value="Luxembourg">Luxembourg</asp:ListItem>
                        <asp:ListItem Value="Macau">Macau</asp:ListItem>
                        <asp:ListItem Value="Macedonia">Macedonia</asp:ListItem>
                        <asp:ListItem Value="Madagascar">Madagascar</asp:ListItem>
                        <asp:ListItem Value="Malaysia">Malaysia</asp:ListItem>
                        <asp:ListItem Value="Malawi">Malawi</asp:ListItem>
                        <asp:ListItem Value="Maldives">Maldives</asp:ListItem>
                        <asp:ListItem Value="Mali">Mali</asp:ListItem>
                        <asp:ListItem Value="Malta">Malta</asp:ListItem>
                        <asp:ListItem Value="Marshall Islands">Marshall Islands</asp:ListItem>
                        <asp:ListItem Value="Martinique">Martinique</asp:ListItem>
                        <asp:ListItem Value="Mauritania">Mauritania</asp:ListItem>
                        <asp:ListItem Value="Mauritius">Mauritius</asp:ListItem>
                        <asp:ListItem Value="Mayotte">Mayotte</asp:ListItem>
                        <asp:ListItem Value="Mexico">Mexico</asp:ListItem>
                        <asp:ListItem Value="Midway Islands">Midway Islands</asp:ListItem>
                        <asp:ListItem Value="Moldova">Moldova</asp:ListItem>
                        <asp:ListItem Value="Monaco">Monaco</asp:ListItem>
                        <asp:ListItem Value="Mongolia">Mongolia</asp:ListItem>
                        <asp:ListItem Value="Montserrat">Montserrat</asp:ListItem>
                        <asp:ListItem Value="Morocco">Morocco</asp:ListItem>
                        <asp:ListItem Value="Mozambique">Mozambique</asp:ListItem>
                        <asp:ListItem Value="Myanmar">Myanmar</asp:ListItem>
                        <asp:ListItem Value="Nambia">Nambia</asp:ListItem>
                        <asp:ListItem Value="Nauru">Nauru</asp:ListItem>
                        <asp:ListItem Value="Nepal">Nepal</asp:ListItem>
                        <asp:ListItem Value="Netherland Antilles">Netherland Antilles</asp:ListItem>
                        <asp:ListItem Value="Netherlands">Netherlands (Holland, Europe)</asp:ListItem>
                        <asp:ListItem Value="Nevis">Nevis</asp:ListItem>
                        <asp:ListItem Value="New Caledonia">New Caledonia</asp:ListItem>
                        <asp:ListItem Value="New Zealand">New Zealand</asp:ListItem>
                        <asp:ListItem Value="Nicaragua">Nicaragua</asp:ListItem>
                        <asp:ListItem Value="Niger">Niger</asp:ListItem>
                        <asp:ListItem Value="Nigeria">Nigeria</asp:ListItem>
                        <asp:ListItem Value="Niue">Niue</asp:ListItem>
                        <asp:ListItem Value="Norfolk Island">Norfolk Island</asp:ListItem>
                        <asp:ListItem Value="Norway">Norway</asp:ListItem>
                        <asp:ListItem Value="Oman">Oman</asp:ListItem>
                        <asp:ListItem Value="Pakistan">Pakistan</asp:ListItem>
                        <asp:ListItem Value="Palau Island">Palau Island</asp:ListItem>
                        <asp:ListItem Value="Palestine">Palestine</asp:ListItem>
                        <asp:ListItem Value="Panama">Panama</asp:ListItem>
                        <asp:ListItem Value="Papua New Guinea">Papua New Guinea</asp:ListItem>
                        <asp:ListItem Value="Paraguay">Paraguay</asp:ListItem>
                        <asp:ListItem Value="Peru">Peru</asp:ListItem>
                        <asp:ListItem Value="Phillipines">Philippines</asp:ListItem>
                        <asp:ListItem Value="Pitcairn Island">Pitcairn Island</asp:ListItem>
                        <asp:ListItem Value="Poland">Poland</asp:ListItem>
                        <asp:ListItem Value="Portugal">Portugal</asp:ListItem>
                        <asp:ListItem Value="Puerto Rico">Puerto Rico</asp:ListItem>
                        <asp:ListItem Value="Qatar">Qatar</asp:ListItem>
                        <asp:ListItem Value="Republic of Montenegro">Republic of Montenegro</asp:ListItem>
                        <asp:ListItem Value="Republic of Serbia">Republic of Serbia</asp:ListItem>
                        <asp:ListItem Value="Reunion">Reunion</asp:ListItem>
                        <asp:ListItem Value="Romania">Romania</asp:ListItem>
                        <asp:ListItem Value="Russia">Russia</asp:ListItem>
                        <asp:ListItem Value="Rwanda">Rwanda</asp:ListItem>
                        <asp:ListItem Value="St Barthelemy">St Barthelemy</asp:ListItem>
                        <asp:ListItem Value="St Eustatius">St Eustatius</asp:ListItem>
                        <asp:ListItem Value="St Helena">St Helena</asp:ListItem>
                        <asp:ListItem Value="St Kitts-Nevis">St Kitts-Nevis</asp:ListItem>
                        <asp:ListItem Value="St Lucia">St Lucia</asp:ListItem>
                        <asp:ListItem Value="St Maarten">St Maarten</asp:ListItem>
                        <asp:ListItem Value="St Pierre & Miquelon">St Pierre & Miquelon</asp:ListItem>
                        <asp:ListItem Value="St Vincent & Grenadines">St Vincent & Grenadines</asp:ListItem>
                        <asp:ListItem Value="Saipan">Saipan</asp:ListItem>
                        <asp:ListItem Value="Samoa">Samoa</asp:ListItem>
                        <asp:ListItem Value="Samoa American">Samoa American</asp:ListItem>
                        <asp:ListItem Value="San Marino">San Marino</asp:ListItem>
                        <asp:ListItem Value="Sao Tome & Principe">Sao Tome & Principe</asp:ListItem>
                        <asp:ListItem Value="Saudi Arabia">Saudi Arabia</asp:ListItem>
                        <asp:ListItem Value="Senegal">Senegal</asp:ListItem>
                        <asp:ListItem Value="Seychelles">Seychelles</asp:ListItem>
                        <asp:ListItem Value="Sierra Leone">Sierra Leone</asp:ListItem>
                        <asp:ListItem Value="Singapore">Singapore</asp:ListItem>
                        <asp:ListItem Value="Slovakia">Slovakia</asp:ListItem>
                        <asp:ListItem Value="Slovenia">Slovenia</asp:ListItem>
                        <asp:ListItem Value="Solomon Islands">Solomon Islands</asp:ListItem>
                        <asp:ListItem Value="Somalia">Somalia</asp:ListItem>
                        <asp:ListItem Value="South Africa">South Africa</asp:ListItem>
                        <asp:ListItem Value="Spain">Spain</asp:ListItem>
                        <asp:ListItem Value="Sri Lanka">Sri Lanka</asp:ListItem>
                        <asp:ListItem Value="Sudan">Sudan</asp:ListItem>
                        <asp:ListItem Value="Suriname">Suriname</asp:ListItem>
                        <asp:ListItem Value="Swaziland">Swaziland</asp:ListItem>
                        <asp:ListItem Value="Sweden">Sweden</asp:ListItem>
                        <asp:ListItem Value="Switzerland">Switzerland</asp:ListItem>
                        <asp:ListItem Value="Syria">Syria</asp:ListItem>
                        <asp:ListItem Value="Tahiti">Tahiti</asp:ListItem>
                        <asp:ListItem Value="Taiwan">Taiwan</asp:ListItem>
                        <asp:ListItem Value="Tajikistan">Tajikistan</asp:ListItem>
                        <asp:ListItem Value="Tanzania">Tanzania</asp:ListItem>
                        <asp:ListItem Value="Thailand">Thailand</asp:ListItem>
                        <asp:ListItem Value="Togo">Togo</asp:ListItem>
                        <asp:ListItem Value="Tokelau">Tokelau</asp:ListItem>
                        <asp:ListItem Value="Tonga">Tonga</asp:ListItem>
                        <asp:ListItem Value="Trinidad & Tobago">Trinidad & Tobago</asp:ListItem>
                        <asp:ListItem Value="Tunisia">Tunisia</asp:ListItem>
                        <asp:ListItem Value="Turkey">Turkey</asp:ListItem>
                        <asp:ListItem Value="Turkmenistan">Turkmenistan</asp:ListItem>
                        <asp:ListItem Value="Turks & Caicos Is">Turks & Caicos Is</asp:ListItem>
                        <asp:ListItem Value="Tuvalu">Tuvalu</asp:ListItem>
                        <asp:ListItem Value="Uganda">Uganda</asp:ListItem>
                        <asp:ListItem Value="United Kingdom">United Kingdom</asp:ListItem>
                        <asp:ListItem Value="Ukraine">Ukraine</asp:ListItem>
                        <asp:ListItem Value="United Arab Erimates">United Arab Emirates</asp:ListItem>
                        <asp:ListItem Value="United States of America">United States of America</asp:ListItem>
                        <asp:ListItem Value="Uraguay">Uruguay</asp:ListItem>
                        <asp:ListItem Value="Uzbekistan">Uzbekistan</asp:ListItem>
                        <asp:ListItem Value="Vanuatu">Vanuatu</asp:ListItem>
                        <asp:ListItem Value="Vatican City State">Vatican City State</asp:ListItem>
                        <asp:ListItem Value="Venezuela">Venezuela</asp:ListItem>
                        <asp:ListItem Value="Vietnam">Vietnam</asp:ListItem>
                        <asp:ListItem Value="Virgin Islands (Brit)">Virgin Islands (Brit)</asp:ListItem>
                        <asp:ListItem Value="Virgin Islands (USA)">Virgin Islands (USA)</asp:ListItem>
                        <asp:ListItem Value="Wake Island">Wake Island</asp:ListItem>
                        <asp:ListItem Value="Wallis & Futana Is">Wallis & Futana Is</asp:ListItem>
                        <asp:ListItem Value="Yemen">Yemen</asp:ListItem>
                        <asp:ListItem Value="Zaire">Zaire</asp:ListItem>
                        <asp:ListItem Value="Zambia">Zambia</asp:ListItem>
                        <asp:ListItem Value="Zimbabwe">Zimbabwe</asp:ListItem>

                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfv_counntry" runat="server" ErrorMessage="Please Select" CssClass="ValidatorClass" InitialValue="0" ControlToValidate="ddl_country" ValidationGroup="vgRegister" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator><br />
     


                <asp:DropDownList ID="ddl_indiastates" runat="server" CssClass="form-control"  Visible="false" >
                        <asp:ListItem Value="0" readonly>--Please Select States--</asp:ListItem>
                        <asp:ListItem Value="Andhra Pradesh">Andhra Pradesh</asp:ListItem>
                        <asp:ListItem Value="Arunachal Pradesh">Arunachal Pradesh</asp:ListItem>
                        <asp:ListItem Value="Assam">Assam</asp:ListItem>
                        <asp:ListItem Value="Bihar">Bihar</asp:ListItem>
                        <asp:ListItem Value="Chhattisgarh">Chhattisgarh</asp:ListItem>
                        <asp:ListItem Value="Goa">Goa</asp:ListItem>
                        <asp:ListItem Value="Gujarat">Gujarat</asp:ListItem>
                        <asp:ListItem Value="Haryana">Haryana</asp:ListItem>
                        <asp:ListItem Value="Himachal Pradesh">Himachal Pradesh</asp:ListItem>
                        <asp:ListItem Value="Jharkhand">Jharkhand</asp:ListItem>
                        <asp:ListItem Value="Karnataka">Karnataka</asp:ListItem>
                        <asp:ListItem Value="Kerala">Kerala</asp:ListItem>
                        <asp:ListItem Value="Madhya Pradesh">Madhya Pradesh</asp:ListItem>
                        <asp:ListItem Value="Maharashtra">Maharashtra</asp:ListItem>
                        <asp:ListItem Value="Manipur">Manipur</asp:ListItem>
                        <asp:ListItem Value="Meghalaya">Meghalaya</asp:ListItem>
                        <asp:ListItem Value="Mizoram">Mizoram</asp:ListItem>
                        <asp:ListItem Value="Nagaland">Nagaland</asp:ListItem>
                        <asp:ListItem Value="Odisha">Odisha</asp:ListItem>
                        <asp:ListItem Value="Punjab">Punjab</asp:ListItem>
                        <asp:ListItem Value="Rajasthan">Rajasthan</asp:ListItem>
                        <asp:ListItem Value="Sikkim">Sikkim</asp:ListItem>
                        <asp:ListItem Value="Tamil Nadu">Tamil Nadu</asp:ListItem>
                        <asp:ListItem Value="Telangana">Telangana</asp:ListItem>
                        <asp:ListItem Value="Tripura">Tripura</asp:ListItem>
                        <asp:ListItem Value="Uttar Pradesh">Uttar Pradesh</asp:ListItem>
                        <asp:ListItem Value="Uttarakhand">Uttarakhand</asp:ListItem>
                        <asp:ListItem Value="West Bengal">West Bengal</asp:ListItem>
                        <asp:ListItem Value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</asp:ListItem>
                        <asp:ListItem Value="Chandigarh">Chandigarh</asp:ListItem>
                        <asp:ListItem Value="Dadra & Nagar Haveli and Daman & Diu 	">Dadra & Nagar Haveli and Daman & Diu 	</asp:ListItem>
                        <asp:ListItem Value="Delhi">Delhi</asp:ListItem>
                        <asp:ListItem Value="Jammu and Kashmir">Jammu and Kashmir</asp:ListItem>
                        <asp:ListItem Value="Lakshadweep">Lakshadweep</asp:ListItem>
                        <asp:ListItem Value="Puducherry">Puducherry</asp:ListItem>
                        <asp:ListItem Value="Ladakh">Ladakh</asp:ListItem>
                       

                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfv_state" runat="server" ErrorMessage="Please Select" Forecolor="Red" CssClass="ValidatorClass" InitialValue="0" ControlToValidate="ddl_indiastates" ValidationGroup="vgRegister" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator><br />
     
                 
            </div>



                <div class="col-md-2 py-2">
                
               <asp:Label ID="lbl_other_state" runat="server" Cssclass="form-label" Text="State" style="font-weight: bold; color: #848484; font-family: Montserrat, sans-serif;" Visible="false"></asp:Label>
            </div>
            <div class="col-md-10">
                <asp:TextBox ID="txt_other_state" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_otherstate" runat="server" ErrorMessage="Please Select" Forecolor="Red" CssClass="ValidatorClass" ControlToValidate="txt_other_state" ValidationGroup="vgRegister" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator><br />
            </div>


           <div class="col-md-2 py-2">
                
               <asp:Label ID="lbl_city" runat="server" Text="City" class="form-label" style="font-weight: bold; color: #848484; font-family: Montserrat, sans-serif;" Visible="false"></asp:Label>
            </div>
            <div class="col-md-10">
                <asp:TextBox ID="txt_city" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_city" runat="server" ErrorMessage="Please Select" Forecolor="Red" CssClass="ValidatorClass" ControlToValidate="txt_city" ValidationGroup="vgRegister" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator><br />
            </div>
            <div class="col-md-2 py-2">
               <asp:Label ID="lbl_otherct" runat="server" Text="City" class="form-label" style="font-weight: bold; color: #848484; font-family: Montserrat, sans-serif;" Visible="false"></asp:Label>
            </div>
            <div class="col-md-10">
                <asp:TextBox ID="txt_otherct"  runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_otherrct" runat="server" ErrorMessage="Please Select" Forecolor="Red" CssClass="ValidatorClass" ControlToValidate="txt_otherct" ValidationGroup="vgRegister" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator><br />
            </div>
            <div class="col-md-2 py-2">
               
                <asp:Label ID="lbl_pin" runat="server" Text="Zip Code/Pin Code" class="form-label" style="font-weight: bold; color: #848484; font-family: Montserrat, sans-serif;" Visible="false"></asp:Label>
            </div>
            <div class="col-md-10">
                <asp:TextBox ID="txt_zip" TextMode="Number" runat="server" CssClass="form-control" Visible="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_pin" runat="server" ErrorMessage="Please Select" Forecolor="Red" CssClass="ValidatorClass" ControlToValidate="txt_zip" ValidationGroup="vgRegister" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator><br />
            </div>
            <div class="col-md-12 pt-1 text-center">
                <asp:Button ID="btn_save" runat="server" CssClass="btn btn-success" Style="font-weight: bold;" Text="Register" ValidationGroup="vgRegister" OnClick="btn_save_Click" />
                <asp:Button ID="btn_clear" runat="server" CssClass="btn btn-danger" Style="font-weight: bold;" type="reset" Text="Reset" OnClick="btn_clear_Click"  />
            </div>
</div>
        </div>
                </div>



            </div>
        </div>
    </div>

    <%--<div class="modal fade" id="confirm-submit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                Confirm Submit
            </div>
            <div class="modal-body">
                Are you sure you want to submit the following details?

                <!-- We display the details entered by the user here -->
                <table class="table">
                    <tr>
                        <th>Last Name</th>
                        <td id="lname"></td>
                    </tr>
                    <tr>
                        <th>First Name</th>
                        <td id="fname"></td>
                    </tr>
                </table>

            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                <a href="#" id="submit" class="btn btn-success success">Submit</a>
            </div>
        </div>
    </div>
</div>--%>
    <%--<script>
        $('#submitBtn').click(function () {
            /* when the button in the form, display the entered values in the modal */
            $('#lname').text($('#lastname').val());
            $('#fname').text($('#firstname').val());
        });

        $('#submit').click(function () {
            /* when the submit button in the modal is clicked, submit the form */
            alert('submitting');
            $('#formfield').submit();
        });
    </script>--%>
     <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  </asp:Content>
 

