package com.astra.collections;

import java.util.TreeSet;

// Both Homogeneous and Heterogeneous Objects are allowed
// growable in nature 
// lots utility methods
//Set
//duplicates are  not allowed 
//insertion order is not preserved 

public class SetEx {

	public static void main(String[] args) {
		TreeSet<String> names = new TreeSet<String>();// 10,16 -->(cc*3/2)+1
		names.add("suresh");
		names.add("naresh");
		names.add("akash");
		names.add("bhragav");
		names.add("somesh");
		names.add("hitesh");
		names.add("rajesh");
		names.add("naresh");
		System.out.println(names);

	}

}
