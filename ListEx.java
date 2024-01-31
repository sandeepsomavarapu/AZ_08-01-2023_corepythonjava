package com.astra.collections;

import java.util.Stack;

// Both Homogeneous and Heterogeneous Objects are allowed
// growable in nature 
// lots utility methods
//List
//duplicates are allowed 
//insertion order is preserved 

public class ListEx {

	public static void main(String[] args) {
		Stack<String> names = new Stack<String>();// 10,16 -->(cc*3/2)+1
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
