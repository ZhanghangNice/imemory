# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in D:\AndroidSDK/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile
#---------------------------------1.实体类---------------------------------
-keep class club.imemory,app.bean.** { *; }
#-------------------------------------------------------------------------
#---------------------------------2.第三方包-------------------------------
# com.blankj:utilcode:1.3.6
# -keep class com.blankj.utilcode.** { *; }
# -keepclassmembers class com.blankj.utilcode.** { *; }
# -dontwarn com.blankj.utilcode.**

# 3D 地图 V5.0.0之后：
-keep   class com.amap.api.maps.**{*;}
-keep   class com.autonavi.**{*;}
-keep   class com.amap.api.trace.**{*;}

# 定位
-keep class com.amap.api.location.**{*;}
-keep class com.amap.api.fence.**{*;}
-keep class com.autonavi.aps.amapapi.model.**{*;}

# 搜索
-keep   class com.amap.api.services.**{*;}

# 数据库
-keep class org.litepal.** {*;}
-keep class * extends org.litepal.crud.DataSupport {*;}

# okhttp
-dontwarn okhttp3.**

# QQ
-keep class com.tencent.stat.**{*;}
-keep class com.tencent.connect.**{*;}
-keep class com.tencent.open.**{*;}
-keep class com.tencent.tauth.**{*;}
-keep class * extends android.app.Dialog

# glide 图片加载
-keep public class * implements com.bumptech.glide.module.GlideModule
-keep public enum com.bumptech.glide.load.resource.bitmap.ImageHeaderParser$** {
  **[] $VALUES;
  public *;
}

# for DexGuard only
-keepresourcexmlelements manifest/application/meta-data@value=GlideModule
#-------------------------------------------------------------------------
