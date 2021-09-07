package com.ict.VO;

import org.springframework.web.multipart.MultipartFile;

public class BoardVO {
	private String f_idx, file_name, category, s_images, content, upload_date;
	private MultipartFile f_image;
	
	public String getF_idx() {
		return f_idx;
	}
	public void setF_idx(String f_idx) {
		this.f_idx = f_idx;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getS_images() {
		return s_images;
	}
	public void setS_images(String s_images) {
		this.s_images = s_images;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getUpload_date() {
		return upload_date;
	}
	public void setUpload_date(String upload_date) {
		this.upload_date = upload_date;
	}
	public MultipartFile getF_image() {
		return f_image;
	}
	public void setF_image(MultipartFile f_image) {
		this.f_image = f_image;
	} 

	
}
