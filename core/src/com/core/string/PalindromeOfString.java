package com.core.string;

public class PalindromeOfString {
	public static void main(String[] args) {
		
		String str="madam";
		String rev="";
		int size=str.length();
		for(int i = size-1;i>=0;i--){
			rev = rev+str.charAt(i);
			System.out.println(rev);
			
		}
		if(rev.equals(str)){
			System.out.println("palindrome");
		}
		else{
			System.out.println("not");
		}
	}

}
