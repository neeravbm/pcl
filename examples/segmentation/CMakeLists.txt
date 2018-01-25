if(BUILD_visualization)

  PCL_SUBSYS_DEPEND(build ${SUBSYS_NAME} DEPS visualization segmentation)

  PCL_ADD_EXAMPLE(pcl_example_extract_clusters_normals FILES example_extract_clusters_normals.cpp
		                LINK_WITH "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_keypoints" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_segmentation")
  PCL_ADD_EXAMPLE(pcl_example_region_growing FILES example_region_growing.cpp
		                LINK_WITH "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_keypoints" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_segmentation")

  ## Find VTK 
  if(VTK_FOUND)
    include (${VTK_USE_FILE})
    PCL_ADD_EXAMPLE(pcl_example_supervoxels FILES example_supervoxels.cpp
                    LINK_WITH "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_features" "${PREPEND_LIB_NAME}pcl_segmentation" "${PREPEND_LIB_NAME}pcl_octree" "${PREPEND_LIB_NAME}pcl_kdtree" "${PREPEND_LIB_NAME}pcl_visualization")
    PCL_ADD_EXAMPLE(pcl_example_lccp_segmentation FILES example_lccp_segmentation.cpp
                    LINK_WITH "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_segmentation" "${PREPEND_LIB_NAME}pcl_visualization")
    PCL_ADD_EXAMPLE(pcl_example_cpc_segmentation FILES example_cpc_segmentation.cpp
                    LINK_WITH "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_segmentation" "${PREPEND_LIB_NAME}pcl_visualization" "${PREPEND_LIB_NAME}pcl_sample_consensus")
  endif(VTK_FOUND)
endif(BUILD_visualization)
