import java.io.File;
import java.io.IOException;

import org.eclipse.bittorrent.TorrentFile;

public class TestBT {

	public static void main(String[] args) {
		try {
			String path = "f:/Max.Payne3.CHS.HD.torrent";
			TorrentFile btFile = new TorrentFile(new File(path));
			System.out.println(btFile.getInfoHash());

		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// public static void main(String[] args) {
	// String urlStr = "http://zoink.it/torrent/702A285016D389DAB42CA857DBB840742FCB5B5F.torrent";
	//
	// File file = new File("f:\\702A285016D389DAB42CA857DBB840742FCB5B5F.torrent");
	//
	// FileOutputStream fos;
	// try {
	// URL url = new URL(urlStr);
	// HttpURLConnection urlConn = (HttpURLConnection) url.openConnection();
	// InputStream is = urlConn.getInputStream();
	// fos = new FileOutputStream(file);
	// byte[] buffer = new byte[512];
	// int len = 0;
	// while ((len = is.read(buffer)) != -1) {
	// fos.write(buffer, 0, len);
	// }
	// is.close();
	// fos.flush();
	// fos.close();
	// } catch (FileNotFoundException e) {
	// // TODO Auto-generated catch block
	// e.printStackTrace();
	// } catch (IOException e) {
	// // TODO Auto-generated catch block
	// e.printStackTrace();
	// }
	// }

}
