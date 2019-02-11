package intro_to_array_lists;

import java.util.ArrayList;

public class IntroToArrayLists {
	public static void main(String[] args) {
		//1. Create an array list of Strings
		//   Don't forget to import the ArrayList class
		ArrayList<String> list = new ArrayList<String>();
		//2. Add five Strings to your list
		list.add("Hey");
		list.add("Hello");
		list.add("Howdy");
		list.add("hi");
		list.add("salutations!");
		//3. Print all the Strings using a standard for-loop
		for(int i = 0; i < list.size(); i++){
			System.out.println(list.get(i));
		}
		//4. Print all the Strings using a for-each loop
		
		
		//5. Print only the even numbered elements in the list.
		
		//6. Print all the Strings in reverse order.
		for(int i = list.size()-1; i > 0; i--){
			System.out.println(list.get(i));
		}
		//7. Print only the Strings that have the letter 'e' in them.
		
	}
}
