using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleri
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif(); //Bağlantı metodu içerisindeki adresi kullanabilmek için buraya yazıyoruz.
        string YemekId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            YemekId = Request.QueryString["YemekId"];
            SqlCommand komut = new SqlCommand("Select YemekAd From Tbl_Yemekler Where YemekId=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", YemekId); // parametreyi böyle al
            SqlDataReader dr = komut.ExecuteReader();
            // SqlCommand sınıfından komut adında bir nesne türetiyoruz. Bu nesneye sql sorgu değerimizi yazdık.
            // Sorgum Yemekler tablosundan YemekAd'ı getirecek.
            // Dahaa sonra baglanti metodumuzdaki adresle ilişkilendirdik.
            // sql veri okuyucu sınıfından dr isimli bir nesne türettik.Bunu komuttan gelen sorguyla ilişkilendirdik.
           
            while (dr.Read())
            {
                Label3.Text = dr[0].ToString();
            }
            // while döngüsü oluşturduk. dr nesnem okuma yaptığı sürece Label3'e dr'den gelecek olan 0.parametredeki değeri yazdır.
            // 0.parametrede YemekAd var.
            bgl.baglanti().Close();


            // Yorumları Listeleme
            SqlCommand komut2 = new SqlCommand("Select * From Tbl_Yorumlar Where YemekId=@p2", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p2", YemekId);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("INSERT INTO Tbl_Yorumlar(YorumAdSoyad,YorumMail,YorumIcerik,YemekId) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", YemekId);
            komut.ExecuteNonQuery(); // sorgumuzu gerçekleştiriyoruz.
            bgl.baglanti().Close();
            Response.Write("Yorumunuz Alınmıştır");
        }
        
    }

}