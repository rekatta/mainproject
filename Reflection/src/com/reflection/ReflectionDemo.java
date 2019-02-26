package com.reflection;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class ReflectionDemo {
	
	public static void main(String args[]) throws NoSuchMethodException, SecurityException, IllegalAccessException, IllegalArgumentException, InvocationTargetException
	{
		Employee e=new Employee();
		Class cl=e.getClass();
		System.out.println(cl.getName());
		Method[] m=cl.getMethods();
		for(Method m1:m)
		{
			System.out.println(m1.getName());
		}
	   Method mc=cl.getDeclaredMethod("renu");
	   mc.invoke(e);
	}
	

}
