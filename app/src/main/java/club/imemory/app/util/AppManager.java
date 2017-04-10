package club.imemory.app.util;

import android.app.Activity;
import android.util.Log;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.List;

/**
 * 控制log、toast的输出
 * 管理App中所有的activity
 *
 * @Author: 张杭
 * @Date: 2017/3/9 20:42
 */

public class AppManager {

    /**
     * App常量定义
     */
    public static final String APP_NAME = "IMEMORY";
    /**
     * 获取全国省市数据地址
     */
    public static final String GET_AREA = "http://guolin.tech/api/china/";
    /**
     * 获取对应城市天气的URL
     */
    public static final String WEATHER_INFO_URL = "http://guolin.tech/api/weather?cityid=";
    /**
     * 获取对应城市天气所需要的key
     */
    public static final String WEATHER_INFO_KEY = "&key=bc0418b57b2d4918819d3974ac1285d9";
    /**
     * 获取必应每天更新的主页图片
     */
    public static final String GET_BingPic = "http://guolin.tech/api/bing_pic";
    //控制Log打印
    private static boolean debug = true;
    //关于Toast
    private static Toast toast;
    //关于Activity管理
    private static List<Activity> activities = new ArrayList<>();

    /**
     * 防止Toast重复弹出
     */
    public static void showToast(String msg) {
        if (toast == null) {
            toast = Toast.makeText(ApplicationUtil.getContext(), msg, Toast.LENGTH_SHORT);
        } else {
            toast.setText(msg);
        }
        toast.show();
    }

    /**
     * 错误Log信息
     */
    public static void logE(String TAG, String msg) {
        if (debug) {
            Log.e("memory|" + TAG, msg);
        }
    }

    /**
     * 正确Log信息
     */
    public static void logI(String TAG, String msg) {
        if (debug) {
            Log.i("memory|" + TAG, msg);
        }
    }

    /**
     * 添加activity
     */
    public static void addActivity(Activity activity) {
        activities.add(activity);
    }

    /**
     * 移除activity
     */
    public static void removeActivity(Activity activity) {
        activities.remove(activity);
    }

    /**
     * 关闭所有activity，退出程序
     */
    public static void finishAll() {
        for (Activity activity : activities) {
            activity.finish();
        }
        AppManager.logI("AppManager", "程序成功关闭");
        activities.clear();
        //Process.killProcess(Process.myPid());
    }
}
