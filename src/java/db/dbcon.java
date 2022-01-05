package db;


import java.sql.DriverManager;
import java.sql.*;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author hp
 */
public class dbcon {
    public static Connection con;
    public static Statement st;
    static
    {
        try{
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medics","root","123456i"); 
        
        st=con.createStatement(); 
        }
        catch(Exception e)
{System.out.println("EXC  "+e);}
    }
    }
    
