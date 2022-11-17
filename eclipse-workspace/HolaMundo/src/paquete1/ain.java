package paquete1;

import java.util.ArrayList;

public class ain {

	public static void main(String[] args) {
		dni mio = new dni("78397806x");
		
		ArrayList<String> separado = new ArrayList<String>();
		
		separado = mio.obtenerArrayList(mio);
		
		for (int i = 0; i < separado.size(); i++) {
			
			System.out.print(separado.get(i) + " ");
			
		}

	}

}
