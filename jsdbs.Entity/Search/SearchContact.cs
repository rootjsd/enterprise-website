﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Cnkj.Utility;

namespace jsbestop.Entity.Search
{
   public class SearchContact : SearchBaseInfo
    {
        int isEnglish = 0;

        public int IsEnglish
        {
            get { return isEnglish; }
            set { isEnglish = value; }
        }

    }
}
