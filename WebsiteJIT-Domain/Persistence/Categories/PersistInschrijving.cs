using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebsiteJIT_Domain.Business.Classes;

namespace WebsiteJIT_Domain.Persistence.Categories
{
    public class PersistInschrijving
    {
        //Get all inschrijvingen from database. 
        public async Task<List<Inschrijving>> getAllInschrijvingen(String connectionString)
        {
            List<Inschrijving> inschrijvingen = new List<Inschrijving>();

            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                try
                {
                    await conn.OpenAsync();
                    string query = "SELECT * FROM inschrijving";

                    using (MySqlCommand cmd = new MySqlCommand(query, conn))
                    using (DbDataReader reader = await cmd.ExecuteReaderAsync())
                    {
                        while (await reader.ReadAsync())
                        {
                            Inschrijving inschrijving = new Inschrijving
                            {
                                _id = reader.GetInt32(0),
                                _datum = reader.GetDateTime(1),
                                _voorbereidingid = reader.GetInt32(2),
                                _aanmeldid = reader.GetInt32(3)
                            };

                            inschrijvingen.Add(inschrijving);
                        }
                    }

                    await conn.CloseAsync();
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Er is een fout opgetreden: {ex.Message}");
                }
            }

            return inschrijvingen;
        }

        //Add a new inschrijving to the database.
        public void addInschrijving(Inschrijving inschrijving, String connectionString)
        {
            //using (MySqlConnection conn = new MySqlConnection(connectionString))
            //{
            //    try
            //    {
            //        conn.Open();
            //        string query = "INSERT INTO Inschrijving (Datum, Voorbereiding_ID, Aanmeld_ID) VALUES (@datum, @voorbereidingid, @aanmeldid)";

            //        using (MySqlCommand cmd = new MySqlCommand(query, conn))
            //        {
            //            cmd.Parameters.AddWithValue("@datum", inschrijving._datum);
            //            cmd.Parameters.AddWithValue("@voorbereidingid", inschrijving._voorbereidingid);
            //            cmd.Parameters.AddWithValue("@aanmeldid", inschrijving._aanmeldid);

            //            cmd.ExecuteNonQuery();
            //        }
            //    }
            //    catch (Exception ex)
            //    {
            //        Console.WriteLine($"Er is een fout opgetreden: {ex.Message}");
            //    }

            MySqlConnection conn = new MySqlConnection(connectionString);
            MySqlCommand cmd = new MySqlCommand("INSERT INTO inschrijving (Datum, Voorbereiding_ID, Aanmeld_ID) VALUES (@datum, @voorbereidingid, @aanmeldid)", conn);

            cmd.Parameters.AddWithValue("@datum", inschrijving._datum);
            cmd.Parameters.AddWithValue("@voorbereidingid", inschrijving._voorbereidingid);
            cmd.Parameters.AddWithValue("@aanmeldid", inschrijving._aanmeldid);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        //alter a inschrijving in the database.
        public void AlterInschrijving(Inschrijving inschrijving, string connectionString)
        {
            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                try
                {
                    conn.Open();
                    string query = "UPDATE inschrijving SET Datum = @datum, Voorbereiding_ID = @voorbereidingid, Aanmeld_ID = @aanmeldid WHERE idInschrijving = @id";

                    using (MySqlCommand cmd = new MySqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@datum", inschrijving._datum);
                        cmd.Parameters.AddWithValue("@voorbereidingid", inschrijving._voorbereidingid);
                        cmd.Parameters.AddWithValue("@aanmeldid", inschrijving._aanmeldid);
                        cmd.Parameters.AddWithValue("@id", inschrijving._id);

                        cmd.ExecuteNonQuery();
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Er is een fout opgetreden: {ex.Message}");
                }
            }
        }


        //Delete a inschrijving from the database.
        public void deleteInschrijving(int id, String connectionString)
        {
            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                try
                {
                    conn.Open();
                    string query = "DELETE FROM inschrijving WHERE idInschrijving = @id";

                    using (MySqlCommand cmd = new MySqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@id", id);

                        cmd.ExecuteNonQuery();
                    }

                    conn.Close();

                    return ;
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Er is een fout opgetreden: {ex.Message}");
                }
            }
        }
    }
}
