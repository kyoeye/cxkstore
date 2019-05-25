using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace cxkstore.Models
{
    public class LiknModels
    {
    }
    public class PhoneXinxi
    {
        public string phonenum { get; set; } //艹，sqlreader不让我用int，只能用string了
        public string phoneid { get; set; }
        public string gysid { get; set; }
        public string phonename { get; set; }
        public string price { get; set; }
        public string pjieshao { get; set; }
        public string pchengben { get; set; }
        public string pkucun { get; set; }
    }
}