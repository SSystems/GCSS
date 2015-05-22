package com.globacomp.ssystem.common;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class CaseConfiguration {
	
	private static HashMap<Integer, String> statusMap;
	
	public static enum STATUS {

		NEW_CASE_STATUS((int) 10, "New Case"), UNASSIGNED_STATUS((int) 15, "Unassigned"), ASSIGNMENT_ACCEPTANCE_PENDING_STATUS(
				(int) 20, "Handler has not accepted"), ASSIGNMENT_ACCEPTED_STATUS((int) 25, "Handler has accepted"), UNDER_PROCESSING_STATUS(
				(int) 30, "Under Processing"),PROCESSING_HOLD_STATUS((int) 35, "Processing on Hold"),COMPLETION_APPROVAL_PENDING_STATUS(
								(int) 40, "Completion Acceptance Pending"),PROCESSING_COMPLETED_STATUS(
										(int) 50, "Processing Completed");

		private int status;

		private String text;

		private STATUS(int status, String text) {
			this.status = status;
			this.text = text;
		}

		public int getStatus() {
			return status;
		}

		public String getText() {
			return text;
		}
	}
	
	public static List<STATUS> getStatusList() {
		return Arrays.asList(STATUS.values());
	}
	
	public static Map<Integer, String> getStatusMap() {
		
		if(statusMap == null) {
			statusMap = new HashMap<Integer, String>();
			STATUS[] statuses = STATUS.values();
			for(int i=0; i<statuses.length;i++) {
				statusMap.put(statuses[i].getStatus(), statuses[i].getText());
			}
			System.out.println("case Config  status map size:"+statusMap.size());
		}
		return statusMap;
	}
}
