package org.it.gallery;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.it.util.SessionUtil;

public class GalleryDao {

	SqlSession session = null;
	List<GalleryDto> list = null;

	public List<GalleryDto> readAll(){

		try{
			session = SessionUtil.open();
			list = session.selectList("org.it.gallery.galleryMapper.readAll");
		} catch(Exception e){
			e.printStackTrace();
		} finally{
			session.close();
		}

		return list;
	}
	
	public int regOne(GalleryDto dto){
		int count = 0;
		
		try{
			session = SessionUtil.open();
			count = session.insert("org.it.gallery.galleryMapper.regOne", dto);
			if(count>0)
				session.commit();
		} catch(Exception e){
			e.printStackTrace();
		} finally{
			session.close();
		}
		
		return count;
	}
}
