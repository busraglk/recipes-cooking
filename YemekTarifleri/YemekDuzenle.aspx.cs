﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleri
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {

        sqlsinif bgl = new sqlsinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YemekId"];

            if(Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Yemekler WHERE YemekId=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while(dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                }
                bgl.baglanti().Close();

                if (Page.IsPostBack == false)
                {
                    // Kategori Listesi
                    SqlCommand komut2 = new SqlCommand("SELECT * FROM Tbl_Kategoriler", bgl.baglanti());
                    SqlDataReader dr2 = komut2.ExecuteReader();
                    DropDownList1.DataTextField = "KategoriAd";
                    DropDownList1.DataValueField = "KategoriId";

                    DropDownList1.DataSource = dr2;
                    DropDownList1.DataBind();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));
            
            SqlCommand komut = new SqlCommand("UPDATE Tbl_Yemekler SET YemekAd=@p1, YemekMalzeme=@p2, YemekTarif=@p3, KategoriId=@p4, YemekResim=@p6 Where YemekId=@p5", 
            bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p6", "~/resimler/" + FileUpload1.FileName); ;
            komut.Parameters.AddWithValue("@p5", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Tüm yemekleri durumunu False yaptık
            SqlCommand komut = new SqlCommand("update Tbl_Yemekler Set Durum=0", bgl.baglanti());
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            // Günün yemeği için Id'ye göre durumu True yapalım
            SqlCommand komut2 = new SqlCommand("update Tbl_Yemekler set Durum=1 where YemekId=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", id);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

    }
}