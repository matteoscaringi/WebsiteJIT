using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using WebsiteJIT_Domain.Business.Classes;

namespace WebsiteJIT_Domain.Persistence.Categories
{
    public class PersistAanmelden
    {
        //Get all users from the database
        public async Task<List<Aanmelden>> getAllGebruikers(String connectionString)
        {
            List<Aanmelden> gebruikers = new List<Aanmelden>();

            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                try
                {
                    await conn.OpenAsync();
                    string query = "SELECT * FROM aanmelden";

                    using (MySqlCommand cmd = new MySqlCommand(query, conn))
                    using (DbDataReader reader = await cmd.ExecuteReaderAsync())
                    {
                        while (await reader.ReadAsync())
                        {
                            Aanmelden gebruiker = new Aanmelden
                            {
                                _id = reader.GetInt32(0),
                                _naam = reader.GetString(1),
                                _telnr = reader.GetString(2),
                                _adres = reader.GetString(3),
                                _email = reader.GetString(4),
                                _wachtwoord = reader.GetString(5),
                                _rol = reader.GetString(6)
                            };

                            gebruikers.Add(gebruiker);
                        }
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Er is een fout opgetreden: {ex.Message}");
                }
            }

            return gebruikers;
        }

        //Add a user to the database
        public void addGebruiker(string naam, string telnr, string adres, string email, string wachtwoord, string rol, string connectionString)
        {
            MySqlConnection conn = new MySqlConnection(connectionString);

            try
            {
                conn.Open();
                string query =
                    "INSERT INTO aanmelden (Naam, TelNr, Adres, Email, Wachtwoord, Rol) VALUES (@Naam, @TelNr, @Adres, @Email, @Wachtwoord, @Rol)";

                using (MySqlCommand cmd = new MySqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Naam", naam);
                    cmd.Parameters.AddWithValue("@TelNr", telnr);
                    cmd.Parameters.AddWithValue("@Adres", adres);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Wachtwoord", wachtwoord);
                    cmd.Parameters.AddWithValue("@Rol", rol);

                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Er is een fout opgetreden: {ex.Message}");
            }
        }

    //Delete a user from the database
        public async Task deleteGebruiker(int id, String connectionString)
        {
            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                try
                {
                    await conn.OpenAsync();
                    string query = "DELETE FROM aanmelden WHERE id = @id";

                    using (MySqlCommand cmd = new MySqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@id", id);

                        await cmd.ExecuteNonQueryAsync();
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Er is een fout opgetreden: {ex.Message}");
                }
            }
        }

        //Get the username from the database
        public async Task<string> getGebruikersnaam(string email, string connectionString)
        {
            string output = "";

            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                try
                {
                    await conn.OpenAsync();
                    string query = "SELECT email FROM aanmelden WHERE email = @email";

                    using (MySqlCommand cmd = new MySqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@email", email);

                        output = cmd.ExecuteScalar()?.ToString();
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Er is een fout opgetreden: {ex.Message}");
                }
            }
            return output;
        }

        //Get wachtwoord from the database
        public async Task<string> getWachtwoord(string email, string connectionString)
        {
            string output = "";

            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                try
                {
                    await conn.OpenAsync();
                    string query = "SELECT wachtwoord FROM aanmelden WHERE email = @email";

                    using (MySqlCommand cmd = new MySqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@email", email);

                        output = cmd.ExecuteScalar()?.ToString();
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Er is een fout opgetreden: {ex.Message}");
                }
            }
            return output;
        }

        //Get rol from database
        public async Task<string> getRol(string email, string connectionString)
        {
            string output = "";

            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                try
                {
                    await conn.OpenAsync();
                    string query = "SELECT rol FROM aanmelden WHERE email = @email";

                    using (MySqlCommand cmd = new MySqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@email", email);

                        output = cmd.ExecuteScalar()?.ToString();
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Er is een fout opgetreden: {ex.Message}");
                }
            }
            return output;
        }

        //Get id from database
        public async Task<int> getId(string email, string connectionString)
        {
            int output = 0;

            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                try
                {
                    await conn.OpenAsync();
                    string query = "SELECT idAanmelden FROM aanmelden WHERE email = @email";

                    using (MySqlCommand cmd = new MySqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@email", email);

                        output = Convert.ToInt32(cmd.ExecuteScalar());
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Er is een fout opgetreden: {ex.Message}");
                }
            }
            return output;
        }
    }
}

