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
    internal class PersistAanmelden
    {
        private string _connectionString = @"server=localhost;user id=root;persistsecurityinfo=True;database=project;password=test123";

        //Get all werknemers from database. 
        public async Task<List<Aanmelden>> getWerknemers()
        {
            List<Aanmelden> werknemers = new List<Aanmelden>();

            using (MySqlConnection conn = new MySqlConnection(_connectionString))
            {
                try
                {
                    await conn.OpenAsync();
                    string query = "SELECT id, naam, telnr, adres, email, wachtwoord, rol FROM aanmelden WHERE rol = 1";

                    using (MySqlCommand cmd = new MySqlCommand(query, conn))
                    using (DbDataReader reader = await cmd.ExecuteReaderAsync())
                    {
                        while (await reader.ReadAsync())
                        {
                            Aanmelden werknemer = new Aanmelden
                            {
                                _id = reader.GetInt32(0),
                                _naam = reader.GetString(1),
                                _telnr = reader.GetString(2),
                                _adres = reader.GetString(3),
                                _email = reader.GetString(4),
                                _wachtwoord = reader.GetString(5),
                                _rol = reader.GetInt32(6)
                            };

                            werknemers.Add(werknemer);
                        }
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Er is een fout opgetreden: {ex.Message}");
                }
            }

            return werknemers;
        }

        //Add a new werknemer to the database based on the getWerknemer() method.
        public async Task addWerknemer(Aanmelden werknemer)
        {
            using (MySqlConnection conn = new MySqlConnection(_connectionString))
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
                        cmd.Parameters.AddWithValue("@rol", 1); // Set rol to 1

                        await cmd.ExecuteNonQueryAsync();
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Er is een fout opgetreden: {ex.Message}");
                }
            }
        }

        //Delete a werknemer from the database based on the getWerknemer() method.
        public async Task deleteWerknemer(int id)
        {
            using (MySqlConnection conn = new MySqlConnection(_connectionString))
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
    }
}
