package com.yc.corporation.serivce;

import java.util.List;

import com.yc.corporation.entity.Infomation;
import com.yc.corporation.entity.Photo;


public interface PhotoService {



	 boolean insertPhotos(Photo photo);


	List<Photo> findAll();
	int deletephoto(String... pid);
	int updatephoto(Photo photo);
    List<Photo>findphotobypage(int page,int rows);   
	List<Photo> findConnectionWay();


	boolean insertPhoto(Photo photo);


	List<Photo> club();

}