public class Helloworld
{
	public static void main(String args[])
	{
		while(true)
		{
			System.out.println("Hello");
			try{
				Thread.sleep(600);
				}
			catch(Exception ex)
				{
				System.out.println(ex);
				}
		}
	}

}
