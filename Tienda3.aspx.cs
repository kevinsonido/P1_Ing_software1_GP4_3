using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Facturacion_Grupo_3
{
    public partial class Tienda3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ObtieneDatos(Object sender, EventArgs e) {

  




            /*
             DataTable datatable = new DataTable();
             datatable.Columns.AddRange(new DataColumn[]{
                 new DataColumn("nombre_tienda",typeof(string)),
                 new DataColumn("link_producto",typeof(string)),
                 new DataColumn("estado_descripcion",typeof(string)),
                 new DataColumn("nombre_producto ",typeof(string)),

                 });

             SqlCommand cmd = new SqlCommand(@"Select nombre_tienda, link_producto,estado_descripcion,nombre_producto from tablatodos",Conexion.conexion.Open());
             SqlDataReader dr = cmd.ExecuteReader();

             if (dr.HasRows) {
                 while (dr.Read()) {
                     datatable.Rows.Add(
                         dr["nombre_tienda"].ToString(),
                         dr["link_producto"].ToString(),
                         dr["estado_descripcion"].ToString(),
                         dr["nombre_producto"].ToString()

                         );
                 }
             }
             Conexion.conexion.Close();
             tablagrupo3.DataSource = datatable;
             tablagrupo3.DataBind();*/

        }
        }
}