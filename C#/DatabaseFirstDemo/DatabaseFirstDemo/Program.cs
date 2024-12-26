using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseFirstDemo
{
    class Program
    {
        static void Main(string[] args)
        {
            var context = new AbbyEntities();
            var category = new Category
            {
                Name = "Name",
                DisplayOrder = 2
            };
            //context.Categories.Add(category);
            //context.SaveChanges();
            //Console.WriteLine(category.Id);
            //Console.WriteLine( InsertRecord());
            newTable newtable = new newTable()
            {
                name = "Name"
            };
            context.newTables.Add(newtable);
            context.SaveChanges();
            Console.WriteLine(newtable.myno);
        }
        static public int InsertRecord()
        {
            AbbyEntities context= new AbbyEntities();
            try
            {
                SqlCommand sqlCommand = new SqlCommand("INSERT INTO Category (Name, , DisplayOrder) VALUES (@p0, @p1);");
                sqlCommand.Parameters.Add("@p0", System.Data.SqlDbType.NVarChar);
                sqlCommand.Parameters.Add("@p1", System.Data.SqlDbType.Int);
                sqlCommand.Parameters["@p0"].Value = "Scalar";
                sqlCommand.Parameters["@p1"].Value = 8;

                return (Int32)sqlCommand.ExecuteScalar();
                /*StringBuilder sbSql = new StringBuilder();
                sbSql.Append("INSERT INTO ");
                sbSql.Append("Category ( ");
                sbSql.Append("Name");
                sbSql.Append(", DisplayOrder) output INSERTED.ID ");
                sbSql.Append("VALUES (");
                sbSql.Append("@p0, ");
                sbSql.Append("@p1);");
                SqlParameter p0 = new SqlParameter("@p0", System.Data.SqlDbType.NVarChar);
                SqlParameter p1 = new SqlParameter("@p1", System.Data.SqlDbType.Int);
                p0.Value = "Zachary";
                p1.Value = 1;
                Console.WriteLine(sbSql.ToString());
                return context.Database.ExecuteSqlCommand
               (sbSql.ToString()
                       , p0, p1);
                */
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return -1;
            }


        }
    }
}
