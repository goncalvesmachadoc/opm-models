# -*- mode: cmake; tab-width: 2; indent-tabs-mode: t; truncate-lines: t; compile-command: "cmake -Wdev" -*-
# vim: set filetype=cmake autoindent tabstop=2 shiftwidth=2 noexpandtab softtabstop=2 nowrap:

# This file sets up five lists:
#	MAIN_SOURCE_FILES     List of compilation units which will be included in
#	                      the library. If it isn't on this list, it won't be
#	                      part of the library. Please try to keep it sorted to
#	                      maintain sanity.
#
#	TEST_SOURCE_FILES     List of programs that will be run as unit tests.
#
#	TEST_DATA_FILES       Files from the source three that should be made
#	                      available in the corresponding location in the build
#	                      tree in order to run tests there.
#
#	EXAMPLE_SOURCE_FILES  Other programs that will be compiled as part of the
#	                      build, but which is not part of the library nor is
#	                      run as tests.
#
#	PUBLIC_HEADER_FILES   List of public header files that should be
#	                      distributed together with the library. The source
#	                      files can of course include other files than these;
#	                      you should only add to this list if the *user* of
#	                      the library needs it.
#
# ATTIC_FILES           Unmaintained files. This for the projects developers
#                       only. Don't expect these files to build.

# originally generated with the command:
# find opm -name '*.c*' -printf '\t%p\n' | sort
#list(APPEND MAIN_SOURCE_FILES "")

# originally generated with the command:
# find tests -name '*.cpp' -a ! -wholename '*/not-unit/*' -printf '\t%p\n' | sort
#list(APPEND TEST_SOURCE_FILES "")

# originally generated with the command:
# find tests -name '*.xml' -a ! -wholename '*/not-unit/*' -printf '\t%p\n' | sort
file(GLOB_RECURSE TMP_GRIDS RELATIVE "${PROJECT_SOURCE_DIR}" "tests/*.dgf")
file(GLOB_RECURSE TMP_VTUS RELATIVE "${PROJECT_SOURCE_DIR}" "*tests/*.vtu")
file(GLOB_RECURSE TMP_VTPS RELATIVE "${PROJECT_SOURCE_DIR}" "tests/*.vtp")

list(APPEND TEST_DATA_FILES
	${TMP_GRIDS}
	${TMP_VTPS}
	${TMP_VTUS}
	)

list(APPEND TEST_SOURCE_FILES)

list(APPEND TEST_SOURCE_FILES)

# originally generated with the command:
# find tutorials examples -name '*.c*' -printf '\t%p\n' | sort
list(APPEND EXAMPLE_SOURCE_FILES
	)

# programs listed here will not only be compiled, but also marked for
# installation
list (APPEND PROGRAM_SOURCE_FILES
	)

list (APPEND PUBLIC_HEADER_FILES
             ewoms/nonlinear/nullconvergencewriter.hh
             ewoms/nonlinear/newtonmethod.hh
             ewoms/io/vtktensorfunction.hh
             ewoms/io/dgfvanguard.hh
             ewoms/io/vtkscalarfunction.hh
             ewoms/io/vtkenergymodule.hh
             ewoms/io/restart.hh
             ewoms/io/cubegridvanguard.hh
             ewoms/io/baseoutputwriter.hh
             ewoms/io/vtkmultiwriter.hh
             ewoms/io/vtkmultiphasemodule.hh
             ewoms/io/vtkdiscretefracturemodule.hh
             ewoms/io/vtkdiffusionmodule.hh
             ewoms/io/vtkphasepresencemodule.hh
             ewoms/io/vtkblackoilmodule.hh
             ewoms/io/vtkblackoilsolventmodule.hh
             ewoms/io/vtkvectorfunction.hh
             ewoms/io/vtkprimaryvarsmodule.hh
             ewoms/io/simplexvanguard.hh
             ewoms/io/basevanguard.hh
             ewoms/io/vtktemperaturemodule.hh
             ewoms/io/vtkcompositionmodule.hh
             ewoms/io/structuredgridvanguard.hh
             ewoms/io/vtkblackoilenergymodule.hh
             ewoms/io/baseoutputmodule.hh
             ewoms/io/vtkblackoilpolymermodule.hh
             ewoms/models/richards/richardsmodel.hh
             ewoms/models/richards/richardsextensivequantities.hh
             ewoms/models/richards/richardsratevector.hh
             ewoms/models/richards/richardsprimaryvariables.hh
             ewoms/models/richards/richardsnewtonmethod.hh
             ewoms/models/richards/richardsindices.hh
             ewoms/models/richards/richardsboundaryratevector.hh
             ewoms/models/richards/richardsproperties.hh
             ewoms/models/richards/richardsintensivequantities.hh
             ewoms/models/richards/richardslocalresidual.hh
             ewoms/models/pvs/pvsboundaryratevector.hh
             ewoms/models/pvs/pvsratevector.hh
             ewoms/models/pvs/pvsindices.hh
             ewoms/models/pvs/pvsproperties.hh
             ewoms/models/pvs/pvsnewtonmethod.hh
             ewoms/models/pvs/pvsprimaryvariables.hh
             ewoms/models/pvs/pvsextensivequantities.hh
             ewoms/models/pvs/pvsintensivequantities.hh
             ewoms/models/pvs/pvslocalresidual.hh
             ewoms/models/pvs/pvsmodel.hh
             ewoms/models/ncp/ncpmodel.hh
             ewoms/models/ncp/ncpindices.hh
             ewoms/models/ncp/ncpextensivequantities.hh
             ewoms/models/ncp/ncpnewtonmethod.hh
             ewoms/models/ncp/ncpratevector.hh
             ewoms/models/ncp/ncpprimaryvariables.hh
             ewoms/models/ncp/ncpintensivequantities.hh
             ewoms/models/ncp/ncpproperties.hh
             ewoms/models/ncp/ncplocalresidual.hh
             ewoms/models/ncp/ncpboundaryratevector.hh
             opm/models/blackoil/blackoilmodel.hh
             opm/models/blackoil/blackoilextensivequantities.hh
             opm/models/blackoil/blackoilintensivequantities.hh
             opm/models/blackoil/blackoildarcyfluxmodule.hh
             opm/models/blackoil/blackoilratevector.hh
             opm/models/blackoil/blackoilfoammodules.hh
             opm/models/blackoil/blackoilindices.hh
             opm/models/blackoil/blackoillocalresidual.hh
             opm/models/blackoil/blackoilnewtonmethod.hh
             opm/models/blackoil/blackoilsolventmodules.hh
             opm/models/blackoil/blackoilproperties.hh
             opm/models/blackoil/blackoilprimaryvariables.hh
             opm/models/blackoil/blackoilproblem.hh
             opm/models/blackoil/blackoilenergymodules.hh
             opm/models/blackoil/blackoiltwophaseindices.hh
             opm/models/blackoil/blackoilpolymermodules.hh
             opm/models/blackoil/blackoilboundaryratevector.hh
             opm/models/common/multiphasebaseproperties.hh
             opm/models/common/multiphasebasemodel.hh
             opm/models/common/quantitycallbacks.hh
             opm/models/common/multiphasebaseextensivequantities.hh
             opm/models/common/multiphasebaseproblem.hh
             opm/models/common/diffusionmodule.hh
             opm/models/common/flux.hh
             opm/models/common/forchheimerfluxmodule.hh
             opm/models/common/darcyfluxmodule.hh
             opm/models/common/energymodule.hh
             opm/models/discretefracture/discretefractureproblem.hh
             opm/models/discretefracture/discretefractureprimaryvariables.hh
             opm/models/discretefracture/discretefractureproperties.hh
             opm/models/discretefracture/fracturemapper.hh
             opm/models/discretefracture/discretefractureextensivequantities.hh
             opm/models/discretefracture/discretefracturemodel.hh
             opm/models/discretefracture/discretefractureintensivequantities.hh
             opm/models/discretefracture/discretefracturelocalresidual.hh
             opm/models/discretization/vcfv/vcfvbaseoutputmodule.hh
             opm/models/discretization/vcfv/vcfvdiscretization.hh
             opm/models/discretization/vcfv/p1fegradientcalculator.hh
             opm/models/discretization/vcfv/vcfvgridcommhandlefactory.hh
             opm/models/discretization/vcfv/vcfvproperties.hh
             opm/models/discretization/vcfv/vcfvstencil.hh
             opm/models/discretization/common/fvbasenewtonmethod.hh
             opm/models/discretization/common/fvbasenewtonconvergencewriter.hh
             opm/models/discretization/common/fvbaseintensivequantities.hh
             opm/models/discretization/common/fvbaseconstraintscontext.hh
             opm/models/discretization/common/baseauxiliarymodule.hh
             opm/models/discretization/common/fvbaseelementcontext.hh
             opm/models/discretization/common/fvbaselocalresidual.hh
             opm/models/discretization/common/fvbasefdlocallinearizer.hh
             opm/models/discretization/common/fvbaseboundarycontext.hh
             opm/models/discretization/common/fvbaseadlocallinearizer.hh
             opm/models/discretization/common/fvbaseconstraints.hh
             opm/models/discretization/common/fvbaseproperties.hh
             opm/models/discretization/common/fvbaseextensivequantities.hh
             opm/models/discretization/common/fvbaselinearizer.hh
             opm/models/discretization/common/restrictprolong.hh
             opm/models/discretization/common/fvbasediscretization.hh
             opm/models/discretization/common/fvbasegradientcalculator.hh
             opm/models/discretization/common/fvbaseproblem.hh
             opm/models/discretization/common/fvbaseprimaryvariables.hh
             opm/models/discretization/ecfv/ecfvgridcommhandlefactory.hh
             opm/models/discretization/ecfv/ecfvstencil.hh
             opm/models/discretization/ecfv/ecfvbaseoutputmodule.hh
             opm/models/discretization/ecfv/ecfvdiscretization.hh
             opm/models/discretization/ecfv/ecfvproperties.hh
             opm/models/flash/flashmodel.hh
             opm/models/flash/flashintensivequantities.hh
             opm/models/flash/flashindices.hh
             opm/models/flash/flashlocalresidual.hh
             opm/models/flash/flashratevector.hh
             opm/models/flash/flashboundaryratevector.hh
             opm/models/flash/flashprimaryvariables.hh
             opm/models/flash/flashextensivequantities.hh
             opm/models/flash/flashproperties.hh
             opm/models/immiscible/immisciblelocalresidual.hh
             opm/models/immiscible/immiscibleproperties.hh
             opm/models/immiscible/immisciblemodel.hh
             opm/models/immiscible/immiscibleboundaryratevector.hh
             opm/models/immiscible/immiscibleratevector.hh
             opm/models/immiscible/immiscibleindices.hh
             opm/models/immiscible/immiscibleextensivequantities.hh
             opm/models/immiscible/immiscibleprimaryvariables.hh
             opm/models/immiscible/immiscibleintensivequantities.hh
             opm/models/parallel/tasklets.hh
             opm/models/parallel/threadmanager.hh
             opm/models/parallel/gridcommhandles.hh
             opm/models/parallel/mpibuffer.hh
             opm/models/parallel/threadedentityiterator.hh
             opm/models/utils/start.hh
             opm/models/utils/timerguard.hh
             opm/models/utils/propertysystem.hh
             opm/models/utils/pffgridvector.hh
             opm/models/utils/prefetch.hh
             opm/models/utils/parametersystem.hh
             opm/models/utils/simulator.hh
             opm/models/utils/quadraturegeometries.hh
             opm/models/utils/alignedallocator.hh
             opm/models/utils/timer.hh
             opm/models/utils/signum.hh
             opm/models/utils/genericguard.hh
             opm/models/utils/basicproperties.hh
             opm/simulators/linalg/parallelistlbackend.hh
             opm/simulators/linalg/weightedresidreductioncriterion.hh
             opm/simulators/linalg/vertexborderlistfromgrid.hh
             opm/simulators/linalg/linearsolverreport.hh
             opm/simulators/linalg/istlsparsematrixadapter.hh
             opm/simulators/linalg/istlpreconditionerwrappers.hh
             opm/simulators/linalg/residreductioncriterion.hh
             opm/simulators/linalg/overlappingbcrsmatrix.hh
             opm/simulators/linalg/blacklist.hh
             opm/simulators/linalg/parallelbasebackend.hh
             opm/simulators/linalg/overlappingblockvector.hh
             opm/simulators/linalg/parallelbicgstabbackend.hh
             opm/simulators/linalg/nullborderlistmanager.hh
             opm/simulators/linalg/overlappingoperator.hh
             opm/simulators/linalg/elementborderlistfromgrid.hh
             opm/simulators/linalg/combinedcriterion.hh
             opm/simulators/linalg/bicgstabsolver.hh
             opm/simulators/linalg/globalindices.hh
             opm/simulators/linalg/superlubackend.hh
             opm/simulators/linalg/matrixblock.hh
             opm/simulators/linalg/istlsolverwrappers.hh
             opm/simulators/linalg/overlaptypes.hh
             opm/simulators/linalg/overlappingpreconditioner.hh
             opm/simulators/linalg/domesticoverlapfrombcrsmatrix.hh
             opm/simulators/linalg/fixpointcriterion.hh
             opm/simulators/linalg/parallelamgbackend.hh
             opm/simulators/linalg/foreignoverlapfrombcrsmatrix.hh
             opm/simulators/linalg/overlappingscalarproduct.hh
             opm/simulators/linalg/convergencecriterion.hh)
