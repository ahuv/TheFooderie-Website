using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Contribute : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

      string connString = ConfigurationManager.ConnectionStrings["FooderieDBConnectionString1"].ConnectionString;
      SqlConnection db = new SqlConnection(connString);

      string insertStr = "insert into RecipeIdeas(Descrip, FoodType, AllergyType, Username) values('"
          + RecipeDesc.Text + "','"
          + FoodTypeList.SelectedValue + "','"
          + AllergyList.SelectedValue + "','"
          + Name.Text + "')";
      SqlCommand insert = new SqlCommand(insertStr, db);
      db.Open();
      insert.ExecuteNonQuery();
      db.Close();

      Label1.Visible = false;
      Label2.Visible = false;
      Label3.Visible = false;
      Label4.Visible = false;
      Label5.Visible = false;
      Label6.Visible = false;
      Name.Visible = false;
      RecipeDesc.Visible = false;
      AllergyList.Visible = false;
      FoodTypeList.Visible = false;
      Button1.Visible = false;
      
      ResponseLabel.Text = Name.Text + ", Thanks for contributing! <br> Your suggestion was received and is being reviewed." +
                      "You suggested \n" 
                      + RecipeDesc.Text +
                      "\n and would like to see foods in the category of " 
                      + FoodTypeList.Text +
                      " and/or with regard for a " 
                      + AllergyList.Text + 
                      " allergy.";
      HyperLink2.Visible = true;


      
                      

    
    }
}