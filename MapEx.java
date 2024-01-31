package com.astra.collections;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public class MapEx {

	public static void main(String[] args) {

		HashMap<Integer, String> map = new HashMap<Integer, String>();
		map.put(111, "mahesh");
		map.put(21, "suresh");
		map.put(42, "rajesh");
		map.put(90, "naresh");
		map.put(32, "kumar");
		map.put(111, "sandeep");
//		System.out.println(map.get(32));
//		System.out.println(map.remove(32));
		System.out.println(map);

		HashMap<Integer, String> map1 = new HashMap<Integer, String>();
		map1.putAll(map);
		System.out.println(map1);

//		Set<Integer> keys = map.keySet();
//		Iterator<Integer> itr = keys.iterator();
//
//		while (itr.hasNext()) {
//			int key=itr.next();
//			System.out.println(key+" "+map.get(key));
//		}
		Set<Entry<Integer, String>> keys = map.entrySet();
		Iterator<Entry<Integer, String>> itr = keys.iterator();

		while (itr.hasNext()) {
			Entry<Integer, String> entries = itr.next();
			System.out.println(entries.getKey() + " " + entries.getValue());
		}
	}

}
