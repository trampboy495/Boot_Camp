public class SampleJava {
	SampleJava(int a){
		this(a,6);
	}
	SampleJava(int a, int b){
		this(a,b,a+b);
	}
	SampleJava(int a,int b,int c){
		System.out.println("the result of addition "+a+" and "+b+" is "+c);
	}
	public static  void main(String[]args){
		new SampleJava(Integer.parseInt(args[0]));
	}
}
