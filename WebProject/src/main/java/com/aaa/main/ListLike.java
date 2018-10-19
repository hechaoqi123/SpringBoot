package com.aaa.main;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.aaa.bean.Users;

public class ListLike {

	public static void main(String[] args) {
		List<Users> list = new ArrayList<Users>();
		List<Users> list2 = new ArrayList<Users>();
		for(int i=0;i<10;i++){
			Users u = new Users(i+"uname",i+"pass");
			list.add(u);
		}
		for (Users users : list) {
			System.out.println(users);
		}
		
		Pattern pattern = Pattern.compile(1+"u",Pattern.CASE_INSENSITIVE);
		for(int i=0; i < list.size(); i++){
			Matcher matcher = pattern.matcher(((Users)list.get(i)).getUnum());
			System.out.println("matcher:  "+matcher.matches());
			if(matcher.matches()){
				System.out.println("list2:   "+list.get(i));
				//list2.add(list.get(i));
			}
		}
		System.out.println("---------------------------------------"+list2.size());
		for (Users users : list2) {
			System.out.println(users);
		}
		
	}

}
