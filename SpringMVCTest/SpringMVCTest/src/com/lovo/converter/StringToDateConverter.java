//package com.lovo.converter;
//
//import com.sun.xml.internal.ws.commons.xmlutil.Converter;
//
//import java.text.ParseException;
//import java.text.SimpleDateFormat;
//import java.util.Date;
//
///**
// * 自定义字符串转换日期类型转换器
// */
//public class StringToDateConverter implements Converter<String, Date> {
//    @Override
//    public Date convert(String s) {
//        Date parse = null;
//        SimpleDateFormat simpleDateFormat = null;
//
//        String a = "[0-9]{4}-[0-9]+-[0-9]+";//yyyy-MM-dd
//        String b = "[0-9]{4}/[0-9]+/[0-9]+";//yyyy/MM/dd
//        if (s.matches(a)) {
//            simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
//
//        }
//        if (s.matches(b)) {
//            simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd");
//
//        }
//        try {
//
//            parse = simpleDateFormat.parse(s);
//        } catch (ParseException e) {
//            e.printStackTrace();
//        }
//
//
//        return parse;
//    }
//
////    @Override
////    public Date convert(String s) {
////        Date parse = null;
////        s = s.replace("/", "-");
////        SimpleDateFormat simpleDateFormat = null;
////
////        simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
////
////        try {
////
////            parse = simpleDateFormat.parse(s);
////        } catch (ParseException e) {
////            e.printStackTrace();
////        }
////
////
////        return parse;
////    }
//}
