package com.ui.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.ui.dao.AllCountDAO;
import com.ui.model.AllCount;


public class AllCountDAOImpl implements AllCountDAO {

	@Autowired
    private DataSource dataSource;
    public void setDataSource(DataSource dataSource)
    {
        this.dataSource = dataSource;
    }
    JdbcTemplate jdbcTemplate;

    private static final Logger logger = LoggerFactory.getLogger(AllCountDAOImpl.class);
    
	@Override
	public AllCount getAllCountMeeting(HttpSession session) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public AllCount getMeetingById(int memberId) {
		AllCount m = null;
		String s ="y";
		String sql = "select count(met_member_id) as given_meetingcount from member_one_to_one where invited_by_member_id=? and status=?";
		
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, memberId);
			ps.setString(2, s);
			ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			m = new AllCount();
			
			
			m.setMemberId(memberId);
            m.setGiven_meetingcount(rs.getInt("given_meetingcount"));
          
		
		}
		rs.close();
		ps.close();
		
		return m;
	} 
		catch (SQLException e) {
		
			throw new RuntimeException(e);
		} 
			finally {
		if (conn != null) {
			try {
					conn.close();
				} catch (SQLException e) {
			}
		  }
		}

	}

	@Override
	public AllCount getCountRefferance(int memberId) {
		AllCount m = null;
		String s ="y";
		String sql = "select count(member_referral_id) as refferencecount from member_referral where created_by=? and status=?";
		
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, memberId);
			ps.setString(2, s);
			ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			m = new AllCount();
			
			
			m.setMemberId(memberId);
            m.setRefferencecount(rs.getInt("refferencecount"));
          
		
		}
		rs.close();
		ps.close();
		
		return m;
	} 
		catch (SQLException e) {
		
			throw new RuntimeException(e);
		} 
			finally {
		if (conn != null) {
			try {
					conn.close();
				} catch (SQLException e) {
			}
		  }
		}

	}
	
	@Override
	public AllCount getCountRefferanceRecieved(int memberId) {
		AllCount m = null;
		String s ="y";
		String sql = "select count(member_referral_id) as refferal_recevied from member_referral where to_member_id=? and status=?";
		
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, memberId);
			ps.setString(2, s);
			ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			m = new AllCount();
			
			
			m.setMemberId(memberId);
            m.setRefferal_recevied(rs.getInt("refferal_recevied"));
          
		
		}
		rs.close();
		ps.close();
		
		return m;
	} 
		catch (SQLException e) {
		
			throw new RuntimeException(e);
		} 
			finally {
		if (conn != null) {
			try {
					conn.close();
				} catch (SQLException e) {
			}
		  }
		}

	}

	@Override
	public AllCount getCountBusiness(int memberId) {
		  logger.info("***** getCountBusiness Dao Impl*****");
		System.out.println(">>>>>>>>>>>>>"+memberId);
		AllCount m = null;
		String s ="y";
		String sql = "select (select sum(amount) from member_thank_you_slip where created_by =? and status='y') as Businessgiven ,(select sum(amount) from member_thank_you_slip where to_member_id=? and status='y') as Businessreceived";
		
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, memberId);
			ps.setInt(2, memberId);
		System.out.println("iff");
			ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			m = new AllCount();
			System.out.println("if1111f");
			
			m.setMemberId(memberId);
            m.setBusinessgiven(rs.getInt("businessgiven"));
            m.setBusinessreceived(rs.getInt("businessreceived"));
         
          
		
		}
		rs.close();
		ps.close();
		
		return m;
	} 
		catch (SQLException e) {
		
			throw new RuntimeException(e);
		} 
			finally {
		if (conn != null) {
			try {
					conn.close();
				} catch (SQLException e) {
			}
		  }
		}

	}
}
