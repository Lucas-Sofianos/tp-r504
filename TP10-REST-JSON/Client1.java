import java.io.* ;
import java.net.* ;

import org.apache.http.HttpEntity;
import org.apache.http.client.*;
import org.apache.http.client.methods.*;
import org.apache.http.impl.client.*;

public class Client1
{
	public static void main( String[] args )
	{
		try {
		
		 // Vérifier si au moins un argument est passé
			if (args.length == 0) {
			    System.out.println("Erreur : Veuillez fournir au moins un argument.");
			    System.exit(1); // Quitter le programme avec un code d'erreur
			}

			// Le reste du code ici, une fois que l'argument est confirmé
			System.out.println("Arguments fournis :");
			for (String arg : args) {
			    System.out.println(arg);
			}

			// code a executer
			CloseableHttpClient client = HttpClients.createDefault();
			String url = "http://" + args[0] ;
			HttpGet request = new HttpGet(url);
		
		}
		catch( Exception ex ) {
			System . out . println( " erreur ! " ) ;
			ex . printStackTrace ( ) ;
		}
	}
}
