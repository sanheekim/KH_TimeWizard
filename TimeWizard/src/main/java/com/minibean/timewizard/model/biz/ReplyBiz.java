package com.minibean.timewizard.model.biz;

import java.util.List;

import com.minibean.timewizard.model.dto.ReplyDto;

public interface ReplyBiz {

	public List<ReplyDto> replyList(int notice_no);
	public int insertReply(ReplyDto dto);
	public int updateReply(ReplyDto dto);
	public int deleteReply(int reply_no);
	
}
