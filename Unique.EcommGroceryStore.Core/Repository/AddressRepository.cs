using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Unique.EcommGroceryStore.Core.Interfaces;
using Unique.EcommGroceryStore.DAL.EntityModel;

namespace Unique.EcommGroceryStore.Core.Repository
{
    public class AddressRepository : IDisposable, ICustomInterface<AddressDetails>
    {
        #region
        private EcommGroceryDataContext dataContext = null;
        #endregion

        #region Constructor
        public AddressRepository()
        {
            dataContext = new EcommGroceryDataContext();
        }
        #endregion

        public AddressDetails Delete(int id)
        {
            throw new NotImplementedException();
        }

        public AddressDetails Add(AddressDetails model)
        {
            dataContext.AddressDetails.Add(model);
            Update();
            return model;
        }

        public AddressDetails Get(string value)
        {
            throw new NotImplementedException();
        }

        public AddressDetails Get(int id)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<AddressDetails> GetList(int id)
        {
            throw new NotImplementedException();
        }

        public void Update()
        {
            dataContext.SaveChanges();
        }

        public void Dispose()
        {
            if (dataContext != null)
            {
                dataContext.Dispose();
                dataContext = null;
            }
        }
    }
}
