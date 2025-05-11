using System;
using System.Collections.Generic;
using System.Linq;

public partial class UserList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var usersWithIndex = UserData.Users.Select((user, index) => new
            {
                Index = index + 1,
                user.FirstName,
                user.LastName,
                user.Email,
                user.Gender,
                user.Role
            }).ToList();

            GridView1.DataSource = usersWithIndex;
            GridView1.DataBind();
        }
    }
}
