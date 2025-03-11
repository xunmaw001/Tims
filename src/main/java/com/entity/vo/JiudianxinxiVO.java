package com.entity.vo;

import com.entity.JiudianxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 酒店信息
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-03-03 10:34:37
 */
public class JiudianxinxiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 酒店名称
	 */
	
	private String jiudianmingcheng;
		
	/**
	 * 酒店信息
	 */
	
	private String jiudianxinxi;
		
	/**
	 * 酒店图片
	 */
	
	private String jiudiantupian;
		
	/**
	 * 酒店位置
	 */
	
	private String jiudianweizhi;
		
	/**
	 * 发布日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date faburiqi;
		
	/**
	 * 赞
	 */
	
	private Integer thumbsupnum;
		
	/**
	 * 踩
	 */
	
	private Integer crazilynum;
		
	/**
	 * 价格
	 */
	
	private Float price;
				
	
	/**
	 * 设置：酒店名称
	 */
	 
	public void setJiudianmingcheng(String jiudianmingcheng) {
		this.jiudianmingcheng = jiudianmingcheng;
	}
	
	/**
	 * 获取：酒店名称
	 */
	public String getJiudianmingcheng() {
		return jiudianmingcheng;
	}
				
	
	/**
	 * 设置：酒店信息
	 */
	 
	public void setJiudianxinxi(String jiudianxinxi) {
		this.jiudianxinxi = jiudianxinxi;
	}
	
	/**
	 * 获取：酒店信息
	 */
	public String getJiudianxinxi() {
		return jiudianxinxi;
	}
				
	
	/**
	 * 设置：酒店图片
	 */
	 
	public void setJiudiantupian(String jiudiantupian) {
		this.jiudiantupian = jiudiantupian;
	}
	
	/**
	 * 获取：酒店图片
	 */
	public String getJiudiantupian() {
		return jiudiantupian;
	}
				
	
	/**
	 * 设置：酒店位置
	 */
	 
	public void setJiudianweizhi(String jiudianweizhi) {
		this.jiudianweizhi = jiudianweizhi;
	}
	
	/**
	 * 获取：酒店位置
	 */
	public String getJiudianweizhi() {
		return jiudianweizhi;
	}
				
	
	/**
	 * 设置：发布日期
	 */
	 
	public void setFaburiqi(Date faburiqi) {
		this.faburiqi = faburiqi;
	}
	
	/**
	 * 获取：发布日期
	 */
	public Date getFaburiqi() {
		return faburiqi;
	}
				
	
	/**
	 * 设置：赞
	 */
	 
	public void setThumbsupnum(Integer thumbsupnum) {
		this.thumbsupnum = thumbsupnum;
	}
	
	/**
	 * 获取：赞
	 */
	public Integer getThumbsupnum() {
		return thumbsupnum;
	}
				
	
	/**
	 * 设置：踩
	 */
	 
	public void setCrazilynum(Integer crazilynum) {
		this.crazilynum = crazilynum;
	}
	
	/**
	 * 获取：踩
	 */
	public Integer getCrazilynum() {
		return crazilynum;
	}
				
	
	/**
	 * 设置：价格
	 */
	 
	public void setPrice(Float price) {
		this.price = price;
	}
	
	/**
	 * 获取：价格
	 */
	public Float getPrice() {
		return price;
	}
			
}
