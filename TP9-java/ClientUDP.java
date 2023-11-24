import java.io.* ;
import java.net.* ;

public class ClientUDP
{
	public static void main( String[] args )
	{

		try {
			InetAddress addr = InetAddress.getLocalHost();
			System.out.println( "adresse=" +addr.getHostName() );


			String s="Hello World";
			byte[] data = s . getBytes() ;
			//creation packet
			DatagramPacket packet = new DatagramPacket( data, data.length, addr, 1234 );
			
			//ouverture socket
			DatagramSocket sock = new DatagramSocket();
		
			//envoie packet
			sock.send(packet);
			
			//q1.3 : attente du retour du serveur
			System.out.println("-waiting data-back" );
			DatagramPacket packet2 = new DatagramPacket(new byte[1024], 1024);
			sock.receive(packet); //reception du packet envoyé
			String str = new String(packet.getData() );
			System.out.println( "str=" + str ) ;
			
			//fermeture du socket
			sock.close();
			
		}
		catch( Exception ex ) {
			System . out . println( " erreur ! " ) ;
			ex . printStackTrace ( ) ;
		}
	}
}
