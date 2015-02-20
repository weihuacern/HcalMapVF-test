ifeq ($(strip $(MapTester)),)
MapTester_files := $(patsubst src/CalibCalorimetry/HcalAlgos/plugins/%,%,$(foreach file,MapTester.cc,$(eval xfile:=$(wildcard src/CalibCalorimetry/HcalAlgos/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/CalibCalorimetry/HcalAlgos/plugins/$(file). Please fix src/CalibCalorimetry/HcalAlgos/plugins/BuildFile.))))
MapTester := self/src/CalibCalorimetry/HcalAlgos/plugins
MapTester_BuildFile    := $(WORKINGDIR)/cache/bf/src/CalibCalorimetry/HcalAlgos/plugins/BuildFile
MapTester_LOC_USE := self  clhep DataFormats/HcalDetId CalibCalorimetry/HcalAlgos CondFormats/HcalObjects CondFormats/DataRecord CondCore/DBCommon CondCore/IOVService CondCore/MetaDataService Geometry/Records FWCore/Framework CalibCalorimetry/HcalTPGAlgos xerces-c boost
MapTester_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,MapTester,MapTester,$(SCRAMSTORENAME_LIB),src/CalibCalorimetry/HcalAlgos/plugins))
MapTester_PACKAGE := self/src/CalibCalorimetry/HcalAlgos/plugins
ALL_PRODS += MapTester
MapTester_INIT_FUNC        += $$(eval $$(call Library,MapTester,src/CalibCalorimetry/HcalAlgos/plugins,src_CalibCalorimetry_HcalAlgos_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,MapTester,src/CalibCalorimetry/HcalAlgos/plugins))
endif
ifeq ($(strip $(HcalShapeIntegrator)),)
HcalShapeIntegrator_files := $(patsubst src/CalibCalorimetry/HcalAlgos/plugins/%,%,$(foreach file,HcalShapeIntegrator.cpp,$(eval xfile:=$(wildcard src/CalibCalorimetry/HcalAlgos/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/CalibCalorimetry/HcalAlgos/plugins/$(file). Please fix src/CalibCalorimetry/HcalAlgos/plugins/BuildFile.))))
HcalShapeIntegrator := self/src/CalibCalorimetry/HcalAlgos/plugins
HcalShapeIntegrator_BuildFile    := $(WORKINGDIR)/cache/bf/src/CalibCalorimetry/HcalAlgos/plugins/BuildFile
HcalShapeIntegrator_LOC_USE := self  clhep DataFormats/HcalDetId CalibCalorimetry/HcalAlgos CondFormats/HcalObjects CondFormats/DataRecord CondCore/DBCommon CondCore/IOVService CondCore/MetaDataService
HcalShapeIntegrator_PACKAGE := self/src/CalibCalorimetry/HcalAlgos/plugins
ALL_PRODS += HcalShapeIntegrator
HcalShapeIntegrator_INIT_FUNC        += $$(eval $$(call Binary,HcalShapeIntegrator,src/CalibCalorimetry/HcalAlgos/plugins,src_CalibCalorimetry_HcalAlgos_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,HcalShapeIntegrator,src/CalibCalorimetry/HcalAlgos/plugins))
endif
ifeq ($(strip $(HcalPulseContainmentTest)),)
HcalPulseContainmentTest_files := $(patsubst src/CalibCalorimetry/HcalAlgos/plugins/%,%,$(foreach file,HcalPulseContainmentTest.cpp,$(eval xfile:=$(wildcard src/CalibCalorimetry/HcalAlgos/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/CalibCalorimetry/HcalAlgos/plugins/$(file). Please fix src/CalibCalorimetry/HcalAlgos/plugins/BuildFile.))))
HcalPulseContainmentTest := self/src/CalibCalorimetry/HcalAlgos/plugins
HcalPulseContainmentTest_BuildFile    := $(WORKINGDIR)/cache/bf/src/CalibCalorimetry/HcalAlgos/plugins/BuildFile
HcalPulseContainmentTest_LOC_USE := self  clhep DataFormats/HcalDetId CalibCalorimetry/HcalAlgos CondFormats/HcalObjects CondFormats/DataRecord CondCore/DBCommon CondCore/IOVService CondCore/MetaDataService
HcalPulseContainmentTest_PACKAGE := self/src/CalibCalorimetry/HcalAlgos/plugins
ALL_PRODS += HcalPulseContainmentTest
HcalPulseContainmentTest_INIT_FUNC        += $$(eval $$(call Binary,HcalPulseContainmentTest,src/CalibCalorimetry/HcalAlgos/plugins,src_CalibCalorimetry_HcalAlgos_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,HcalPulseContainmentTest,src/CalibCalorimetry/HcalAlgos/plugins))
endif
ALL_COMMONRULES += src_CalibCalorimetry_HcalAlgos_plugins
src_CalibCalorimetry_HcalAlgos_plugins_parent := CalibCalorimetry/HcalAlgos
src_CalibCalorimetry_HcalAlgos_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CalibCalorimetry_HcalAlgos_plugins,src/CalibCalorimetry/HcalAlgos/plugins,PLUGINS))
