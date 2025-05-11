using System;

public partial class Register : System.Web.UI.Page
{
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        if (txtPassword.Text != txtConfirmPassword.Text)
        {
            lblMessage.Text = "Passwords do not match!";
            return;
        }

        string gender = rbMale.Checked ? "Male" : (rbFemale.Checked ? "Female" : "");

        if (string.IsNullOrWhiteSpace(txtFirstName.Text) ||
            string.IsNullOrWhiteSpace(txtLastName.Text) ||
            string.IsNullOrWhiteSpace(txtEmail.Text) ||
            string.IsNullOrWhiteSpace(txtPassword.Text) ||
            string.IsNullOrWhiteSpace(gender) ||
            ddlRole.SelectedIndex == 0)
        {
            lblMessage.Text = "Please fill out all fields correctly.";
            return;
        }

        User newUser = new User
        {
            FirstName = txtFirstName.Text,
            LastName = txtLastName.Text,
            Email = txtEmail.Text,
            Password = txtPassword.Text,
            Gender = gender,
            Role = ddlRole.SelectedValue
        };

        UserData.Users.Add(newUser);
        Response.Redirect("UserList.aspx");
    }
}
