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
                    string query = "SELECT id, naam, telnr, adres, email, wachtwoord, rol FROM aanmelden";

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
                                _rol = reader.GetInt32(6)
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
        public async Task addGebruiker(Aanmelden werknemer, String connectionString)
        {
            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                try
                {
                    await conn.OpenAsync();
                    string query = "INSERT INTO aanmelden (naam, telnr, adres, email, wachtwoord, rol) VALUES (@naam, @telnr, @adres, @email, @wachtwoord, @rol)";

                    using (MySqlCommand cmd = new MySqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@naam", werknemer._naam);
                        cmd.Parameters.AddWithValue("@telnr", werknemer._telnr);
                        cmd.Parameters.AddWithValue("@adres", werknemer._adres);
                        cmd.Parameters.AddWithValue("@email", werknemer._email);
                        cmd.Parameters.AddWithValue("@wachtwoord", werknemer._wachtwoord);
                        cmd.Parameters.AddWithValue("@rol", werknemer._rol);

                        await cmd.ExecuteNonQueryAsync();
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Er is een fout opgetreden: {ex.Message}");
                }
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

        //Get all users from the database
        public async Task<List<Aanmelden>> getLoginGegevens(string wachtwoord, string connectionString)
        {
            List<Aanmelden> gegevens = new List<Aanmelden>();

            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                try
                {
                    await conn.OpenAsync();
                    string query = "SELECT email, wachtwoord, rol FROM aanmelden WHERE wachtwoord = @wachtwoord";

                    using (MySqlCommand cmd = new MySqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@wachtwoord", wachtwoord);

                        using (DbDataReader reader = await cmd.ExecuteReaderAsync())
                        {
                            while (await reader.ReadAsync())
                            {
                                Aanmelden gegeven = new Aanmelden
                                {
                                    _email = reader.GetString(0),
                                    _wachtwoord = reader.GetString(1),
                                    _rol = reader.GetInt32(2)
                                };

                                gegevens.Add(gegeven);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Er is een fout opgetreden: {ex.Message}");
                }
            }

            return gegevens;
        }
    }
}
