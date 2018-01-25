PCL_ADD_EXAMPLE(pcl_example_fast_point_feature_histograms FILES example_fast_point_feature_histograms.cpp
                LINK_WITH "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_kdtree" "${PREPEND_LIB_NAME}pcl_search" "${PREPEND_LIB_NAME}pcl_features" "${PREPEND_LIB_NAME}pcl_io")

PCL_ADD_EXAMPLE(pcl_example_normal_estimation FILES example_normal_estimation.cpp
                LINK_WITH "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_kdtree" "${PREPEND_LIB_NAME}pcl_search" "${PREPEND_LIB_NAME}pcl_features" "${PREPEND_LIB_NAME}pcl_io")

PCL_ADD_EXAMPLE(pcl_example_point_feature_histograms FILES example_point_feature_histograms.cpp
                LINK_WITH "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_kdtree" "${PREPEND_LIB_NAME}pcl_search" "${PREPEND_LIB_NAME}pcl_features" "${PREPEND_LIB_NAME}pcl_io")

PCL_ADD_EXAMPLE(pcl_example_principal_curvatures_estimation FILES example_principal_curvatures_estimation.cpp
                LINK_WITH "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_kdtree" "${PREPEND_LIB_NAME}pcl_search" "${PREPEND_LIB_NAME}pcl_features" "${PREPEND_LIB_NAME}pcl_io")

PCL_ADD_EXAMPLE(pcl_example_shape_contexts FILES example_shape_contexts.cpp
LINK_WITH "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_kdtree" "${PREPEND_LIB_NAME}pcl_search" "${PREPEND_LIB_NAME}pcl_features" "${PREPEND_LIB_NAME}pcl_io")

PCL_ADD_EXAMPLE(pcl_example_spin_images FILES example_spin_images.cpp
                LINK_WITH "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_kdtree" "${PREPEND_LIB_NAME}pcl_search" "${PREPEND_LIB_NAME}pcl_features" "${PREPEND_LIB_NAME}pcl_io")

PCL_ADD_EXAMPLE(pcl_example_rift_estimation FILES example_rift_estimation.cpp
                LINK_WITH "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_kdtree" "${PREPEND_LIB_NAME}pcl_search" "${PREPEND_LIB_NAME}pcl_features" "${PREPEND_LIB_NAME}pcl_io")

PCL_ADD_EXAMPLE(pcl_example_difference_of_normals FILES example_difference_of_normals.cpp
                LINK_WITH "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_kdtree" "${PREPEND_LIB_NAME}pcl_search" "${PREPEND_LIB_NAME}pcl_features" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_segmentation" "${PREPEND_LIB_NAME}pcl_sample_consensus")
