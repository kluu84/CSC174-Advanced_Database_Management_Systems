import java.sql.*;

public class LUU_HW4
{
	public void displayData(String urlStr, String username, String password)
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver").newInstance ();
			Connection connect = DriverManager.getConnection(urlStr, username, password);
			System.out.println("Welcome to the MySQL database\n");
			
			//Problem 1//
			//Display all the students (ssn, student name) who enrolled in the courses of 'Programming Languages'//

			System.out.println("Problem 1\n");
			Statement statement1 = connect.createStatement();
			ResultSet result1=null;
			result1=statement1.executeQuery("select S.SSN, S.STUDENTNAME from STUDENT AS S, ENROLLED AS E, COURSE AS C where C.COURSENAME = 'Programming Languages' AND C.COURSENO = E.COURSENO AND E.SSN =S.SSN");
			System.out.println("Printing from COURSE where COURSENAME is Programming Lanuages \n");

			while (result1.next())
			{
				System.out.println("ssn: "+result1.getInt(1));
				System.out.println("studentName: "+result1.getString(2)+"\n\n");
			}
			statement1.close(); //ends problem 1//


			//Problem 2//
			//Query 'TA_course' view (created in homework2) to display all the tuples in that view//

			System.out.println("Problem 2\n");
			Statement statement2 = connect.createStatement();
			ResultSet result2=null;
			result2=statement2.executeQuery("select * from TA_COURSE");
			System.out.println("Printing from TA_COURSE \n");
			while(result2.next())
			{
				System.out.println("TA_Name:  "+result2.getString(1));
				System.out.println("TA_Email:  "+result2.getString(2));
				System.out.println("Course_Name:  "+result2.getString(3)+"\n\n");
			}
			statement2.close(); //ends problem 2//



			//Problem 3//
			//Call 'Course_Instructor' function (created in homework2)//
			//Given course name 'Programming Languages', display the instructor name.//
			//You need to insert data to the database before you call this function, such that the function can returns at least one result.//
			
			System.out.println("Problem 3\n");
			CallableStatement callStatement = connect.prepareCall("{? = call Course_Instructor(?)}"); //call a function//
			callStatement.registerOutParameter(1, Types.VARCHAR);
			callStatement.setString(2, "PROGRAMMING LANGUAGES");
			callStatement.execute();
			System.out.println("The instructor name of Programming Languages: "+ callStatement.getString(1));
			callStatement.close(); //end problem 3//
		

			//ending connection LUU_HW4//
			connect.close();
			System.out.println("\nDisconnected");
		}
		
		catch(Exception i)
		{
			i.printStackTrace();
		}
	}
	

	//main file//
	public static void main(String argr [])
	{
		String url = "jdbc:mysql://athena.ecs.csus.edu/cs174116";
		String username = "cs174116";
		String password = "rsagirvn";

		LUU_HW4 example = new LUU_HW4();
		example.displayData(url, username, password);
	}//end main file//
}