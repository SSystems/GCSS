package com.core.string;

public class OnlyDigits {
	public static void main(String[] args) {

		String str = "101dwdws010";
		int count = 0;
		int n=str.length();
		for (int i = 0; i < n; i++) {
			if (str.charAt(i) == '1' || str.charAt(i) == '0') {
				count++;
			}

		}
		if (count == n) {
			System.out.println("it contains only digits");
		} else {
			System.out.println("this string not only digits");

		}
	}

}
