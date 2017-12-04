package com.jin2ml.constant;

public class Tag {

    public static final String JAVA = "java";

    public static final String JAVASCRIPT = "javascript";

    public static final String HTML = "html";

    public static final String JQUERY = "jquery";

    /**
     * 标记位，高到低为java,javascript,html,jquery
     */
    public static int flag = 0b0111;

    public void getTag(int flag) {

        switch (flag){
            case 1:
                System.out.printf("jquery");
                break;
            case 2:
                System.out.printf("html");
                break;
            case 3:
                System.out.printf("jquery,html");
                break;
            case 4:
                System.out.printf("javascript");
                break;
            case 5:
                System.out.printf("javascript,jquery");
                break;
            case 6:
                System.out.printf("javascript,html");
                break;
            case 7:
                System.out.printf("javascript,html,jquery");
                break;
            case 8:
                System.out.printf("java");
                break;
            case 9:
                System.out.printf("java,jquery");
                break;
            case 10:
                System.out.printf("java,html");
                break;
            case 11:
                System.out.printf("java,html,jquery");
                break;
            case 12:
                System.out.printf("java,javascript");
                break;
            case 13:
                System.out.printf("java,javascript,jquery");
                break;
            case 14:
                System.out.printf("java,javascript,html");
                break;
            case 15:
                System.out.printf("java,javascript,html,jquery");
                break;
        }
    }

}
