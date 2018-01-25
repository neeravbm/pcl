set (SUBSYS_NAME tools)
set (SUBSYS_DESC "Useful PCL-based command line tools")
set (SUBSYS_DEPS common io filters sample_consensus segmentation search kdtree features surface octree registration recognition geometry keypoints ml)
set (DEFAULT ON)
set (REASON "")

PCL_SUBSYS_OPTION (BUILD_tools "${SUBSYS_NAME}" "${SUBSYS_DESC}" ${DEFAULT} "${REASON}")
PCL_SUBSYS_DEPEND (BUILD_tools "${SUBSYS_NAME}" DEPS ${SUBSYS_DEPS})

if (BUILD_tools)

  PCL_ADD_EXECUTABLE(pcl_sac_segmentation_plane "${SUBSYS_NAME}" sac_segmentation_plane.cpp)
  target_link_libraries(pcl_sac_segmentation_plane "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_sample_consensus" "${PREPEND_LIB_NAME}pcl_segmentation")

  PCL_ADD_EXECUTABLE (pcl_plane_projection "${SUBSYS_NAME}" plane_projection.cpp)
  target_link_libraries (pcl_plane_projection "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_sample_consensus")

  PCL_ADD_EXECUTABLE (pcl_normal_estimation "${SUBSYS_NAME}" normal_estimation.cpp)
  target_link_libraries (pcl_normal_estimation "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_features" "${PREPEND_LIB_NAME}pcl_kdtree")

  PCL_ADD_EXECUTABLE (pcl_uniform_sampling "${SUBSYS_NAME}" uniform_sampling.cpp)
  target_link_libraries (pcl_uniform_sampling "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_filters" "${PREPEND_LIB_NAME}pcl_keypoints" "${PREPEND_LIB_NAME}pcl_kdtree")

  PCL_ADD_EXECUTABLE (pcl_boundary_estimation "${SUBSYS_NAME}" boundary_estimation.cpp)
  target_link_libraries (pcl_boundary_estimation "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_features" "${PREPEND_LIB_NAME}pcl_kdtree")

  PCL_ADD_EXECUTABLE (pcl_cluster_extraction "${SUBSYS_NAME}" cluster_extraction.cpp)
  target_link_libraries (pcl_cluster_extraction "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_segmentation" "${PREPEND_LIB_NAME}pcl_filters" "${PREPEND_LIB_NAME}pcl_kdtree")

  PCL_ADD_EXECUTABLE (pcl_fpfh_estimation "${SUBSYS_NAME}" fpfh_estimation.cpp)
  target_link_libraries (pcl_fpfh_estimation "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_features" "${PREPEND_LIB_NAME}pcl_kdtree")

  PCL_ADD_EXECUTABLE (pcl_pcd2ply "${SUBSYS_NAME}" pcd2ply.cpp)
  target_link_libraries (pcl_pcd2ply "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io")

  PCL_ADD_EXECUTABLE (pcl_ply2pcd "${SUBSYS_NAME}" ply2pcd.cpp)
  target_link_libraries (pcl_ply2pcd "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io")

  PCL_ADD_EXECUTABLE (pcl_xyz2pcd "${SUBSYS_NAME}" xyz2pcd.cpp)
  target_link_libraries (pcl_xyz2pcd "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io")

  PCL_ADD_EXECUTABLE (pcl_pclzf2pcd "${SUBSYS_NAME}" pclzf2pcd.cpp)
  target_link_libraries (pcl_pclzf2pcd "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io")

  PCL_ADD_EXECUTABLE (pcl_pcd2vtk "${SUBSYS_NAME}" pcd2vtk.cpp)
  target_link_libraries (pcl_pcd2vtk "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io")

  PCL_ADD_EXECUTABLE (pcl_vfh_estimation "${SUBSYS_NAME}" vfh_estimation.cpp)
  target_link_libraries (pcl_vfh_estimation "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_features" "${PREPEND_LIB_NAME}pcl_kdtree")
  
  PCL_ADD_EXECUTABLE (pcl_spin_estimation "${SUBSYS_NAME}" spin_estimation.cpp)
  target_link_libraries (pcl_spin_estimation "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_features" "${PREPEND_LIB_NAME}pcl_kdtree")

  PCL_ADD_EXECUTABLE (pcl_voxel_grid "${SUBSYS_NAME}" voxel_grid.cpp)
  target_link_libraries (pcl_voxel_grid "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_filters")
	
  PCL_ADD_EXECUTABLE (pcl_passthrough_filter "${SUBSYS_NAME}" passthrough_filter.cpp)
  target_link_libraries (pcl_passthrough_filter "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_filters")
	
  PCL_ADD_EXECUTABLE (pcl_radius_filter "${SUBSYS_NAME}" radius_filter.cpp)
  target_link_libraries (pcl_radius_filter "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_filters")

  PCL_ADD_EXECUTABLE (pcl_extract_feature "${SUBSYS_NAME}" extract_feature.cpp)
  target_link_libraries (pcl_extract_feature "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_features" "${PREPEND_LIB_NAME}pcl_kdtree")
  
  PCL_ADD_EXECUTABLE (pcl_compute_cloud_error "${SUBSYS_NAME}" compute_cloud_error.cpp)
  target_link_libraries (pcl_compute_cloud_error "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_kdtree" "${PREPEND_LIB_NAME}pcl_search")

  PCL_ADD_EXECUTABLE (pcl_train_unary_classifier "${SUBSYS_NAME}" train_unary_classifier.cpp)
  target_link_libraries (pcl_train_unary_classifier "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_segmentation")

  PCL_ADD_EXECUTABLE (pcl_unary_classifier_segment "${SUBSYS_NAME}" unary_classifier_segment.cpp)
  target_link_libraries (pcl_unary_classifier_segment "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_segmentation")

  PCL_ADD_EXECUTABLE (pcl_crf_segmentation "${SUBSYS_NAME}" crf_segmentation.cpp)
  target_link_libraries (pcl_crf_segmentation "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_segmentation")

  # NOTE: boost/uuid/uuid.hpp only exists for versions > 1.41
  if(Boost_MAJOR_VERSION GREATER 1 OR Boost_MINOR_VERSION GREATER 41)
    PCL_ADD_EXECUTABLE (pcl_add_gaussian_noise "${SUBSYS_NAME}" add_gaussian_noise.cpp)
    target_link_libraries (pcl_add_gaussian_noise "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io")
  endif()
  
  PCL_ADD_EXECUTABLE (pcl_outlier_removal "${SUBSYS_NAME}" outlier_removal.cpp)
  target_link_libraries (pcl_outlier_removal "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_filters")
  
  PCL_ADD_EXECUTABLE (pcl_mls_smoothing "${SUBSYS_NAME}" mls_smoothing.cpp)
  target_link_libraries (pcl_mls_smoothing "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_surface" "${PREPEND_LIB_NAME}pcl_filters")
  
  PCL_ADD_EXECUTABLE (pcl_marching_cubes_reconstruction "${SUBSYS_NAME}" marching_cubes_reconstruction.cpp)
  target_link_libraries (pcl_marching_cubes_reconstruction "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_surface")

  PCL_ADD_EXECUTABLE (pcl_gp3_surface "${SUBSYS_NAME}" gp3_surface.cpp)
  target_link_libraries (pcl_gp3_surface "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_surface")
  
  PCL_ADD_EXECUTABLE(pcl_icp "${SUBSYS_NAME}" icp.cpp)
  target_link_libraries(pcl_icp "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_registration")

  PCL_ADD_EXECUTABLE(pcl_icp2d "${SUBSYS_NAME}" icp2d.cpp)
  target_link_libraries(pcl_icp2d "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_registration")

  PCL_ADD_EXECUTABLE(pcl_elch "${SUBSYS_NAME}" elch.cpp)
  target_link_libraries(pcl_elch "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_registration")

  PCL_ADD_EXECUTABLE(pcl_lum "${SUBSYS_NAME}" lum.cpp)
  target_link_libraries(pcl_lum "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_registration")

  PCL_ADD_EXECUTABLE(pcl_ndt2d "${SUBSYS_NAME}" ndt2d.cpp)
  target_link_libraries(pcl_ndt2d "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_registration")
    
  PCL_ADD_EXECUTABLE(pcl_ndt3d "${SUBSYS_NAME}" ndt3d.cpp)
  target_link_libraries(pcl_ndt3d "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_registration")

  PCL_ADD_EXECUTABLE(pcl_pcd_change_viewpoint "${SUBSYS_NAME}" pcd_change_viewpoint.cpp)
  target_link_libraries(pcl_pcd_change_viewpoint "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io")

  PCL_ADD_EXECUTABLE(pcl_concatenate_points_pcd "${SUBSYS_NAME}" concatenate_points_pcd.cpp)
  target_link_libraries(pcl_concatenate_points_pcd "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io")
  
  PCL_ADD_EXECUTABLE(pcl_poisson_reconstruction "${SUBSYS_NAME}" poisson_reconstruction.cpp)
  target_link_libraries(pcl_poisson_reconstruction "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_surface")

  PCL_ADD_EXECUTABLE(pcl_train_linemod_template "${SUBSYS_NAME}" train_linemod_template.cpp)
  target_link_libraries(pcl_train_linemod_template "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_segmentation" "${PREPEND_LIB_NAME}pcl_recognition")

  PCL_ADD_EXECUTABLE(pcl_match_linemod_template "${SUBSYS_NAME}" match_linemod_template.cpp)
  target_link_libraries(pcl_match_linemod_template "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_recognition")

  PCL_ADD_EXECUTABLE(pcl_linemod_detection "${SUBSYS_NAME}" linemod_detection.cpp)
  target_link_libraries(pcl_linemod_detection "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_recognition")
  
  PCL_ADD_EXECUTABLE(pcl_fast_bilateral_filter "${SUBSYS_NAME}" fast_bilateral_filter.cpp)
  target_link_libraries(pcl_fast_bilateral_filter "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_filters")

  PCL_ADD_EXECUTABLE(pcl_demean_cloud "${SUBSYS_NAME}" demean_cloud.cpp)
  target_link_libraries(pcl_demean_cloud "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io")

  PCL_ADD_EXECUTABLE(pcl_compute_hausdorff "${SUBSYS_NAME}" compute_hausdorff.cpp)
  target_link_libraries(pcl_compute_hausdorff "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_search")

  PCL_ADD_EXECUTABLE(pcl_morph "${SUBSYS_NAME}" morph.cpp)
  target_link_libraries(pcl_morph "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_filters")
  
  PCL_ADD_EXECUTABLE(pcl_progressive_morphological_filter "${SUBSYS_NAME}" progressive_morphological_filter.cpp)
  target_link_libraries(pcl_progressive_morphological_filter "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_filters" "${PREPEND_LIB_NAME}pcl_segmentation")

  PCL_ADD_EXECUTABLE(pcl_generate "${SUBSYS_NAME}" generate.cpp)
  target_link_libraries(pcl_generate "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io")

  PCL_ADD_EXECUTABLE(pcl_local_max "${SUBSYS_NAME}" local_max.cpp)
  target_link_libraries(pcl_local_max "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_filters")

  PCL_ADD_EXECUTABLE(pcl_grid_min "${SUBSYS_NAME}" grid_min.cpp)
  target_link_libraries(pcl_grid_min "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_filters")

  if(WITH_OPENNI)
    PCL_ADD_EXECUTABLE(pcl_oni2pcd "${SUBSYS_NAME}" oni2pcd.cpp)
    target_link_libraries(pcl_oni2pcd "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io")
  endif()

  if (QHULL_FOUND)
    PCL_ADD_EXECUTABLE(pcl_crop_to_hull "${SUBSYS_NAME}" crop_to_hull.cpp)
    target_link_libraries(pcl_crop_to_hull "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_filters" "${PREPEND_LIB_NAME}pcl_surface")

    PCL_ADD_EXECUTABLE(pcl_compute_hull "${SUBSYS_NAME}" compute_hull.cpp)
    target_link_libraries(pcl_compute_hull "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_surface")
  endif (QHULL_FOUND)

  if(NOT VTK_FOUND)
    set(DEFAULT FALSE)
    set(REASON "VTK was not found.")
  else(NOT VTK_FOUND)
      set(DEFAULT TRUE)
      set(REASON)
      set(VTK_USE_FILE "${VTK_USE_FILE}" CACHE INTERNAL "VTK_USE_FILE")
      include("${VTK_USE_FILE}")
      include_directories("${CMAKE_CURRENT_SOURCE_DIR}/include")
  
      PCL_ADD_EXECUTABLE(pcl_png2pcd "${SUBSYS_NAME}" png2pcd.cpp)
      target_link_libraries(pcl_png2pcd "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io")

      PCL_ADD_EXECUTABLE(pcl_pcd2png "${SUBSYS_NAME}" pcd2png.cpp)
      target_link_libraries(pcl_pcd2png "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io")

      PCL_ADD_EXECUTABLE (pcl_organized_pcd_to_png "${SUBSYS_NAME}" organized_pcd_to_png.cpp)
      target_link_libraries (pcl_organized_pcd_to_png "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io")

      PCL_ADD_EXECUTABLE(pcl_tiff2pcd "${SUBSYS_NAME}" tiff2pcd.cpp)
      target_link_libraries(pcl_tiff2pcd "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io")
          
      PCL_ADD_EXECUTABLE(pcl_ply2vtk "${SUBSYS_NAME}" ply2vtk.cpp)
      target_link_libraries(pcl_ply2vtk "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io")

      PCL_ADD_EXECUTABLE(pcl_vtk2ply "${SUBSYS_NAME}" vtk2ply.cpp)
      target_link_libraries(pcl_vtk2ply "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io")

      PCL_ADD_EXECUTABLE(pcl_vtk2obj "${SUBSYS_NAME}" vtk2obj.cpp)
      target_link_libraries(pcl_vtk2obj "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io")

      PCL_ADD_EXECUTABLE(pcl_obj2vtk "${SUBSYS_NAME}" obj2vtk.cpp)
      target_link_libraries(pcl_obj2vtk "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io")

      PCL_ADD_EXECUTABLE(pcl_obj2pcd "${SUBSYS_NAME}" obj2pcd.cpp)
      target_link_libraries(pcl_obj2pcd "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io")

      PCL_ADD_EXECUTABLE(pcl_obj2ply "${SUBSYS_NAME}" obj2ply.cpp)
      target_link_libraries(pcl_obj2ply "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io")

      PCL_ADD_EXECUTABLE(pcl_vtk2pcd "${SUBSYS_NAME}" vtk2pcd.cpp)
      target_link_libraries(pcl_vtk2pcd "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io")

      if(BUILD_visualization)

        PCL_SUBSYS_DEPEND(BUILD_tools "${SUBSYS_NAME}" DEPS visualization)

        PCL_ADD_EXECUTABLE(pcl_obj_rec_ransac_model_opps "${SUBSYS_NAME}" obj_rec_ransac_model_opps.cpp)
        target_link_libraries(pcl_obj_rec_ransac_model_opps "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_visualization" "${PREPEND_LIB_NAME}pcl_recognition")

        PCL_ADD_EXECUTABLE(pcl_obj_rec_ransac_hash_table "${SUBSYS_NAME}" obj_rec_ransac_hash_table.cpp)
        target_link_libraries(pcl_obj_rec_ransac_hash_table "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_visualization" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_recognition")

        PCL_ADD_EXECUTABLE(pcl_obj_rec_ransac_scene_opps "${SUBSYS_NAME}" obj_rec_ransac_scene_opps.cpp)
        target_link_libraries(pcl_obj_rec_ransac_scene_opps "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_visualization" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_recognition")

        PCL_ADD_EXECUTABLE(pcl_obj_rec_ransac_accepted_hypotheses "${SUBSYS_NAME}" obj_rec_ransac_accepted_hypotheses.cpp)
        target_link_libraries(pcl_obj_rec_ransac_accepted_hypotheses "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_visualization" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_recognition")

        PCL_ADD_EXECUTABLE(pcl_obj_rec_ransac_orr_octree "${SUBSYS_NAME}" obj_rec_ransac_orr_octree.cpp)
        target_link_libraries(pcl_obj_rec_ransac_orr_octree "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_visualization" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_recognition")

        PCL_ADD_EXECUTABLE(pcl_obj_rec_ransac_orr_octree_zprojection "${SUBSYS_NAME}" obj_rec_ransac_orr_octree_zprojection.cpp)
        target_link_libraries(pcl_obj_rec_ransac_orr_octree_zprojection "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_visualization" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_recognition")

        PCL_ADD_EXECUTABLE(pcl_obj_rec_ransac_result "${SUBSYS_NAME}" obj_rec_ransac_result.cpp)
        target_link_libraries(pcl_obj_rec_ransac_result "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_visualization" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_segmentation" "${PREPEND_LIB_NAME}pcl_recognition")

        PCL_ADD_EXECUTABLE(pcl_registration_visualizer "${SUBSYS_NAME}" registration_visualizer.cpp)
        target_link_libraries(pcl_registration_visualizer "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_kdtree" "${PREPEND_LIB_NAME}pcl_filters" "${PREPEND_LIB_NAME}pcl_registration" "${PREPEND_LIB_NAME}pcl_visualization")

        PCL_ADD_EXECUTABLE(pcl_octree_viewer "${SUBSYS_NAME}" octree_viewer.cpp)
        target_link_libraries(pcl_octree_viewer "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_octree" "${PREPEND_LIB_NAME}pcl_visualization" "${PREPEND_LIB_NAME}pcl_kdtree" "${PREPEND_LIB_NAME}pcl_filters")

        PCL_ADD_EXECUTABLE(pcl_mesh2pcd "${SUBSYS_NAME}" mesh2pcd.cpp)
        target_link_libraries(pcl_mesh2pcd "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_visualization" "${PREPEND_LIB_NAME}pcl_filters" ${VTK_LIBRARIES})
        
        PCL_ADD_EXECUTABLE(pcl_mesh_sampling "${SUBSYS_NAME}" mesh_sampling.cpp)
        target_link_libraries(pcl_mesh_sampling "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_visualization" "${PREPEND_LIB_NAME}pcl_filters" ${VTK_LIBRARIES})
        
        PCL_ADD_EXECUTABLE(pcl_virtual_scanner "${SUBSYS_NAME}" virtual_scanner.cpp)
        target_link_libraries(pcl_virtual_scanner "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_filters" "${PREPEND_LIB_NAME}pcl_visualization" ${VTK_LIBRARIES})

        PCL_ADD_EXECUTABLE (pcl_voxel_grid_occlusion_estimation "${SUBSYS_NAME}" voxel_grid_occlusion_estimation.cpp)
        target_link_libraries (pcl_voxel_grid_occlusion_estimation "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_filters" "${PREPEND_LIB_NAME}pcl_visualization")
        
        if(WITH_OPENNI)
          PCL_ADD_EXECUTABLE(pcl_openni_save_image "${SUBSYS_NAME}" openni_save_image.cpp)
          target_link_libraries(pcl_openni_save_image "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_visualization")  
        endif()
      endif(BUILD_visualization)
  endif(NOT VTK_FOUND)

  PCL_ADD_EXECUTABLE (pcl_transform_point_cloud "${SUBSYS_NAME}" transform_point_cloud.cpp)
  target_link_libraries (pcl_transform_point_cloud "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_registration")

  PCL_ADD_EXECUTABLE (pcl_transform_from_viewpoint "${SUBSYS_NAME}" transform_from_viewpoint.cpp)
  target_link_libraries (pcl_transform_from_viewpoint "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_registration")

  find_package(tide QUIET)
  if(Tide_FOUND)
      include_directories(${Tide_INCLUDE_DIRS})
      add_definitions(${Tide_DEFINITIONS})
      PCL_ADD_EXECUTABLE(pcl_video "${SUBSYS_NAME}" pcl_video.cpp)
      target_link_libraries(pcl_video "${PREPEND_LIB_NAME}pcl_common" "${PREPEND_LIB_NAME}pcl_io" "${PREPEND_LIB_NAME}pcl_visualization"
          ${Tide_LIBRARIES})
  endif(Tide_FOUND)
  

endif (BUILD_tools)
