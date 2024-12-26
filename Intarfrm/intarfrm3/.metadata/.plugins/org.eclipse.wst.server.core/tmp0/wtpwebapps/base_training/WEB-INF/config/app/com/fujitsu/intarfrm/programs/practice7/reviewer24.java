package com.fujitsu.intarfrm.programs.practice7;

import java.text.SimpleDateFormat;
import java.util.Date;

// ----- Reviewer #24 START -----
//interface SomeInterface {
//    void hoge();
//}
//class SomeClass {
//    void fuga() {
//        System.out.println("Bad morning!");
//    }
//}
//class Hoge extends SomeClass implements SomeInterface{
//    public void hoge() {
//        System.out.println("Good morning!");
//    }
//}
//
//public class reviewer24 {
//	
//    static void main(String[] args) {
//        Hoge hoge = new Hoge();
//        reviewer24.saySomething(hoge);
//    }
//    private static void saySomething(SomeInterface obj) {
//        obj.fuga();
//    }
//    private static void saySomething(SomeClass obj) {
//        obj.fuga();
//    }
//    private static void saySomething(Hoge obj) {
//    }
//
//}
//----- Reviewer #24 END -----

//----- Reviewer #25 START -----
//abstract class Abs1 {
//    abstract void func1();
//    abstract void func2();
//}
//abstract class Abs2 extends Abs1 {
//    abstract void func1(int pram);
//}
//abstract class Cls1 extends Abs2 {
//    abstract void func1();
//    @Override
//    void func2(){
//        System.out.println("func2:Cls1");
//    }
//}
//class Cls2 extends Cls1 {
//    @Override
//    void func1() {
//        System.out.println("func1");
//    }
//    @Override
//    void func2(){
//        System.out.println("func2:Cls2");
//    }
//    @Override
//    void func1(int i){
//        System.out.println("func2:Cls2");
//    }
//}
//----- Reviewer #25 END -----

//----- Reviewer #26 START -----
//interface SomeInterface {
//}
//class SomeClass {
//}
//class Hoge extends SomeClass implements SomeInterface {
//}
//public class reviewer24 {
//    public static void main (String[] args) {
//        Hoge hoge = new Hoge();
//        System.out.println(hoge.getClass() == (Class<?>)Hoge.class);
//        System.out.println(hoge.getClass() == (Class<?>)SomeClass.class);
//        System.out.println(hoge instanceof SomeClass);
//        System.out.println(hoge instanceof SomeInterface);
//    }
//}
//----- Reviewer #26 END -----

//----- Reviewer #36 START -----
//class Foo {
//    public Foo method (int i) { return this; }
//}
//class Bar extends Foo {
//    public Foo method (int i) { return this; }
//}
//class Baz extends Bar {
//	//public void method (long i) { return this; }   // method return is void
//	//public Foo method (long i) { return 3; }  // mismatch cannot convert int to Foo
//	public Bar method (int i) { return this; }
//	//public Baz method (int i) { return 3; }  //mismatch cannot convert int to Baz
//}
//----- Reviewer #36 END -----

//----- Reviewer #37 START -----
//public class reviewer24 {
//
//	public static void main(String[] args) {
//		int i = 1;
//		while (i > 0) {
//		    System.out.println("Process A");
//		    while (i > 0) {
//		        if (i == 1) {
//		            break;
//		        }
//		        System.out.println("Process B");
//		    }
//		    System.out.println("Process C");
//		    i--;
//		}
//		System.out.println("Process D");
//	}
//}
//----- Reviewer #37 END -----

//----- Reviewer #52 START -----
//public class reviewer24 {
//
//	public static void main(String[] args) {
//		double result = 12 / 5 + 2 * 5.5d;
//		System.out.println(result);
//	}
//}
//----- Reviewer #52 END -----

//----- Reviewer #next START -----
//public class reviewer24 {
//
//	public static void main(String[] args) {
//		int value = 0;
//		value = value == 0 ? 2 : 3;
//		value = value < 3 ? 3 % value : 2 % value;
//		System.out.println(value);
//	}
//}
//----- Reviewer #next END -----

//----- Reviewer #22 START -----
//public class reviewer24 {
//
//	public static void main(String[] args) {
//		int num = 1;
//		String str = String.valueOf(num);
//		String str2 = new Integer(num).toString();
//		String str3 = (String) num;
//		String str4 = Integer.toString(num);
//	}
//}
//----- Reviewer #22 END -----

//----- Reviewer #5 START -----
public class reviewer24 {

	public static void main(String[] args) {
		int i = 2;
		select(i);
	}
	
	private static void select(int i) {
		String value = "";
		switch (i) {
			case 1: value = "Red";
			case 2: value = "Blue";
			case 3: value = "Yellow"; break;
			default: value = "White";
		}
		System.out.println(value);
	}
}
//----- Reviewer #5 END -----

//----- Reviewer #6 START -----
//public class reviewer24 {
//
//	public static void main(String[] args) {
//		long value = Long.MAX_VALUE;
//		int num = (int) value;
//		System.out.println(num);
//		float floatNum = (float) value;
//		System.out.println(floatNum);
//		int value2 = Integer.MAX_VALUE;
//		double num2 = (double) value2;
//		System.out.println(num2);
//		float num3 = (float) value2;
//		System.out.println(num3);
//	}
//}
//----- Reviewer #6 END -----

//----- Reviewer #6 START -----
//public class reviewer24 {
//	private static final int MAX = 10000;
//	public static void main(String[] args) {
//		int a[][] = new int[MAX][MAX];
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
//		for (int index1=0; index1 < MAX; index1++) {
//			for (int index2=0; index2 < MAX; index2++) {
//				Date d1 = new Date();
//				String strd1 = sdf.format(d1);
//				System.out.println("Start loop 1 : " + strd1);
//				a[index1][index2] = index1 * index2;
//				Date d2 = new Date();
//				String strd2 = sdf.format(d2);
//				System.out.println("End loop 1 : " + strd2);
//				Date d3 = new Date();
//				String strd3 = sdf.format(d3);
//				System.out.println("Start loop 2 : " + strd3);
//				a[index1][index2] = index1 * index2;
//				Date d4 = new Date();
//				String strd4 = sdf.format(d4);
//				System.out.println("Start loop 2 : " + strd4);
//			}
//			
//		}
//	}
//}
//----- Reviewer #6 END -----
//----- Reviewer #6 START -----
//public class reviewer24 {
//
//	public static void main(String[] args) {
////		char[] data = {'r', 'e', 'd'};
////		String str = new String(data);
////		String str2 = "red";
////		if (str == str2) {
////			System.out.println("Check1");
////		}
////		if (str.equals(str2)) {
////			System.out.println("Check2");
////		}
////		
////		int num = 1;
////		String str = Integer.toString(i)
//	}
//}