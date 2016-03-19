package com.liangxunwang.unimanager.util;


import jxl.Workbook;
import jxl.format.CellFormat;
import jxl.write.*;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * author: liuzwei
 * Date: 2014/7/29
 * Time: 18:11
 * 类的功能、说明写在此处.
 */
public class StringUtil {
    public static boolean isNullOrEmpty(String str) {
        return str == null || str.trim().isEmpty();
    }

    public static boolean isEmail(String str) {
        String pattern1 = "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
        Pattern pattern = Pattern.compile(pattern1);
        Matcher mat = pattern.matcher(str);
        return !mat.find();
    }

    /**
     * 取出一段字符串中的一个img标签
     */
    public static String selsrcSingle(String str) {
        String ss = "";
        Pattern p = Pattern.compile("<img[^>]+src\\s*=\\s*['\"]([^'\"]+)['\"][^>]*>");//<img[^<>]*src=[\'\"]([0-9A-Za-z.\\/]*)[\'\"].(.*?)>");
        Matcher m = p.matcher(str);
        while (m.find()) {
            ss = m.group(1);
        }
        return ss;
    }

    /**
     * 判断是否为手机号
     * @param mobiles
     * @return
     */
    public static boolean isMobileNO(String mobiles) {
        Pattern p = Pattern.compile("^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$");
        Matcher m = p.matcher(mobiles);
        return m.matches();
    }

    /**
     * 校验是否为正整数
     * @param intStr
     * @return
     */
    public static final boolean isValidInteger(String intStr) {
        return (intStr == null) ? false : intStr.matches("\\d+");
    }

    /**
     * 查询文件夹下面所有文件名
     * path:文件夹地址  例："C://Documents and Settings//yinxm//デスクトップ//TestFile"
     * */
    public static String[] getFile(String path){
        // get file list where the path has
        File file = new File(path);
        // get the folder list
        File[] array = file.listFiles();
        String[] arrayTitle = new String[array.length];
        for(int i=0;i<array.length;i++){
            if(array[i].isFile()){
                // only take file name
//                System.out.println("^^^^^" + array[i].getName());
                arrayTitle[i] = array[i].getName();
                // take file path and name
//                System.out.println("#####" + array[i]);
                // take file path and name
//                System.out.println("*****" + array[i].getPath());
            }else if(array[i].isDirectory()){
                getFile(array[i].getPath());
            }
        }
        return arrayTitle;
    }
    /**
     * 删除某个文件夹下的所有文件夹和文件
     */
        public static boolean deletefile(String delpath)
                        throws FileNotFoundException, IOException {
                try {
                        File file = new File(delpath);
                        if (!file.isDirectory()) {
//                                System.out.println("不是文件夹");
                                file.delete();
                        } else if (file.isDirectory()) {
                                System.out.println("2");
                                String[] filelist = file.list();
                                for (int i = 0; i < filelist.length; i++) {
                                        File delfile = new File(delpath + "\\" + filelist[i]);
                                        if (!delfile.isDirectory()) {
//                                                System.out.println("path=" + delfile.getPath());
//                                                System.out.println("absolutepath="
//                                                                + delfile.getAbsolutePath());
//                                                System.out.println("name=" + delfile.getName());
                                                delfile.delete();
//                                                System.out.println("删除文件成功");
                                        } else if (delfile.isDirectory()) {
                                                deletefile(delpath + "\\" + filelist[i]);
                                        }
                                }
//                                file.delete();//这个是删除该文件夹的
                        }
                } catch (FileNotFoundException e) {
//                        System.out.println("deletefile()   Exception:" + e.getMessage());
                }
                return true;
        }



    /**
     * create the order info. 创建订单信息
     *
     */
    public static String getOrderInfo(String outTradeNo, String subject, String body, String price) {
        // 签约合作者身份ID
        String orderInfo = "partner=" + "\"" + Constants.PARTNER + "\"";

        // 签约卖家支付宝账号
        orderInfo += "&seller_id=" + "\"" + Constants.SELLER + "\"";

        // 商户网站唯一订单号
        orderInfo += "&out_trade_no=" + "\"" + outTradeNo + "\"";

        // 商品名称
        orderInfo += "&subject=" + "\"" + subject + "\"";

        // 商品详情
        orderInfo += "&body=" + "\"" + body + "\"";

        // 商品金额
        orderInfo += "&total_fee=" + "\"" + price + "\"";

        // 服务器异步通知页面路径
        orderInfo += "&notify_url=" + "\"" + "http://notify.msp.hk/notify.htm"
                + "\"";

        // 服务接口名称， 固定值
        orderInfo += "&service=\"mobile.securitypay.pay\"";

        // 支付类型， 固定值
        orderInfo += "&payment_type=\"1\"";

        // 参数编码， 固定值
        orderInfo += "&_input_charset=\"utf-8\"";

        // 设置未付款交易的超时时间
        // 默认30分钟，一旦超时，该笔交易就会自动被关闭。
        // 取值范围：1m～15d。
        // m-分钟，h-小时，d-天，1c-当天（无论交易何时创建，都在0点关闭）。
        // 该参数数值不接受小数点，如1.5h，可转换为90m。
        orderInfo += "&it_b_pay=\"30m\"";

        // extern_token为经过快登授权获取到的alipay_open_id,带上此参数用户将使用授权的账户进行支付
        // orderInfo += "&extern_token=" + "\"" + extern_token + "\"";

        // 支付宝处理完请求后，当前页面跳转到商户指定页面的路径，可空
        orderInfo += "&return_url=\"m.alipay.com\"";

        // 调用银行卡支付，需配置此参数，参与签名， 固定值 （需要签约《无线银行卡快捷支付》才能使用）
        // orderInfo += "&paymethod=\"expressGateway\"";

        return orderInfo;
    }

    /**
     * sign the order info. 对订单信息进行签名
     *
     * @param content
     *            待签名订单信息
     */
    public static String sign(String content) {
        return SignUtils.sign(content, Constants.RSA_PRIVATE);
    }



    /**
     *
     * 基本功能：替换指定的标签
     * @author linshutao
     * @param str
     * @param beforeTag   要替换的标签
     * @param tagAttrib   要替换的标签属性值
     * @param startTag    新标签开始标记
     * @param endTag   新标签结束标记
     * @return String
     */
    public   static String replaceHtmlTag(String str, String beforeTag,
                                          String tagAttrib, String startTag, String endTag) {
        //  String regxpForTag = "<//s*" + beforeTag + "//s+([^>]*)//s*>" ;
        String regxpForTag = "<//s*" + beforeTag + "//s+([^>]*)//s*" ;
        String regxpForTagAttrib = tagAttrib  ;
        //Pattern.CASE_INSENSITIVE 忽略大小写
        Pattern patternForTag = Pattern.compile (regxpForTag,Pattern. CASE_INSENSITIVE );
        Pattern patternForAttrib = Pattern.compile (regxpForTagAttrib,Pattern. CASE_INSENSITIVE );
        Matcher matcherForTag = patternForTag.matcher(str);
        StringBuffer sb = new StringBuffer ();
        boolean result = matcherForTag.find();
        // 循环找出每个 img 标签
        while (result) {
            StringBuffer sbreplace = new StringBuffer( "<img " );
            Matcher matcherForAttrib = patternForAttrib.matcher(matcherForTag
                    .group(1));
            if (matcherForAttrib.find()) {
                matcherForAttrib.appendReplacement(sbreplace, startTag
                        + matcherForAttrib.group(1) + endTag);
            }
            matcherForAttrib.appendTail(sbreplace);
            matcherForTag.appendReplacement(sb, sbreplace.toString());
            result = matcherForTag.find();
        }
        matcherForTag.appendTail(sb);
        return sb.toString();
    }

    public static int getIntMethod(int one , int two){
        Double ione = (Double)(one + Math.random()*(two - one));
        String doustr=""+ione;
        String intes=doustr.substring(0,doustr.indexOf("."));
        int i = Integer.parseInt(intes);
        return i;
    }

    public static String tranStarToNum(String star){
        String sNum ="" ;
        if(star.equals("vip1")){
            sNum="1";
        }
        if(star.equals("vip2")){
            sNum="2";
        }
        if(star.equals("vip3")){
            sNum="3";
        }
        if(star.equals("vip4")){
            sNum="4";
        }
        if(star.equals("vip5")){
            sNum="5";
        }
        return sNum;
    }

//    public static void JXLExample(){
//        // 准备设置excel工作表的标题
//        String[] title = {"编号","产品名称","产品价格","产品数量","生产日期","产地","是否出口"};
//        try {
//            // 获得开始时间
//            long start = System.currentTimeMillis();
//            // 输出的excel的路径
//            String filePath = "e://testJXL.xls";
//            // 创建Excel工作薄
//            WritableWorkbook wwb;
//            // 新建立一个jxl文件,即在e盘下生成testJXL.xls
//            OutputStream os = new FileOutputStream(filePath);
//            wwb= Workbook.createWorkbook(os);
//            // 添加第一个工作表并设置第一个Sheet的名字
//            WritableSheet sheet = wwb.createSheet("用户表", 0);
//            Label label;
//            for(int i=0;i<title.length;i++){
//                // Label(x,y,z) 代表单元格的第x+1列，第y+1行, 内容z
//                // 在Label对象的子对象中指明单元格的位置和内容
//                label = new Label(i,0,title[i]);
//                // 将定义好的单元格添加到工作表中
//                sheet.addCell(label);
//            }
//            // 下面是填充数据
//                             /*
// 53              * 保存数字到单元格，需要使用jxl.write.Number
// 54              * 必须使用其完整路径，否则会出现错误
// 55              * */
//            // 填充产品编号
//            jxl.write.Number number = new jxl.write.Number(0,1,20071001);
//            sheet.addCell(number);
//            // 填充产品名称
//            label = new Label(1,1,"金鸽瓜子");
//            sheet.addCell(label);
//                            /*
// 63              * 定义对于显示金额的公共格式
// 64              * jxl会自动实现四舍五入
// 65              * 例如 2.456会被格式化为2.46,2.454会被格式化为2.45
// 66              * */
//            jxl.write.NumberFormat nf = new jxl.write.NumberFormat("#.##");
//            jxl.write.WritableCellFormat wcf = new jxl.write.WritableCellFormat(nf);
//            // 填充产品价格
//            jxl.write.Number nb = new jxl.write.Number(2,1,2.45,wcf);
//            sheet.addCell(nb);
//            // 填充产品数量
//            jxl.write.Number numb = new jxl.write.Number(3,1,200);
//            sheet.addCell(numb);
//                            /*
// 76              * 定义显示日期的公共格式
// 77              * 如:yyyy-MM-dd hh:mm
// 78              * */
//            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//            String newdate = sdf.format(new Date());
//            // 填充出产日期
//            label = new Label(4,1,newdate);
//            sheet.addCell(label);
//            // 填充产地
//            label = new Label(5,1,"陕西西安");
//            sheet.addCell(label);
//                             /*
// 88              * 显示布尔值
// 89              * */
//            jxl.write.Boolean bool = new jxl.write.Boolean(6,1,true);
//            sheet.addCell(bool);
//                           /*
// 93              * 合并单元格
// 94              * 通过writablesheet.mergeCells(int x,int y,int m,int n);来实现的
// 95              * 表示将从第x+1列，y+1行到m+1列，n+1行合并
// 96              *
// 97              * */
//            sheet.mergeCells(0,3,2,3);
//            label = new Label(0,3,"合并了三个单元格");
//            sheet.addCell(label);
//
///*
//103              * 定义公共字体格式
//104              * 通过获取一个字体的样式来作为模板
//105              * 首先通过web.getSheet(0)获得第一个sheet
//106              * 然后取得第一个sheet的第二列，第一行也就是"产品名称"的字体
//107              * */
//            CellFormat cf = wwb.getSheet(0).getCell(1, 0).getCellFormat();
//            WritableCellFormat wc = new WritableCellFormat();
//            // 设置居中
//            wc.setAlignment(Alignment.CENTRE);
//            // 设置边框线
//            wc.setBorder(Border.ALL, BorderLineStyle.THIN);
//            // 设置单元格的背景颜色
//            wc.setBackground(jxl.format.Colour.RED);
//            label = new Label(1,5,"字体",wc);
//            sheet.addCell(label);
//
//            // 设置字体
//            jxl.write.WritableFont wfont = new jxl.write.WritableFont(WritableFont.createFont("隶书"),20);
//            WritableCellFormat font = new WritableCellFormat(wfont);
//            label = new Label(2,6,"隶书",font);
//            sheet.addCell(label);
//
//            // 写入数据
//            wwb.write();
//            // 关闭文件
//            wwb.close();
//            long end = System.currentTimeMillis();
//            System.out.println("----完成该操作共用的时间是:"+(end-start)/1000);
//        } catch (Exception e) {
//            System.out.println("---出现异常---");
//            e.printStackTrace();
//        }
//
//    }

//    public static String excle(String ttype,List list,String url,String filename) {
//        String ttypename = ttype+".xls";
////  String exclepath = "D:\\Program Files\\Apache Software Foundation\\Tomcat 6.0\\webapps\\cga\\upload\\"+ttypename;
//        String exclepath = url+ttypename;
//        try
//        {
////  打开文件
//            WritableWorkbook book=Workbook.createWorkbook(new File(exclepath));
////  生成名为“第一页”的工作表，参数0表示这是第一页
//            WritableSheet sheet=book.createSheet(ttype,0);
////  在Label对象的构造子中指名单元格位置是第一列第一行(0,0)
////  以及单元格内容为test
//            for(int i=0;i<list.size();i++){
//                String[] cell = (String[])list.get(i);
//                for(int j=0;j<cell.length;j++){
//                    if(j==0||i==0){
//                        Label label=new Label(j,i,cell[j]);
////   将定义好的单元格添加到工作表中
//                        sheet.addCell(label);
//                    }else{
//                        //生成一个保存数字的单元格
//                        //必须使用Number的完整包路径，否则有语法歧义
//                        jxl.write.Number number = new jxl.write.Number(j,i,Double.parseDouble(cell[j]));
//                        sheet.addCell(number);
//                    }
//                }
//            }
//  /*生成一个保存数字的单元格
//  必须使用Number的完整包路径，否则有语法歧义*/
////  写入数据并关闭文件
//            book.write();
//            book.close();
//        }catch(Exception e)
//        {
//            System.out.println(e);
//        }
//        return filename;
//    }

}
