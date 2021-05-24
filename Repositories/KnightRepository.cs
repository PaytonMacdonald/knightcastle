using System;
using System.Collections.Generic;
using System.Data;
using knightcastle.Models;
using Dapper;

namespace knightcastle.Repositories
{
    public class KnightRepository
    {
        private readonly IDbConnection _db; //NOTE what does this do???

        public KnightRepository(IDbConnection db)
        {
            _db = db;
        }

        internal IEnumerable<Knight> GetALL()
        {
            string sql = "SELECT * FROM knights";
            return _db.Query<Knight>(sql);
        }

        internal Knight GetById(int id)
        {
            string sql = "SELECT * FROM artists WHERE id = @id";
            return _db.QueryFirstOrDefault<Knight>(sql, new { id });
        }
        internal Knight Create(Knight newKnight)
        {
            string sql = @"
            INSERT INTO artists
            (name, age, hasWeapon)
            VALUES
            (@Name, @Age, @HasWeapon);
            SELECT LAST_INSERT_ID()";

            newKnight.Id = _db.ExecuteScalar<int>(sql, newKnight);
            return newKnight;
        }

        internal bool Update(Knight original)
        {
            string sql = @"
            UPDATE knights SET
            name = @Name,
            age = @Age,
            hasWeapon = @HasWeapon
            WHERE id=@Id
            ";
            
            int affectedRows = _db.Execute(sql, original).FirstOrDefault(); // NOTE i don't understand these two lines
            return affectedRows == 1;
        }

        internal bool Delete(int id) // NOTE why were these bools???
        {
            string sql = "DELETE FROM knights WHERE id = @id LIMIT 1" // NOTE what was the big warning we got?
            int affectedRows = _db.Execute(sql, new { id });
            return affectedRows == 1;
        }
    }
}

// Dictionary<int,string> Thingy = new Dictionary<int,string>()