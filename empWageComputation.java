import java.util.Random; public class empWageComputation{
	static int Wageper_Hr=20;
	static int empHrs=0;
	static int Fullday_Hr=8;
	static int Partday_Hr=4;
	public static void checkAttendance(){
		int isPresent=1;
		int isAbsent=0;
		Random rand=new Random();
		int r=rand.nextInt(2);
		if(r==isPresent){
			System.out.println("Employee is present");
			checkEmployee(rand.nextInt(2)+1);
		}
		else{
			System.out.println("Employee is absent");
		}
	}
	public static int getDailyWage(){
		int dailyWage=Wageper_Hr*Fullday_Hr;
		return dailyWage;
	}
	public static int getPartTimeWage(){
		int PartTimeWage=Wageper_Hr*Partday_Hr;
		return PartTimeWage;
	}
	public static int checkEmployee(int r){
		int isPartTime=2;
		int isFullTime=1;
		switch(r){
		case 2:
			empHrs+=Partday_Hr;
			return getPartTimeWage();
		case 1:
			empHrs+=Fullday_Hr;
			return getDailyWage();
		}
		return 0;
	}
	public static void MonthlyWage(){
		Random rand=new Random();
		int count=0;
		int MonthlyWage=0;
		int Wage=0;
		while(count!=20 && empHrs!=100){
			Wage=checkEmployee(rand.nextInt(3));
			MonthlyWage+=Wage;
			count++;
		}
		System.out.println("Total wage is "+MonthlyWage);
	}
	public static void main(String[]args){
		System.out.println("welcome to employee wage computation");
		empWageComputation obj=new empWageComputation();
		obj.MonthlyWage();
	}

}
