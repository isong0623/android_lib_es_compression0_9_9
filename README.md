# android_lib_es_compression0_9_9

cmake refs : https://github.com/instantiations/es_compression/releases/tag/v0.9.9 see /tool/

download link : https://github.com/isong0623/android_lib_es_compression0_9_9/releases/tag/v1.0

It's very easy to build android jni(*.so) library with the following steps:

1、Open Android Studio, then click File->settings->Appearance&Behavior->System Settings Android SDK->SDK Tools,then download CMake and NDK.

2、In the meantime, download CMake from official website that version must more than 3.14,and install your computer,because the android version is 3.10.2.

3、Copy #{Android_SDK_Path}/cmake/3.10.2.4988404/bin/ninja.exe to #{CMake_Install_Path}/bin/

4、Clone or download the latest version of es_compression(0.9.9)

5、New Android C++ native project, modify #{Project_Path}/app/build.gradle, edit defaultConfig->externalNativeBuild->path with value #{es_compression-0.9.9_Path}/tool/blob_builder/CMakeLists.txt,edit defaultConfig->externalNativeBuild->version with value #{CMAKE_VERSION}

6、Modify #{Project_Path}/local.properties, add new line "cmake.dir=#{CMake_Install_Path}".

7、Then 'Sync' your native project gradle dependencies,when build finished, then you can see the jni libs in #{Project_Path}/app/build/intermediates/stripped_native_libs/debug/out/lib/ maybe or #{Project_Path}/app/.cxx/cmake/debug/

You can use jni lib directly,note add them to #{Flutter_Project_Path}/android/app/src/main/jniLibs/.

By the way, I 'Sync' the lib takes 42m 38s long time, build the lib takes 1h 22m 54s long time,I didn't configure the gradle repositories, and maybe I need to optimize the git downloading,because it always use git to download something.


my environment:

	Win10 i7-10750H 32GB-RAM CN-REGION
	
	Android Studio 4.0.2
	
	CMake 3.17.2

Good luck, everyone~
