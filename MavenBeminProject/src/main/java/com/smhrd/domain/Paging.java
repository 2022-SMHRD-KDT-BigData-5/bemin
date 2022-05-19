package com.smhrd.domain;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
 

 
public class Paging {
    
    
    public List<Paging> getNoticeList(){
        return getNoticeList("title", "", 1);
    }
    public List<Paging> getNoticeList(int page){
        return getNoticeList("title", "", page);
    }
    public List<Paging> getNoticeList(String field, String query, int page){
        
        List<Paging> list = new ArrayList<>();
        
       ng sql = "SELECT * FROM ( " + 
         Stri        "    SELECT ROWNUM NUM, NOTICE.* " + 
                "    FROM NOTICE WHERE "+field+" LIKE ? ORDER BY REGDATE DESC " + 
                "    ) " + 
                " WHERE NUM BETWEEN ? AND ? " ;
        
        String url = "jdbc:oracle:thin:@localhost:1521/myoracle";
        Connection conn = null;
        PreparedStatement pstmt= null;
        ResultSet rs= null;
        
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection(url, "ora_user2", "0000");                
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,  "%"+query+"%");
            pstmt.setInt(2, 1+(page-1)*10);
            pstmt.setInt(3, page*10);
            rs = pstmt.executeQuery();
            
            while(rs.next()){     
                
            int id = rs.getInt("ID");
            String title = rs.getString("TITLE");        
            String writerId = rs.getString("WRITER_ID"); 
            Date regdate = rs.getDate("REGDATE");     
            String hit = rs.getString("HIT"); 
            String files = rs.getString("FILES");
            String content = rs.getString("Content");
            
            Paging notice = new Paging(id, title, writerId, regdate, hit, files, content);    
            
                list.add(notice);
            } 
        } catch (ClassNotFoundException e) {            
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        finally {
            try {
                if(rs !=null) rs.close();
                if(pstmt !=null) pstmt.close();
                if(conn !=null) conn.close();
            }catch (Exception e) {
                e.printStackTrace();
            }        
        
        }
        return list;
    }
 
 
    public int getNoticeCount() {
        return getNoticeCount("title", "");    
    }
    
    public int getNoticeCount(String field, String query) {
        int count = 0;
        
        String sql = "SELECT COUNT(ID) COUNT FROM (" + 
                "    SELECT ROWNUM NUM, NOTICE.* " + 
                "    FROM NOTICE  WHERE "+field+" LIKE ? ORDER BY REGDATE DESC " +                 
                "    ) " ;
        
        String url = "jdbc:oracle:thin:@localhost:1521/myoracle";
        Connection conn = null;
        PreparedStatement pstmt= null;
        ResultSet rs= null;
        
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection(url, "ora_user2", "0000");                
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,  "%"+query+"%");           
            rs = pstmt.executeQuery();
            
            if(rs.next())
            count = rs.getInt("count");
        
        } catch (ClassNotFoundException e) {            
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        finally {
            try {
                if(rs !=null) rs.close();
                if(pstmt !=null) pstmt.close();
                if(conn !=null) conn.close();
            }catch (Exception e) {
                e.printStackTrace();
            }            
        }        
        return count;    
    }    
    
}
