using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AspWIthAdo
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = null;
            try
            {
                con = new SqlConnection("data source=.; database=Employees; integrated security=SSPI");
                string insertQuery = "insert into useres(name, Email, ContactNo) values('" + TextBox1.Text + "'"+"," + "'" + TextBox2.Text + "'"+  ","+ "'" + TextBox3.Text + "')";
                SqlCommand cd = new SqlCommand(insertQuery, con);

                con.Open();
                cd.ExecuteNonQuery();
                Response.Write("Your Details has been submited!!");


                string retrivrQuery = "select top 1 * from useres";

                SqlCommand retrive = new SqlCommand(retrivrQuery, con);
                SqlDataReader red = retrive.ExecuteReader();
                red.Read();

                lblNameData.Text = "Name :" + red["name"].ToString();
                lblEmailData.Text = "Email :" + red["Email"].ToString();
                lblContactData.Text = "Contact :" + red["ContactNo"].ToString();

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            finally
            {
                con.Close();
            }
        }
    }
}