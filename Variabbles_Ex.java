class Variables_Ex
{
	int id=123;//global variable -->instance ,static 4 bytes
	static int countryCode=91;
	public static void main(String args[])
	{
		byte age=31;//local variable
		long contact=9494348734l;
		float salary=98.2349236492294f;
		double result=98.2349236492294;
		char gender='m';
		boolean value=true;
	
		System.out.println(age+" "+contact+" "+salary+" "+result+" "+gender+" "+value);
		
		
		System.out.println(Variables_Ex.countryCode);
		Variables_Ex obj=new Variables_Ex();
		System.out.println(obj.id);
		
		
		
		
	}

}