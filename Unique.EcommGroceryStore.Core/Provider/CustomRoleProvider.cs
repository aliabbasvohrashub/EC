using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Security;
using System.Configuration.Provider;
using Unique.EcommGroceryStore.DAL.EntityModel;

namespace Unique.EcommGroceryStore.Core.Provider
{
    public class CustomRoleProvider : RoleProvider
    {
        #region "Const"
        public static string ADMIN = "Admin";
        public static string USER = "User";
        #endregion
        public override void AddUsersToRoles(string[] usernames, string[] roleNames)
        {
            throw new NotImplementedException();
        }

        public override string ApplicationName
        {
            get
            {
                throw new NotImplementedException();
            }
            set
            {
                throw new NotImplementedException();
            }
        }

        public override void CreateRole(string roleName)
        {
            throw new NotImplementedException();
        }

        public override bool DeleteRole(string roleName, bool throwOnPopulatedRole)
        {
            throw new NotImplementedException();
        }

        public override string[] FindUsersInRole(string roleName, string usernameToMatch)
        {
            throw new NotImplementedException();
        }

        public override string[] GetAllRoles()
        {
            using (EcommGroceryDataContext dataContext = new EcommGroceryDataContext())
            {
                return dataContext.Roles.Select(x => x.RoleName).ToArray();
            }
        }

        public override string[] GetRolesForUser(string username)
        {
            using (EcommGroceryDataContext dataContext = new EcommGroceryDataContext())
            {
                var users = dataContext.Users.Where(r => r.UserName == username).FirstOrDefault();
                if (users != null)
                {
                    return dataContext.Roles.Where(r => r.RoleId == users.RoleId).Select(r => r.RoleName).ToArray();
                }
                else
                {
                    return null;
                }
            }
        }

        public override string[] GetUsersInRole(string roleName)
        {
            throw new NotImplementedException();
        }

        public override bool IsUserInRole(string username, string roleName)
        {
            using (EcommGroceryDataContext dataContext = new EcommGroceryDataContext())
            {
                return (from u in dataContext.Users
                        join
                            r in dataContext.Roles on u.RoleId equals r.RoleId
                        where u.UserName == username && r.RoleName == roleName
                        select u).Any();
            }
        }

        public override void RemoveUsersFromRoles(string[] usernames, string[] roleNames)
        {
            throw new NotImplementedException();
        }

        public override bool RoleExists(string roleName)
        {
            throw new NotImplementedException();
        }
    }
}
