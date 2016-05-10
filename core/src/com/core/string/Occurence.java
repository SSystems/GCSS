package com.core.string;

public class Occurence {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		String str="venukumar";
		int count=0;
		for(int i=0;i<str.length();i++){
			for(int j=i+1;j<str.length();j++){
			if(str.charAt(i)==str.charAt(j)){
				System.out.println(str.charAt(i));
				count++;	
			}
		}
	}
	}
}
