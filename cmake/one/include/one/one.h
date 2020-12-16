#pragma once

#ifdef _WIN32
    #ifdef DLL_BODY
        #define DLL_EXPORT  __declspec(dllexport)
    #else
        #define DLL_EXPORT  __declspec(dllimport)
    #endif
#else
    #define DLL_EXPORT
#endif

DLL_EXPORT int get_int_value();
