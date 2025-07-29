package com.grade;

public class StudentGrade {
	private double average;
	
	public void setAverage(double ...num) { //double ...num 가변길이인자
		if(num ==null) return;
		double sum = 0;
		for(int i =0 ; i<num.length; i++) {
			sum += num[i];
		}
		average = sum / (int)num.length;
	}
	
	public double getAverage() {
		return average;
	}
	
}
