import java.io.* ;
import java.net.* ;
import javax.json.* ;

import org.apache.http.HttpEntity;
import org.apache.http.client.*;
import org.apache.http.client.methods.*;
import org.apache.http.impl.client.*;


//pour faire fonctionner le programme utiliser une URL de ce type depuis le site https://omdbapi.com/
//www.omdbapi.com/?APIKEY="$apikey"&t=mario
//Pour tester : ./run.sh Client2 "www.omdbapi.com/?APIKEY=751ea6aa&t=oppenheimer"
public class Client2
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
			
			System.out.println( "Executing request " + request.getRequestLine() );
			CloseableHttpResponse resp = client.execute(request);
			
			System.out.println( "Response Line: " + resp.getStatusLine() );
			System.out.println( "Response Code: " + resp.getStatusLine().getStatusCode() );
		
			InputStreamReader isr = new InputStreamReader( resp.getEntity().getContent() );	
			
			JsonReader reader = Json.createReader(isr);
			JsonObject jsonObject = reader.readObject();
			
			System.out.println( "duree=" + jsonObject.getString("Runtime") );
			
			reader.close();
			isr.close();
				
		}
		catch( Exception ex ) {
			System . out . println( " erreur ! " ) ;
			#ex . printStackTrace ( ) ;
		}
	}
}
