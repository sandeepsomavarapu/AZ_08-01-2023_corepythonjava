package com.astra.collections;

import java.util.ArrayList;
import java.util.Iterator;

// Both Homogeneous and Heterogeneous Objects are allowed
// growable in nature 
// lots utility methods
//List
//duplicates are allowed 
//insertion order is preserved 

public class ListEx {

	public static void main(String[] args) {
		ArrayList<String> names = new ArrayList<String>();// 10,16 -->(cc*3/2)+1
		names.add("suresh");
		names.add("naresh");
		names.add("akash");
		names.add("bhragav");
		names.add("somesh");
		names.add("hitesh");
		names.add("rajesh");
		names.add("naresh");

		Iterator<String> itr = names.iterator();
		while (itr.hasNext())
			System.out.println(itr.next());
		
		System.out.println("*******************************");
		
		System.out.println(names.isEmpty());
		System.out.println(names.size());
		System.out.println(names.contains("sandeep"));

		System.out.println(names);
		names.remove("akash");
		System.out.println(names);
		ArrayList<String> names1 = new ArrayList<String>();

		names1.add("nihasvi");
		names1.add("nihas");
		System.out.println("Before :" + names1);
		names1.addAll(names);
		System.out.println("After :" + names1);
		// names1.removeAll(names);
		// names1.retainAll(names);
		// names1.clear();
		System.out.println(names1.containsAll(names));
		System.out.println(names1);

	}

}
