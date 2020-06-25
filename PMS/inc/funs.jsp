<%@ page  import="java.text.DateFormat"
		  import="java.util.Date"
%>
<%!public String getStr(String str)
{
	try
		{
     String temp_p=str;
		 byte[] temp_t=temp_p.getBytes("ISO8859-1");
		 String temp=new String(temp_t);
		 return temp;
  	}
	catch(Exception e){};
	return null;
}
%>

<%!public static String toUtf8String(String s)
{
	StringBuffer sb = new StringBuffer();
	for (int i=0;i<s.length();i++)
	{
	    char c = s.charAt(i);
	    if (c >= 0 && c <= 255)
		{
			sb.append(c);
	    } 
		else
		{
			byte[] b;
			try
			{
				b = Character.toString(c).getBytes("utf-8");
			}
			catch (Exception ex){System.out.println(ex); b = new byte[0];}
			for (int j = 0; j < b.length; j++)
			{
			    int k = b[j];
				if (k < 0) k += 256;
				sb.append("%" + Integer.toHexString(k).
				toUpperCase());
			}
	    }
	}
	return sb.toString();
}
%>

<%!
public long dayDiff(String samllDate,String biggerDate)
{
	long days=0;
  DateFormat df = DateFormat.getDateInstance();
  try
	{
	  Date d1=df.parse(samllDate);
      Date d2=df.parse(biggerDate);
      days=(d2.getTime()-d1.getTime())/3600/24/1000;
	}catch(java.text.ParseException e){}
  return days;
}

%>
<%!
public long hourDiff(String samllDate,String biggerDate)
{
  long hours=0;
  DateFormat df = DateFormat.getDateTimeInstance();
  try
	{
	  Date d1=df.parse(samllDate);
      Date d2=df.parse(biggerDate);
	  hours=(d2.getTime()-d1.getTime())/3600/1000;
	}catch(java.text.ParseException e){}
  return hours;
}
%>
<%!
public long secondDiff(String samllDate,String biggerDate)
{
  long second=0;
  DateFormat df = DateFormat.getDateTimeInstance();
  try
	{
	  Date d1=df.parse(samllDate);
      Date d2=df.parse(biggerDate);
	  second=(d2.getTime()-d1.getTime())/1000;
	}catch(java.text.ParseException e){}
  return second;
}
%>
<%!
public String getDTString(String smallDate,String biggerDate)
{
	long b=secondDiff(smallDate,biggerDate);
	String m="";
	if(b<60)
		m=b+".秒前";
  else
  {
    b=b/60;
    if(b<60)
    	m=b+".分钟前";
    else
    {
    	b=b/60;
    	if(b<24)
    		m=b+".小时前";
    	else
    	{
    		b=b/24;
    		if(b<30)
    			m=b+".天前";
    		else
    		{
    			b=b/30;
    			if(b<12)
    				m=b+".个月前";
    			else
    				m=b*30/365+".年前";
    		}
    	}
    }
  }
	int pos=m.indexOf(".");
	String d1=m.substring(0,pos);
	String d2=m.substring(pos+1);
	return num2cn(d1)+d2;
}
%>


<%

//函数名称：数字转化成汉字
//参数：num,需要转化的数字，必须是纯数字
//返回值：汉字数字
//例子：return num2cn("12345"):一万二千三百四十五
//制作：孙太国，2004-06
%>
<%!public boolean IsZero(char ch)
	{
		return ch<'1' || ch>'9';
	}
%>
<%!public String num2cn(String num)
{
  String digits="0123456789";
  String[] vCDigits={"零", "一", "二", "三", "四", "五", "六", "七", "八", "九"};
  String[] vCUnitsN={"亿", "万", "千", "百", "十"};
  int[]    vCUnitsP={8,4,3,2,1};
  int b = 0;
  String rslt="";
  while (b < num.length() && IsZero(num.charAt(b))) b++;
  if (b == num.length()) return "";

  String z = b > 0? vCDigits[0] : "";

  int i = 0;
  num = num.substring(b);
  while (i < vCUnitsP.length && num.length() <= vCUnitsP[i]) i++;
	int j=0;int k=0;
  if (i < vCUnitsP.length) 
  {
    j = num.length()-vCUnitsP[i];
    k = IsZero(num.charAt(j-1))? j-1 : j;
    rslt=z+num2cn(num.substring(0, j))+vCUnitsN[i]+num2cn(num.substring(k, num.length()));
  }
  else
	rslt=z+vCDigits[digits.indexOf(num)];
	return rslt;
}
%>