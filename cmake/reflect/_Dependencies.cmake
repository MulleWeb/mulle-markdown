# This file will be regenerated by `mulle-sourcetree-to-cmake` via
# `mulle-sde reflect` and any edits will be lost.
#
# This file will be included by cmake/share/Files.cmake
#
# Disable generation of this file with:
#
# mulle-sde environment set MULLE_SOURCETREE_TO_CMAKE_DEPENDENCIES_FILE DISABLE
#
if( MULLE_TRACE_INCLUDE)
   message( STATUS "# Include \"${CMAKE_CURRENT_LIST_FILE}\"" )
endif()

#
# Generated from sourcetree: 9C1EFD62-6AF0-4885-A0B3-9AD23E3E9CF3;mulle-musl;no-all-load,no-cmake-loader,no-cmake-searchpath,no-header,no-import,only-cmake-sdk-musl,only-craft-sdk-musl;c
# Disable with : `mulle-sourcetree mark mulle-musl no-link`
# Disable for this platform: `mulle-sourcetree mark mulle-musl no-cmake-platform-${MULLE_UNAME}`
# Disable for a sdk: `mulle-sourcetree mark mulle-musl no-cmake-sdk-<name>`
#
if( MUSL_STATIC_ONLY)
   if( NOT C_LIBRARY)
      find_library( C_LIBRARY NAMES ${CMAKE_STATIC_LIBRARY_PREFIX}c${CMAKE_DEBUG_POSTFIX}${CMAKE_STATIC_LIBRARY_SUFFIX} ${CMAKE_STATIC_LIBRARY_PREFIX}c${CMAKE_STATIC_LIBRARY_SUFFIX} c NO_CMAKE_SYSTEM_PATH NO_SYSTEM_ENVIRONMENT_PATH)
      message( STATUS "C_LIBRARY is ${C_LIBRARY}")
      #
      # The order looks ascending, but due to the way this file is read
      # it ends up being descending, which is what we need.
      #
      if( C_LIBRARY)
         #
         # Add C_LIBRARY to DEPENDENCY_LIBRARIES list.
         # Disable with: `mulle-sourcetree mark mulle-musl no-cmake-add`
         #
         set( DEPENDENCY_LIBRARIES
            ${DEPENDENCY_LIBRARIES}
            ${C_LIBRARY}
            CACHE INTERNAL "need to cache this"
         )
         #
         # Inherit information from dependency.
         # Encompasses: no-cmake-searchpath,no-cmake-dependency,no-cmake-loader
         # Disable with: `mulle-sourcetree mark mulle-musl no-cmake-inherit`
         #
         # temporarily expand CMAKE_MODULE_PATH
         get_filename_component( _TMP_C_ROOT "${C_LIBRARY}" DIRECTORY)
         get_filename_component( _TMP_C_ROOT "${_TMP_C_ROOT}" DIRECTORY)
         #
         #
         # Search for "DependenciesAndLibraries.cmake" to include.
         # Disable with: `mulle-sourcetree mark mulle-musl no-cmake-dependency`
         #
         foreach( _TMP_C_NAME "c")
            set( _TMP_C_DIR "${_TMP_C_ROOT}/include/${_TMP_C_NAME}/cmake")
            # use explicit path to avoid "surprises"
            if( EXISTS "${_TMP_C_DIR}/DependenciesAndLibraries.cmake")
               unset( C_DEFINITIONS)
               list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_C_DIR}")
               # we only want top level INHERIT_OBJC_LOADERS, so disable them
               if( NOT NO_INHERIT_OBJC_LOADERS)
                  set( NO_INHERIT_OBJC_LOADERS OFF)
               endif()
               list( APPEND _TMP_INHERIT_OBJC_LOADERS ${NO_INHERIT_OBJC_LOADERS})
               set( NO_INHERIT_OBJC_LOADERS ON)
               #
               include( "${_TMP_C_DIR}/DependenciesAndLibraries.cmake")
               #
               list( GET _TMP_INHERIT_OBJC_LOADERS -1 NO_INHERIT_OBJC_LOADERS)
               list( REMOVE_AT _TMP_INHERIT_OBJC_LOADERS -1)
               #
               list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_C_DIR}")
               set( INHERITED_DEFINITIONS
                  ${INHERITED_DEFINITIONS}
                  ${C_DEFINITIONS}
                  CACHE INTERNAL "need to cache this"
               )
               break()
            else()
               message( STATUS "${_TMP_C_DIR}/DependenciesAndLibraries.cmake not found")
            endif()
         endforeach()
      else()
         # Disable with: `mulle-sourcetree mark mulle-musl no-require-link`
         message( FATAL_ERROR "C_LIBRARY was not found")
      endif()
   endif()
endif()


#
# Generated from sourcetree: B8CF2B29-69EA-4BF3-869A-88E18CBB90E7;MulleHoedown;no-singlephase;
# Disable with : `mulle-sourcetree mark MulleHoedown no-link`
# Disable for this platform: `mulle-sourcetree mark MulleHoedown no-cmake-platform-${MULLE_UNAME}`
# Disable for a sdk: `mulle-sourcetree mark MulleHoedown no-cmake-sdk-<name>`
#
if( NOT MULLE_HOEDOWN_LIBRARY)
   find_library( MULLE_HOEDOWN_LIBRARY NAMES ${CMAKE_STATIC_LIBRARY_PREFIX}MulleHoedown${CMAKE_DEBUG_POSTFIX}${CMAKE_STATIC_LIBRARY_SUFFIX} ${CMAKE_STATIC_LIBRARY_PREFIX}MulleHoedown${CMAKE_STATIC_LIBRARY_SUFFIX} MulleHoedown NO_CMAKE_SYSTEM_PATH NO_SYSTEM_ENVIRONMENT_PATH)
   message( STATUS "MULLE_HOEDOWN_LIBRARY is ${MULLE_HOEDOWN_LIBRARY}")
   #
   # The order looks ascending, but due to the way this file is read
   # it ends up being descending, which is what we need.
   #
   if( MULLE_HOEDOWN_LIBRARY)
      #
      # Add MULLE_HOEDOWN_LIBRARY to ALL_LOAD_DEPENDENCY_LIBRARIES list.
      # Disable with: `mulle-sourcetree mark MulleHoedown no-cmake-add`
      #
      set( ALL_LOAD_DEPENDENCY_LIBRARIES
         ${ALL_LOAD_DEPENDENCY_LIBRARIES}
         ${MULLE_HOEDOWN_LIBRARY}
         CACHE INTERNAL "need to cache this"
      )
      #
      # Inherit information from dependency.
      # Encompasses: no-cmake-searchpath,no-cmake-dependency,no-cmake-loader
      # Disable with: `mulle-sourcetree mark MulleHoedown no-cmake-inherit`
      #
      # temporarily expand CMAKE_MODULE_PATH
      get_filename_component( _TMP_MULLE_HOEDOWN_ROOT "${MULLE_HOEDOWN_LIBRARY}" DIRECTORY)
      get_filename_component( _TMP_MULLE_HOEDOWN_ROOT "${_TMP_MULLE_HOEDOWN_ROOT}" DIRECTORY)
      #
      #
      # Search for "DependenciesAndLibraries.cmake" to include.
      # Disable with: `mulle-sourcetree mark MulleHoedown no-cmake-dependency`
      #
      foreach( _TMP_MULLE_HOEDOWN_NAME "MulleHoedown")
         set( _TMP_MULLE_HOEDOWN_DIR "${_TMP_MULLE_HOEDOWN_ROOT}/include/${_TMP_MULLE_HOEDOWN_NAME}/cmake")
         # use explicit path to avoid "surprises"
         if( EXISTS "${_TMP_MULLE_HOEDOWN_DIR}/DependenciesAndLibraries.cmake")
            unset( MULLE_HOEDOWN_DEFINITIONS)
            list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_MULLE_HOEDOWN_DIR}")
            #
            include( "${_TMP_MULLE_HOEDOWN_DIR}/DependenciesAndLibraries.cmake")
            #
            #
            list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_MULLE_HOEDOWN_DIR}")
            set( INHERITED_DEFINITIONS
               ${INHERITED_DEFINITIONS}
               ${MULLE_HOEDOWN_DEFINITIONS}
               CACHE INTERNAL "need to cache this"
            )
            break()
         else()
            message( STATUS "${_TMP_MULLE_HOEDOWN_DIR}/DependenciesAndLibraries.cmake not found")
         endif()
      endforeach()
      #
      # Search for "MulleObjCLoader+<name>.h" in include directory.
      # Disable with: `mulle-sourcetree mark MulleHoedown no-cmake-loader`
      #
      if( NOT NO_INHERIT_OBJC_LOADERS)
         foreach( _TMP_MULLE_HOEDOWN_NAME "MulleHoedown")
            set( _TMP_MULLE_HOEDOWN_FILE "${_TMP_MULLE_HOEDOWN_ROOT}/include/${_TMP_MULLE_HOEDOWN_NAME}/MulleObjCLoader+${_TMP_MULLE_HOEDOWN_NAME}.h")
            if( EXISTS "${_TMP_MULLE_HOEDOWN_FILE}")
               set( INHERITED_OBJC_LOADERS
                  ${INHERITED_OBJC_LOADERS}
                  ${_TMP_MULLE_HOEDOWN_FILE}
                  CACHE INTERNAL "need to cache this"
               )
               break()
            endif()
         endforeach()
      endif()
   else()
      # Disable with: `mulle-sourcetree mark MulleHoedown no-require-link`
      message( FATAL_ERROR "MULLE_HOEDOWN_LIBRARY was not found")
   endif()
endif()


#
# Generated from sourcetree: 39054B0B-42B9-435B-B6AD-769110F71795;MulleObjC-startup;no-cmake-dependency,no-cmake-loader,no-cmake-searchpath,no-dynamic-link,no-header,no-intermediate-link;
# Disable with : `mulle-sourcetree mark MulleObjC-startup no-link`
# Disable for this platform: `mulle-sourcetree mark MulleObjC-startup no-cmake-platform-${MULLE_UNAME}`
# Disable for a sdk: `mulle-sourcetree mark MulleObjC-startup no-cmake-sdk-<name>`
#
if( NOT MULLE_OBJC_STARTUP_LIBRARY)
   find_library( MULLE_OBJC_STARTUP_LIBRARY NAMES ${CMAKE_STATIC_LIBRARY_PREFIX}MulleObjC-startup${CMAKE_DEBUG_POSTFIX}${CMAKE_STATIC_LIBRARY_SUFFIX} ${CMAKE_STATIC_LIBRARY_PREFIX}MulleObjC-startup${CMAKE_STATIC_LIBRARY_SUFFIX} NO_CMAKE_SYSTEM_PATH NO_SYSTEM_ENVIRONMENT_PATH)
   message( STATUS "MULLE_OBJC_STARTUP_LIBRARY is ${MULLE_OBJC_STARTUP_LIBRARY}")
   #
   # The order looks ascending, but due to the way this file is read
   # it ends up being descending, which is what we need.
   #
   if( MULLE_OBJC_STARTUP_LIBRARY)
      #
      # Add MULLE_OBJC_STARTUP_LIBRARY to STARTUP_ALL_LOAD_DEPENDENCY_LIBRARIES list.
      # Disable with: `mulle-sourcetree mark MulleObjC-startup no-cmake-add`
      #
      set( STARTUP_ALL_LOAD_DEPENDENCY_LIBRARIES
         ${STARTUP_ALL_LOAD_DEPENDENCY_LIBRARIES}
         ${MULLE_OBJC_STARTUP_LIBRARY}
         CACHE INTERNAL "need to cache this"
      )
      #
      # Inherit information from dependency.
      # Encompasses: no-cmake-searchpath,no-cmake-dependency,no-cmake-loader
      # Disable with: `mulle-sourcetree mark MulleObjC-startup no-cmake-inherit`
      #
      # temporarily expand CMAKE_MODULE_PATH
      get_filename_component( _TMP_MULLE_OBJC_STARTUP_ROOT "${MULLE_OBJC_STARTUP_LIBRARY}" DIRECTORY)
      get_filename_component( _TMP_MULLE_OBJC_STARTUP_ROOT "${_TMP_MULLE_OBJC_STARTUP_ROOT}" DIRECTORY)
      #
   else()
      # Disable with: `mulle-sourcetree mark MulleObjC-startup no-require-link`
      message( FATAL_ERROR "MULLE_OBJC_STARTUP_LIBRARY was not found")
   endif()
endif()
