using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using UnihockeyWebShop;

namespace UnihockeyWebShop.Controllers
{
    public class BenutzersController : ApiController
    {
        private WebShopDBContext db = new WebShopDBContext();

        // GET: api/Benutzers
        public IQueryable<Benutzer> GetBenutzer()
        {
            return db.Benutzer;
        }

        // GET: api/Benutzers/5
        [ResponseType(typeof(Benutzer))]
        public IHttpActionResult GetBenutzer(int id)
        {
            Benutzer benutzer = db.Benutzer.Find(id);
            if (benutzer == null)
            {
                return NotFound();
            }

            return Ok(benutzer);
        }
        // GET: api/Benutzers/CheckBenutzer/...
        [ResponseType(typeof(Benutzer))]
        public IHttpActionResult CheckBenutzer(Benutzer benutzer)
        {
            return Ok((db.Benutzer.FirstOrDefault(b => b.Username == benutzer.Username && b.Password == benutzer.Password)));
        }
        // PUT: api/Benutzers/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutBenutzer(int id, Benutzer benutzer)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != benutzer.Id)
            {
                return BadRequest();
            }

            db.Entry(benutzer).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!BenutzerExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/Benutzers
        [ResponseType(typeof(Benutzer))]
        public IHttpActionResult PostBenutzer(Benutzer benutzer)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Benutzer.Add(benutzer);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = benutzer.Id }, benutzer);
        }

        // DELETE: api/Benutzers/5
        [ResponseType(typeof(Benutzer))]
        public IHttpActionResult DeleteBenutzer(int id)
        {
            Benutzer benutzer = db.Benutzer.Find(id);
            if (benutzer == null)
            {
                return NotFound();
            }

            db.Benutzer.Remove(benutzer);
            db.SaveChanges();

            return Ok(benutzer);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool BenutzerExists(int id)
        {
            return db.Benutzer.Count(e => e.Id == id) > 0;
        }
    }
}