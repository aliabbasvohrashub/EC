using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace Unique.EcommGroceryStore.Core.Utility
{
    public static class extensionmethods
    {
        //public static IQueryable<T> OrderByField<T>(this IQueryable<T> q, string SortField, bool Ascending,int take, int skip)
        //{
        //    var param = Expression.Parameter(typeof(T), "p");
        //    var prop = Expression.Property(param, SortField);
        //    var exp = Expression.Lambda(prop, param);
        //    string method = Ascending ? "OrderBy" : "OrderByDescending";
        //    Type[] types = new Type[] { q.ElementType, exp.Body.Type };
        //    var mce = Expression.Call(typeof(Queryable), method, types, q.Expression, exp);
        //    var query = q.Provider.CreateQuery<T>(mce);
        //    query = query.Skip(skip).Take(take);
        //    return query;// q.Provider.CreateQuery<T>(mce);
        //} 

        public static IQueryable<T> OrderByField<T>(this IQueryable<T> q, string SortField, int pagesize, int index, bool all, bool Ascending)
        {

            if (SortField.Trim() == "Price") SortField = "PricePerUnit";
            if (SortField.Trim() == "Position") SortField = "ProductId";
            if (SortField.Trim() == "Name") SortField = "ProductName";
            var param = Expression.Parameter(typeof(T), "p");
            var prop = Expression.Property(param, SortField);
            var exp = Expression.Lambda(prop, param);
            string method = Ascending ? "OrderBy" : "OrderByDescending";
            Type[] types = new Type[] { q.ElementType, exp.Body.Type };
            var mce = Expression.Call(typeof(Queryable), method, types, q.Expression, exp);
            var query = q.Provider.CreateQuery<T>(mce);
            query = all ? query : query.Skip((index - 1) * pagesize).Take(pagesize);
            return query;// q.Provider.CreateQuery<T>(mce);
        }
    }
}
