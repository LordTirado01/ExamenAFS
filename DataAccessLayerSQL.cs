using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Net.Mail;
using System.IO;

namespace Access
{
    public class DataAccessLayerSQL
    {
        public static DataSet ExecuteNonQuery(string DataBaseName, string StoredProcedureName, params SqlParameter[] parameters)
        {
            DataSet ds = new DataSet();

            using (SqlConnection cnn = new SqlConnection(DataBaseName))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    try
                    {
                        try
                        {
                            cnn.Open();
                        }
                        catch (Exception ex)
                        {
                        }

                        cmd.Connection = cnn;
                        cmd.CommandText = StoredProcedureName;
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandTimeout = cnn.ConnectionTimeout;

                        SqlParameter sqlParameter;

                        for (int i = 0; i < parameters.Length; i++)
                        {
                            sqlParameter = cmd.Parameters.AddWithValue(parameters[i].ParameterName.ToString(), parameters[i].Value.GetType());
                            sqlParameter.Value = parameters[i].Value;
                        }

                        cmd.ExecuteNonQuery();
                        cmd.Parameters.Clear();
                    }
                    catch (Exception ex)
                        {

                    }
                    finally
                    {
                        if (cnn.State == ConnectionState.Open) cnn.Close();
                    }
                }
            }

            return ds;
        }

        public static DataSet ExecuteQuery(string DataBaseName, string StoredProcedure, params SqlParameter[] parameters)
        {
            DataSet ds = new DataSet();

            using (SqlConnection cnn = new SqlConnection(DataBaseName))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    try
                    {
                        cnn.Open();
                    }
                    catch (Exception ex)
                    {
                        throw;
                    }

                    cmd.Connection = cnn;
                    cmd.CommandText = StoredProcedure;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandTimeout = 0;

                    SqlParameter sqlParameter;

                    for (int i = 0; i < parameters.Length; i++)
                    {
                        sqlParameter = cmd.Parameters.AddWithValue(parameters[i].ParameterName.ToString(), parameters[i].Value.GetType());
                        sqlParameter.Value = parameters[i].Value;
                    }

                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(ds);
                }
            }

            return ds;
        }
    }
}
