
import java.util.Random;
import java.util.Scanner;
import java.util.LinkedList;
import java.util.HashMap;
import org.json.simple.JSONObject;
public class empWageComputation{
	private static Scanner in=new Scanner(System.in);
	private static int monthlyWage=0;
	private static LinkedList<CompanyEmpWage> li=new LinkedList<CompanyEmpWage>();
	private static HashMap<String,JSONObject> m=new HashMap<String,JSONObject>();
	public static int getDailyWage(int wageper_Hr){
		int fullday_Hr=8;
		return calculateWage(fullday_Hr,wageper_Hr);
	}
	public static int getPartTimeWage(int wageper_Hr){
		int partday_Hr=4;
		return calculateWage(partday_Hr,wageper_Hr);
	}
	public static int calculateWage(int workingHrs,int wageper_Hr){
		return wageper_Hr*workingHrs;
	}
	public static int checkEmployee(int ch,int wageper_Hr){
		final int isPartTime=2;
		final int isFullTime=1;
		switch(ch){
		case isPartTime :
			return getPartTimeWage(wageper_Hr);
		case isFullTime :
			return getDailyWage(wageper_Hr);
		default:
			return 0;
		}
	}
	public static int calculateEmpWage(int totalWorkingHrs,int totalWorkingDays,int wageper_Hr){
		Random rand=new Random();
		int monthlyWage=0;
		int wage=0;
		int count=0;
		int workingHrs=0;
		while(count!=totalWorkingDays && workingHrs!=totalWorkingHrs){
			wage=checkEmployee(rand.nextInt(3),wageper_Hr);
			monthlyWage+=wage;
			count++;
		}
		return monthlyWage;

	}
	public static void add(int n,String companyName,int totalWorkingDays,int totalWorkingHrs,int empWagePerHr) {
		li.add(new CompanyEmpWage(companyName,totalWorkingDays, empWagePerHr, totalWorkingHrs));
	}
	@SuppressWarnings("unchecked")
	public static void calculateEmpWage(){
		System.out.println("How many no of companies wages you want to calculate");
		int n=in.nextInt();
		for(int i=0;i<n;i++){
			in.nextLine();
			System.out.println("which company wage you want to calculate");
			String companyName=in.nextLine();
			System.out.println("Enter wage per hr");
			int wageper_Hr=in.nextInt();
			System.out.println("Enter total monthly days");
			int monthlyWorkingDays=in.nextInt();
			System.out.println("Enter total working hrs");
			int totalWorkingHrs=in.nextInt();
			add(i,companyName,monthlyWorkingDays,totalWorkingHrs,wageper_Hr);
			monthlyWage=calculateEmpWage(li.get(i).getTotalWorkingHrs(),li.get(i).getTotalWorkingDays(),li.get(i).getempWagePerHr());
			li.get(i).setEmpWage(monthlyWage);
			JSONObject jo=new JSONObject();
			jo.put("TotalWorkingHrs",li.get(i).getTotalWorkingHrs() );
			jo.put("TotalWorkingDays",li.get(i).getTotalWorkingDays());
			jo.put("WagePerHr",li.get(i).getempWagePerHr());
			jo.put("MonthlyWage", monthlyWage);
			m.put(li.get(i).getCompanyName(), jo);
		}
	}
	public static void main(String[]args){
		calculateEmpWage();
		System.out.println(m.toString());
		in.close();
	}

}
