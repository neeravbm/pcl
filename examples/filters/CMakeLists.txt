PCL_ADD_EXAMPLE(pcl_example_remove_nan_from_point_cloud FILES example_remove_nan_from_point_cloud.cpp
                LINK_WITH "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_filters")

PCL_ADD_EXAMPLE(pcl_example_extract_indices FILES example_extract_indices.cpp
                LINK_WITH "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_filters")
