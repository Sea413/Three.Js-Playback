using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNet.Mvc;
using Hegemony.Models;
using Hegemony.ViewModels;

namespace Hegemony.Controllers
{
    public class AccountController : Controller
    {

        private readonly ApplicationDbContext _db;


        public AccountController( ApplicationDbContext db)
        {
            _db = db;
        }

        public ActionResult Index(Record record)
        {
            _db.Records.Add(record);
            _db.SaveChanges();
            return View();
        }
        //public Task<ActionResult> Index(Record record)
        //{
           
        //    _db.Records.Add(record);
        //    _db.SaveChanges();
        //    return View();
        //}

        //public IActionResult Register()
        //{
        //    return View();
        //}

        //[HttpPost]
        //public async Task<IActionResult> Register(RegisterViewModel model)
        //{
        //    var user = new ApplicationUser { UserName = model.UserName };
        //    IdentityResult result = await _userManager.CreateAsync(user, model.Password);
        //    if (result.Succeeded)
        //    {
        //        return RedirectToAction("Index");
        //    }
        //    else
        //    {
        //        return View();
        //    }
        //}
        //public IActionResult Login()
        //{
        //    return View();
        //}

        //[HttpPost]
        //public async Task<IActionResult> Login(LoginViewModel model)
        //{
        //    SignInResult result = await _signInManager.PasswordSignInAsync(model.UserName, model.Password, isPersistent: true, lockoutOnFailure: false);
        //    if (result.Succeeded)
        //    {
        //        return RedirectToAction("Index");
        //    }
        //    else
        //    {
        //        return View("Home", "Index");
        //    }
        //}


        //[HttpPost]
        //public async Task<IActionResult> LogOff()
        //{
        //    await _signInManager.SignOutAsync();
        //    return RedirectToAction("Index");
        //}
    }
}