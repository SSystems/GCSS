package com.core.string;

public class VowelsAndConsonents {
public static void main(String[] args) {
	String str="venukumar";
	String vowels="aeiou";
	int count=0;
	for(int i=0;i<str.length();i++){
		for(int j=0;j<vowels.length();j++){
	
		if(str.charAt(i)==vowels.charAt(j))
		{
			System.out.println(str.charAt(i));
			count++;
			}
		
	}	}
	System.out.println("vowels::"+count);
	
		System.out.println("consonents::"+(str.length()-count));
	}

}
