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
    public class PersistVoorbereiding
    {
            //Get all inschrijvingen from the database.
            public async Task<List<Voorbereiding>> getAllVoorbereidingen(String connectionString)
            {
                List<Voorbereiding> voorbereidingen = new List<Voorbereiding>();

                using (MySqlConnection conn = new MySqlConnection(connectionString))
                {
                    try
                    {
                        await conn.OpenAsync();
                        string query = "SELECT idInschrijving, Datum, Voorbereiding_ID, Aanmeld_ID FROM inschrijving";

                        using (MySqlCommand cmd = new MySqlCommand(query, conn))
                        using (DbDataReader reader = await cmd.ExecuteReaderAsync())
                        {
                            while (await reader.ReadAsync())
                            {
                                Voorbereiding voorbereiding = new Voorbereiding
                                {
                                    _id = reader.GetInt32(0),
                                    _medewerkerid = reader.GetInt32(1),
                                    _inhoud = reader.GetString(2),
                                    _duur = reader.GetInt32(3)
                                };

                                voorbereidingen.Add(voorbereiding);
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine($"Er is een fout opgetreden: {ex.Message}");
                        
                    }
                }

                return voorbereidingen;
            }

            //Add a inschrijving to the database.
            public async Task addVoorbereiding(Voorbereiding voorbereiding, String connectionString)
            {
                using (MySqlConnection conn = new MySqlConnection(connectionString))
                {
                    try
                    {
                        await conn.OpenAsync();
                        string query = "INSERT INTO aanmelden (Medewerker_ID, Inhoud, Duur) VALUES (@medewerkerid, @inhoud, @duur)";

                        using (MySqlCommand cmd = new MySqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@medewerkerid", voorbereiding._medewerkerid);
                            cmd.Parameters.AddWithValue("@inhoud", voorbereiding._inhoud);
                            cmd.Parameters.AddWithValue("@duur", voorbereiding._duur);

                            await cmd.ExecuteNonQueryAsync();
                        }
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine($"Er is een fout opgetreden: {ex.Message}");
                    }
                }
            }

            //Delete a inschrijving from the database.
            public async Task deleteVoorbereiding(int id, String connectionString)
            {
                using (MySqlConnection conn = new MySqlConnection(connectionString))
                {
                    try
                    {
                        await conn.OpenAsync();
                        string query = "DELETE FROM voorbereiding WHERE id = @id";

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
