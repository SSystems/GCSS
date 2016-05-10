package com.core.string;

public class DuplicateCHarecters {
public static void main(String[] args) {
	String str="venukumarkumar";
	int size=str.length();
	
	for(int i=0;i<=size;i++){
		for(int j=i+1;j<size;j++)
		{
			if(str.charAt(i)==str.charAt(j)){
				System.out.println(str.charAt(i));
			}
		}
	}
}
}
