﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using jsbestop.Entity;
using jsbestop.Entity.Search;
using Cnkj.Utility;
using jsbestop.DAL;

namespace jsbestop.BLL
{
    public class BLLProductType:BLLExt<ProductType,SearchProductType>
    {
        DALProductType dal = new DALProductType();
        public BLLProductType()
        {
            base.TDALManager = dal;
        }
    }
}
