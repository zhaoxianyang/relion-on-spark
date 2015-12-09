# RELION optimiser
# --o Class2D/manual --i particles_manual.star --particle_diameter 200 --angpix 3.54 --ctf --iter 25 --tau2_fudge 2 --K 10 --flatten_solvent --zero_mask --oversampling 1 --psi_step 10 --offset_range 5 --offset_step 2 --norm --scale --j 4 --memory_per_thread 4 

data_optimiser_general

_rlnOutputRootName                                    Class2D/manual
_rlnModelStarFile                                     Class2D/manual_it018_model.star
_rlnExperimentalDataStarFile                          Class2D/manual_it018_data.star
_rlnOrientSamplingStarFile                            Class2D/manual_it018_sampling.star
_rlnCurrentIteration                                            18
_rlnNumberOfIterations                                          25
_rlnDoSplitRandomHalves                                          0
_rlnJoinHalvesUntilThisResolution                        -1.000000
_rlnAdaptiveOversampleOrder                                      1
_rlnAdaptiveOversampleFraction                            0.999000
_rlnRandomSeed                                          1401887228
_rlnParticleDiameter                                    200.000000
_rlnWidthMaskEdge                                                5
_rlnDoZeroMask                                                   1
_rlnDoSolventFlattening                                          1
_rlnSolventMaskName                                   None
_rlnSolventMask2Name                                  None
_rlnTauSpectrumName                                   None
_rlnCoarseImageSize                                             62
_rlnMaximumCoarseImageSize                                     100
_rlnHighresLimitExpectation                              -1.000000
_rlnIncrementImageSize                                          10
_rlnDoMapEstimation                                              1
_rlnDoAutoRefine                                                 0
_rlnAutoLocalSearchesHealpixOrder                                4
_rlnNumberOfIterWithoutResolutionGain                            4
_rlnBestResolutionThusFar                                 0.067797
_rlnNumberOfIterWithoutChangingAssignments                       1
_rlnDoSkipAlign                                                  0
_rlnDoSkipRotate                                                 0
_rlnOverallAccuracyRotations                              2.100000
_rlnOverallAccuracyTranslations                           0.550000
_rlnChangesOptimalOrientations                         3600.000000
_rlnChangesOptimalOffsets                                 0.517087
_rlnChangesOptimalClasses                                 0.029117
_rlnSmallestChangesOrientations                         999.000000
_rlnSmallestChangesOffsets                                0.437446
_rlnSmallestChangesClasses                                       0
_rlnHasConverged                                                 0
_rlnHasHighFscAtResolLimit                                       0
_rlnHasLargeSizeIncreaseIterationsAgo                            0
_rlnDoCorrectNorm                                                1
_rlnDoCorrectScale                                               1
_rlnDoCorrectCtf                                                 1
_rlnDoRealignMovies                                              0
_rlnDoIgnoreCtfUntilFirstPeak                                    0
_rlnCtfDataArePhaseFlipped                                       0
_rlnDoOnlyFlipCtfPhases                                          0
_rlnRefsAreCtfCorrected                                          1
_rlnFixSigmaNoiseEstimates                                       0
_rlnFixSigmaOffsetEstimates                                      0
_rlnMaxNumberOfPooledParticles                                   8
_rlnAvailableMemory                                       4.000000
 
