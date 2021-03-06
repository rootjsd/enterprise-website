﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Common;
using jsbestop.BLL;
using jsbestop.Entity;
using Cnkj.Utility;

namespace jsbestop.Web
{
    public partial class message : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                
            }
        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (contactor.Value.Trim() == "")
            {
                JSMsg.ShowRegisterMsg(this, "请输入联系人！");
                return;
            }
            if (phonenumber.Value.Trim() == "")
            {
                JSMsg.ShowRegisterMsg(this, "请输入联系电话！");
                return;
            }
            if (messageContent.Value.Trim() == "")
            {
                JSMsg.ShowRegisterMsg(this, "请输入留言内容！");
                return;
            }
            using (BLLMessages bll = new BLLMessages())
            {
                Messages obj = new Messages();
                obj.MesAddress = lblAddress.Value.Trim();
                obj.MesName = contactor.Value.Trim(); ;
                obj.MesTelphone = phonenumber.Value.Trim();
                obj.MesDate = DateTime.Now;
                obj.IsReply = 0;
                obj.MesEmail = email.Value.Trim();
                obj.MesContent = messageContent.Value.Trim();
                bll.Save(obj);
                if (bll.IsFail)
                {
                    ExceptionManager.ShowErrorMsg(this, bll.DevNetException);
                }
                else
                {
                    JSMsg.ShowWinRedirect(this, "保存成功", "index.aspx");
                }
            }
        }
    }
}