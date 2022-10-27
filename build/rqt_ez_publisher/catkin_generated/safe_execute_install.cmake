execute_process(COMMAND "/home/nick/Project_8_aardbeisorteermachine/build/rqt_ez_publisher/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/nick/Project_8_aardbeisorteermachine/build/rqt_ez_publisher/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
