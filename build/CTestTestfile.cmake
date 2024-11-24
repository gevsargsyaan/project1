# CMake generated Testfile for 
# Source directory: C:/Users/root/Desktop/UDEMYCOURSE/projects/project1
# Build directory: C:/Users/root/Desktop/UDEMYCOURSE/projects/project1/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(VersionTest "C:/Users/root/Desktop/UDEMYCOURSE/projects/project1/build/Debug/test_version.exe")
  set_tests_properties(VersionTest PROPERTIES  _BACKTRACE_TRIPLES "C:/Users/root/Desktop/UDEMYCOURSE/projects/project1/CMakeLists.txt;27;add_test;C:/Users/root/Desktop/UDEMYCOURSE/projects/project1/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(VersionTest "C:/Users/root/Desktop/UDEMYCOURSE/projects/project1/build/Release/test_version.exe")
  set_tests_properties(VersionTest PROPERTIES  _BACKTRACE_TRIPLES "C:/Users/root/Desktop/UDEMYCOURSE/projects/project1/CMakeLists.txt;27;add_test;C:/Users/root/Desktop/UDEMYCOURSE/projects/project1/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(VersionTest "C:/Users/root/Desktop/UDEMYCOURSE/projects/project1/build/MinSizeRel/test_version.exe")
  set_tests_properties(VersionTest PROPERTIES  _BACKTRACE_TRIPLES "C:/Users/root/Desktop/UDEMYCOURSE/projects/project1/CMakeLists.txt;27;add_test;C:/Users/root/Desktop/UDEMYCOURSE/projects/project1/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(VersionTest "C:/Users/root/Desktop/UDEMYCOURSE/projects/project1/build/RelWithDebInfo/test_version.exe")
  set_tests_properties(VersionTest PROPERTIES  _BACKTRACE_TRIPLES "C:/Users/root/Desktop/UDEMYCOURSE/projects/project1/CMakeLists.txt;27;add_test;C:/Users/root/Desktop/UDEMYCOURSE/projects/project1/CMakeLists.txt;0;")
else()
  add_test(VersionTest NOT_AVAILABLE)
endif()
subdirs("third_party/googletest-main")
