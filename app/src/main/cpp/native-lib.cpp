#include <jni.h>
#include <string>

extern "C" JNIEXPORT jstring JNICALL
Java_com_dreaming_android_1lib_1es_1compression_1099_MainActivity_stringFromJNI(
        JNIEnv* env,
        jobject /* this */) {
    std::string hello = "Hello from C++";
    return env->NewStringUTF(hello.c_str());
}
