PCL_ADD_EXECUTABLE_OPT_BUNDLE(pcl_viewer ${SUBSYS_NAME} pcd_viewer.cpp)
target_link_libraries(pcl_viewer "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_kdtree" "${PREPEND_LIB_NAME}pcl_visualization" "${PREPEND_LIB_NAME}pcl_search")

PCL_ADD_EXECUTABLE_OPT_BUNDLE(pcl_pcd_image_viewer ${SUBSYS_NAME} image_viewer.cpp)
target_link_libraries(pcl_pcd_image_viewer "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_kdtree" "${PREPEND_LIB_NAME}pcl_visualization")
    
PCL_ADD_EXECUTABLE(pcl_timed_trigger_test ${SUBSYS_NAME} timed_trigger_test.cpp)
target_link_libraries(pcl_timed_trigger_test "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_kdtree" "${PREPEND_LIB_NAME}pcl_visualization")

PCL_ADD_EXECUTABLE(pcl_hdl_viewer_simple ${SUBSYS_NAME} hdl_viewer_simple.cpp)
target_link_libraries(pcl_hdl_viewer_simple "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_visualization")

PCL_ADD_EXECUTABLE(pcl_vlp_viewer ${SUBSYS_NAME} vlp_viewer.cpp)
target_link_libraries(pcl_vlp_viewer "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_visualization")

if(WITH_OPENNI)

    PCL_ADD_EXECUTABLE_OPT_BUNDLE(pcl_pcd_grabber_viewer ${SUBSYS_NAME} pcd_grabber_viewer.cpp)
    target_link_libraries(pcl_pcd_grabber_viewer "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_kdtree" "${PREPEND_LIB_NAME}pcl_visualization")
    
    PCL_ADD_EXECUTABLE_OPT_BUNDLE(pcl_image_grabber_saver ${SUBSYS_NAME} image_grabber_saver.cpp)
    target_link_libraries(pcl_image_grabber_saver "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_kdtree" "${PREPEND_LIB_NAME}pcl_visualization")

    PCL_ADD_EXECUTABLE_OPT_BUNDLE(pcl_image_grabber_viewer ${SUBSYS_NAME} image_grabber_viewer.cpp)
    target_link_libraries(pcl_image_grabber_viewer "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_kdtree" "${PREPEND_LIB_NAME}pcl_visualization")
      
    #PCL_ADD_EXECUTABLE(pcl_openni_viewer_simple ${SUBSYS_NAME} openni_viewer_simple.cpp)
    #target_link_libraries(pcl_openni_viewer_simple "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_kdtree" "${PREPEND_LIB_NAME}pcl_visualization")

    PCL_ADD_EXECUTABLE_OPT_BUNDLE(pcl_oni_viewer ${SUBSYS_NAME} oni_viewer_simple.cpp)
    target_link_libraries(pcl_oni_viewer "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_kdtree" "${PREPEND_LIB_NAME}pcl_visualization")

    PCL_ADD_EXECUTABLE_OPT_BUNDLE(pcl_openni_viewer ${SUBSYS_NAME} openni_viewer.cpp)
    target_link_libraries(pcl_openni_viewer "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_kdtree" "${PREPEND_LIB_NAME}pcl_visualization")

    PCL_ADD_EXECUTABLE_OPT_BUNDLE(pcl_openni_image ${SUBSYS_NAME} openni_image.cpp)
    target_link_libraries(pcl_openni_image "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_kdtree" "${PREPEND_LIB_NAME}pcl_visualization")
endif()

if(WITH_OPENNI2)
    PCL_ADD_EXECUTABLE_OPT_BUNDLE(pcl_openni2_viewer ${SUBSYS_NAME} openni2_viewer.cpp)
    target_link_libraries(pcl_openni2_viewer "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_kdtree" "${PREPEND_LIB_NAME}pcl_visualization")
endif()

if(WITH_ENSENSO)
    PCL_ADD_EXECUTABLE_OPT_BUNDLE(pcl_ensenso_viewer ${SUBSYS_NAME} ensenso_viewer.cpp)
    target_link_libraries(pcl_ensenso_viewer "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_visualization")
endif()

if(WITH_DAVIDSDK)
    PCL_ADD_EXECUTABLE_OPT_BUNDLE(pcl_davidsdk_viewer ${SUBSYS_NAME} davidsdk_viewer.cpp)
    target_link_libraries(pcl_davidsdk_viewer "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_visualization")
endif()

if(WITH_DSSDK)
    PCL_ADD_EXECUTABLE_OPT_BUNDLE(pcl_depth_sense_viewer ${SUBSYS_NAME} depth_sense_viewer.cpp)
    target_link_libraries(pcl_depth_sense_viewer "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_visualization")
endif()

if(WITH_RSSDK)
    PCL_ADD_EXECUTABLE_OPT_BUNDLE(pcl_real_sense_viewer ${SUBSYS_NAME} real_sense_viewer.cpp)
    target_link_libraries(pcl_real_sense_viewer "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_visualization")
endif()

