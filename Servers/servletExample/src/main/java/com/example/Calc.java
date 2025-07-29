package com.example;

public class Calc{
	private int result;
	
	public Calc() {
		result=0;
	}
	
	public Calc(int num1, int num2, String op) {
		calculate(num1, num2, op);
	}
	
	public void calculate(int num1, int num2, String op) {
		switch(op) {
		case "+":
            result = num1 + num2;
            break;
        case "-":
            result = num1 - num2;
            break;
        case "*":
            result = num1 * num2;
            break;
        case "/":
        	if(num2!=0) 
				result = num1 / num2;
			else 
				result =0;
            break;
			}
		}
		public int getResult() {
			return result;
	}
}
