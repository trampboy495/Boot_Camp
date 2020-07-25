package com.Employee;
import java.util.LinkedList;
import java.util.HashMap;
import java.util.Random;
import org.json.simple.JSONObject;;
public class EmployeeWageBuilder{
	private static int monthlyWage;
	private static HashMap<String,JSONObject> m=new HashMap<String,JSONObject>();
	private static LinkedList<ComputeEmpWage> li=new LinkedList<ComputeEmpWage>();
	public static void add(String companyName,int totalWorkingDays,int totalWorkingHrs,int empWagePerHr) {
		li.add(new ComputeEmpWage(companyName,totalWorkingDays, empWagePerHr, totalWorkingHrs));
	}
	@SuppressWarnings("unchecked")
	public static void empWageCalculator() {
		for(int i=0;i<li.size();i++) {
			monthlyWage=empWageCalculator(li.get(i).getTotalWorkingHrs(),
					li.get(i).getTotalWorkingDays(),li.get(i).getempWagePerHr());
			li.get(i).setEmpWage(monthlyWage);
			JSONObject jo=new JSONObject();
			jo.put("TotalWorkingHrs",li.get(i).getTotalWorkingHrs() );
			jo.put("TotalWorkingDays",li.get(i).getTotalWorkingDays());
			jo.put("WagePerHr",li.get(i).getempWagePerHr());
			jo.put("MonthlyWage", monthlyWage);
			m.put(li.get(i).getCompanyName(), jo);
		}
	}
	public static int getDailyWage(int wageper_Hr){
        int fullday_Hr=8;
        int dailyWage=wageper_Hr*fullday_Hr;
        return dailyWage;
	}
	public static int getPartTimeWage(int wageper_Hr){
        int partday_Hr=4;
        int partTimeWage=wageper_Hr*partday_Hr;
        return partTimeWage;
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

	public static int empWageCalculator(int totalWorkingHrs,int totalWorkingdays,int wageper_Hr) {
		 Random rand=new Random();
         int monthlyWage=0;
         int wage=0;
         int count=0;
         int workingHrs=0;
         while(count!=totalWorkingdays && workingHrs!=totalWorkingHrs){
                 wage=checkEmployee(rand.nextInt(3),wageper_Hr);
                 monthlyWage+=wage;
                 count++;
         }
         return monthlyWage;

	}
	public static void main(String[]args) {
		add("Reliance", 20, 100, 80);
		add("D-Mart", 30, 120, 50);
		empWageCalculator();
		System.out.println(m.toString());
	}
	
}
	