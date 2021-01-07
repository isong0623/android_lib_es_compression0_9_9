
if(NOT "C:/Users/Isidore/Desktop/android_lib_es_compression099/app/.cxx/cmake/debug/armeabi-v7a/_deps/lz4-subbuild/lz4-populate-prefix/src/lz4-populate-stamp/lz4-populate-gitinfo.txt" IS_NEWER_THAN "C:/Users/Isidore/Desktop/android_lib_es_compression099/app/.cxx/cmake/debug/armeabi-v7a/_deps/lz4-subbuild/lz4-populate-prefix/src/lz4-populate-stamp/lz4-populate-gitclone-lastrun.txt")
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: 'C:/Users/Isidore/Desktop/android_lib_es_compression099/app/.cxx/cmake/debug/armeabi-v7a/_deps/lz4-subbuild/lz4-populate-prefix/src/lz4-populate-stamp/lz4-populate-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E rm -rf "C:/Users/Isidore/Desktop/android_lib_es_compression099/app/.cxx/cmake/debug/armeabi-v7a/_deps/lz4-src"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: 'C:/Users/Isidore/Desktop/android_lib_es_compression099/app/.cxx/cmake/debug/armeabi-v7a/_deps/lz4-src'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "C:/Program Files/Git/cmd/git.exe"  clone --no-checkout "https://github.com/lz4/lz4.git" "lz4-src"
    WORKING_DIRECTORY "C:/Users/Isidore/Desktop/android_lib_es_compression099/app/.cxx/cmake/debug/armeabi-v7a/_deps"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/lz4/lz4.git'")
endif()

execute_process(
  COMMAND "C:/Program Files/Git/cmd/git.exe"  checkout v1.9.3 --
  WORKING_DIRECTORY "C:/Users/Isidore/Desktop/android_lib_es_compression099/app/.cxx/cmake/debug/armeabi-v7a/_deps/lz4-src"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: 'v1.9.3'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "C:/Program Files/Git/cmd/git.exe"  submodule update --recursive --init 
    WORKING_DIRECTORY "C:/Users/Isidore/Desktop/android_lib_es_compression099/app/.cxx/cmake/debug/armeabi-v7a/_deps/lz4-src"
    RESULT_VARIABLE error_code
    )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: 'C:/Users/Isidore/Desktop/android_lib_es_compression099/app/.cxx/cmake/debug/armeabi-v7a/_deps/lz4-src'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "C:/Users/Isidore/Desktop/android_lib_es_compression099/app/.cxx/cmake/debug/armeabi-v7a/_deps/lz4-subbuild/lz4-populate-prefix/src/lz4-populate-stamp/lz4-populate-gitinfo.txt"
    "C:/Users/Isidore/Desktop/android_lib_es_compression099/app/.cxx/cmake/debug/armeabi-v7a/_deps/lz4-subbuild/lz4-populate-prefix/src/lz4-populate-stamp/lz4-populate-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: 'C:/Users/Isidore/Desktop/android_lib_es_compression099/app/.cxx/cmake/debug/armeabi-v7a/_deps/lz4-subbuild/lz4-populate-prefix/src/lz4-populate-stamp/lz4-populate-gitclone-lastrun.txt'")
endif()

