﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Reflection;
using System.Web;

namespace Song.ViewData.Attri
{
    /// <summary>
    /// 方法是否支持缓存
    /// </summary>
    [AttributeUsage(AttributeTargets.Method)]
    public class CacheAttribute : WeishaAttr
    {
        //缓存名称
        private static string _cacheName = "ViewData_{0}.{1}_[{2}]";
        private int _expires = 10;
        /// <summary>
        /// 失效时间
        /// </summary>
        public int Expires
        {
            get { return _expires; }
            set
            {
                _expires = value;
            }
        }
        /// <summary>
        /// 获取缓存
        /// </summary>
        /// <param name="method"></param>
        /// <param name="letter"></param>
        /// <returns></returns>
        public static object GetResult(MethodInfo method, Letter letter)
        {
            string cacheName = string.Format(_cacheName, method.ReturnType.FullName, method.Name, letter.ToString());
            return HttpRuntime.Cache.Get(cacheName);
        }
        /// <summary>
        /// 移除和某个缓存
        /// </summary>
        /// <param name="method"></param>
        /// <param name="letter"></param>
        public static void Remove(MethodInfo method, Letter letter)
        {
            //缓存名称
            string cacheName = string.Format(_cacheName, method.ReturnType.FullName, method.Name, letter.ToString());
            HttpRuntime.Cache.Remove(cacheName);
        }
        /// <summary>
        /// 创建缓存
        /// </summary>
        /// <param name="expires"></param>
        /// <param name="method"></param>
        /// <param name="letter"></param>
        /// <param name="result"></param>
        public static void Insert(int expires, MethodInfo method, Letter letter, object result)
        {
            if (result == null) return;
            //缓存名称
            string cacheName = string.Format(_cacheName, method.ReturnType.FullName, method.Name, letter.ToString());
            //过期时间
            DateTime expTime = DateTime.Now.AddMinutes(expires);            
            HttpRuntime.Cache.Insert(cacheName, result, null, expTime, TimeSpan.Zero);
        }
        
    }
}
