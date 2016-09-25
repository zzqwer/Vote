package com.yc.corporation.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yc.corporation.entity.Photo;



public interface PhotoMapper {
	Photo findphotosByNP(Photo photo);

	List<Photo> findAll();

    int	insertphoto(Photo photo);
    int deletephoto(String... cid);
    int updatephoto(Photo photo);
    List<Photo>findphotobypage(@Param("page")int page,@Param("rows")int rows);
    
	List<Photo> findConnectionWay();

	List<Photo> club();

	boolean insertPhoto(Photo photo);
}
