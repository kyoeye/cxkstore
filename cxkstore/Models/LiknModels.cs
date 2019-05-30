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
        public string pcolor { get; set; }
        public string ppeizhi { get; set; }
        public string phonebrand { get; set; }//品牌
        public string phonetext { get; set; }//品牌介绍


    }
    public class GwcXinxi
    {
        public int gwcid { get; set; } 
        public int userid { get; set; }
        public int phonenum { get; set; }
        public int shuliang { get; set; }
        public string zhuangtai { get; set; }
        public string  ddcolor { get; set; }
        public string  ddpeizhi { get; set; }
    }
}