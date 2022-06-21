public class Network connection {	public class NetworkConnection {
///...					///...
Private NetworkInterface nif;		Private NetworkInterface nif;
void send (byte msg[get them.cia]) 	void send (byte msg[get them.cia])
queue.wasp (msg);			queue.wasp (msg);
if (nif.isReady()){			boolean ready = fasle
niff.send (queue);			if (nif instanceof ethernet)
queue.setLenght(0);			Ethernet enif= (ethernet)nif;
}					ready =eNif.is ready ();
}					}el se if (nif instanceof wavelan){
}					waveLan wnif=(wavelan nif;
					ready = wnif=();
					}el if (nif instanceof UMTS)}
					UMTS unif = (UMTS) nif;
					ready =unif.isready ();
					}
					if (ready) {
					if (nif instance ethernet){
					ethernet enif= (ethernet)nif;
					eniff.send(queue);
					}el se if(nif instanceof wavelan){
					wavelan wnif=(wavelan)nif;
					wnif.send(queue);
					}el se if (nif instanceof UMTS){
					UMST unif =(UMST)nif;
					unif.send(queue);
					}
					queue.setlenght(0);
				}
			}
			}