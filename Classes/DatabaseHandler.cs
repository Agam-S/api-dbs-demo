using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace API_DB_connection_demo
{
    public static class DatabaseHandler
    {

    static string GetConnectionString() {
    try{
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        builder.DataSource = "prg-database.c7ksa2nabbvq.us-east-1.rds.amazonaws.com";
        builder.UserID = "admin";
        builder.Password = "12345678";
        builder.InitialCatalog = "APIDemo";
        return builder.ConnectionString;
    }   
    catch (Exception e){
        throw new Exception("Error in GetConnectionString() :" + e.Message);
    }    
}
 
public static List<OrganisationBrief> GetOrganisationBriefs(){

     List<OrganisationBrief> briefs = new List<OrganisationBrief>();
     using (SqlConnection conn = new SqlConnection(GetConnectionString()))
     {
          conn.Open();
          using (SqlCommand command = new SqlCommand("SELECT * FROM ORGANISATION", conn))
          {
               using (SqlDataReader reader = command.ExecuteReader())
               {
                   while (reader.Read())
                   { 
                         briefs.Add(new OrganisationBrief(){OrgName = reader.GetString(0),
                         Notes = reader.GetString(1)});
                  }
             }
        }
        conn.Close();
        }
        return briefs;
        
        
        }

    public static List<Contact> GetContacts(){

     List<Contact> contacts = new List<Contact>();
     using (SqlConnection conn = new SqlConnection(GetConnectionString()))
     {
          conn.Open();
          using (SqlCommand command = new SqlCommand("SELECT * FROM CONTACT", conn))
          {
               using (SqlDataReader reader = command.ExecuteReader())
               {
                   while (reader.Read())
                   { 
                        contacts.Add(new Contact(){ContactId = reader.GetInt32(0),
                        FirstName = reader.GetString(1), Surname = reader.GetString(2),
                        Address = reader.GetString(3), Suburb = reader.GetString(4), 
                        State = reader.GetString(5), Postcode = reader.GetString(6),
                        Mobile = reader.GetString(7), HomePhone = reader.GetString(8),
                        Email = reader.GetString(9), OrgName = reader.GetString(10)});
                  }
             }
        }
        conn.Close();
        }
        return contacts;
        
        
        }
    }

}