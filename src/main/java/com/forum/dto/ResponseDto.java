package com.forum.dto;

/**
 * 返回给前端的信息
 * 
 * @author Sackr
 *
 */
public class ResponseDto {
	/**
	 * 调用信息 {@link CallInfoType}
	 */
	private String callInfo = CallInfoType.SUCCESS;
	/**
	 * 提示信息
	 */
	private String resultMessage;
	/**
	 * 需要返回的实际信息
	 */
	private Object obj;

	public String getCallInfo() {
		return callInfo;
	}

	public void setCallInfo(String callInfo) {
		this.callInfo = callInfo;
	}

	public String getResultMessage() {
		return resultMessage;
	}

	public void setResultMessage(String resultMessage) {
		this.resultMessage = resultMessage;
	}

	public Object getObj() {
		return obj;
	}

	public void setObj(Object obj) {
		this.obj = obj;
	}
}
