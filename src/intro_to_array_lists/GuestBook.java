package intro_to_array_lists;

import java.awt.Frame;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.EventObject;

public class GuestBook {
	// Create a GUI with two buttons. One button reads "Add Name" and the other button reads "View Names". 
	public void actionPerformed(ActionEvent e) {
		JButton buttonClicked = (JButton)e.getSource();
		}
	
	public static void main(String[] args) {
		//EventObject e;
		//JButton buttonClicked = (JButton)e.getSource();
		JButton ad = new JButton();
		JButton view = new JButton();
		JFrame frame = new JFrame();
		JPanel pan = new JPanel();
		JButton buttonClicked = new JButton();
		frame.add(pan);
		pan.add(ad);
		pan.add(view);
		ad.addActionListener(null);
		view.addActionListener(null);
		ad.setText("Add Name");
		view.setText("View Name");
		frame.setVisible(true);
		frame.setSize(500, 500);
		if(ad == buttonClicked){
		String nam = JOptionPane.showInputDialog("Please add a name");
		
		}
		ArrayList<String> names = new ArrayList<String>();
		names.add("Bob Banders");
		names.add("Sandy Summers");
		names.add("Greg Ganders");
		names.add("Donny Doners");
		if(view == buttonClicked ){
		for(int i = 0; i <  names.size(); i++){
			
			System.out.println("Guest #" + (i+1) + ": " + names.get(i));
			}
		}
	
	}
	// When the add name button is clicked, display an input dialog that asks the user to enter a name. Add

	// that name to an ArrayList. When the "View Names" button is clicked, display a message dialog that displays
	// all the names added to the list. Format the list as follows:
	// Guest #1: Bob Banders
	// Guest #2: Sandy Summers
	// Guest #3: Greg Ganders
	// Guest #4: Donny Doners
}
