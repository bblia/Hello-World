# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /Applications/Android Studio.app/sdk/tools/proguard/proguard-android.txt
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
# Workaround for ProGuard not recognizing dontobfuscate
# https://speakerdeck.com/chalup/proguard
-dontoptimize
-optimizations !code/allocation/variable

# Taken from: https://stuff.mit.edu/afs/sipb/project/android/sdk/android-sdk-linux/tools/proguard/docs/index.html#manual/examples.html
-keep public class com.example.**

# https://github.com/ical4j/ical4j/wiki/Android#Reducing_Androidfootprint_by_using_proguard
## ical4j also contains groovy code which is not used in android
# http://stackoverflow.com/questions/23883028/how-to-fix-proguard-warning-cant-find-referenced-method-for-existing-methods
-dontwarn net.fortuna.ical4j.model.**
-dontwarn groovy.**
-dontwarn org.codehaus.groovy.**
-dontwarn org.apache.commons.logging.**
-dontwarn sun.misc.Perf
-dontnote com.google.vending.**
-dontnote com.android.vending.licensing.**
-dontnote io.reactivex.**
-dontwarn org.slf4j.**
-dontwarn org.antlr.**
