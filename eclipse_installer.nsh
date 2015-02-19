# Copyright (c) 2005-2015 Ross Smith II (http://smithii.com). MIT Licensed.

/*

Test 1:	Result:	ok
	Eclipse
	Platform


Test 2:	Result:	errors
	Eclipse
	Platform
	WTP
		EMF
		GEF

Test 3:	Result: errors
	Eclipse
	Platform
	PHP

Test 4:	Result: ok
	Eclipse
	Platform
	CDT

Test 5:	Result:	ok
	Eclipse
	Platform
	EMF

Test 6:	Result: ok
	Eclipse
	Platform
	GEF

Test 7:	Result:	ok
	Eclipse
	Platform
	WTP (without EMF, GEF)

Test 8:	Result:	ok
	Eclipse
	Platform


*/

# @todo: add jdbc drivers:

#   1. Web Tools
#   2. Eclipse Platform/SDK
#   3. C/C++ Development Tools (CDT)
#   4. Test & Performance Tools (TPTP)
#   5. Eclipse Modeling Framework (EMF)
#   6. Visual Editor (VE)
#   7. Graphical Editing Framework (GEF)
#   8. Standard Widget Toolkit (SWT)
#   9. Business Intelligence and Reporting (BIRT)
#  10. Data Tools Platform Project (DTP)

##############################
SectionGroup "${STABLE_BUILD} - Latest Release"
##############################

# http://www.eclipse.org/eclipse/platform-releng/3.2-endgame-buildschedule.html
# http://download.eclipse.org/eclipse/downloads/drops/S-3.2RC5-200605191206/eclipse-SDK-3.2RC5-win32.zip

!define URL_ROOT http://download.eclipse.org/eclipse/downloads/drops/R-3.2.2-200702121330

	!insertmacro DownloadGUI "1 2" "Eclipse SDK ${STABLE_BUILD}"				"${URL_ROOT}/eclipse-SDK-${STABLE_BUILD}-win32.zip" "eclipse\eclipse.exe" "" ''

	!define SECTION_ECLIPSE Section${SECTION_NO}

#!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
#  !insertmacro MUI_DESCRIPTION_TEXT 'Eclipse SDK 3.2M6' "http://www.software-mirror.com/eclipse/eclipse/downloads/drops/S-3.2M6-200603312000/eclipse-SDK-3.2M6-win32.zip"
#!insertmacro MUI_FUNCTION_DESCRIPTION_END

	!insertmacro DownloadCLI "1 2" "Platform-SDK ${STABLE_BUILD}"				"${URL_ROOT}/eclipse-platform-SDK-${STABLE_BUILD}-win32.zip" "" ''

	!define SECTION_PLATFORM Section${SECTION_NO}

	!insertmacro DownloadCLI 2 "Automated-Tests ${STABLE_BUILD}"				"${URL_ROOT}/eclipse-Automated-Tests-${STABLE_BUILD}.zip" "" ''

	#includes Eclipse SDK, GEF, EMF
	#!insertmacro DownloadCLI 2  "BIRT 2.1.2 (Business Intelligence and Reporting Tools Report Designer)" "http://download.eclipse.org/birt/downloads/drops/R-R1-2_1_2-200702081000/birt-report-designer-all-in-one-2.1.2.zip" "" ''

	!insertmacro DownloadCLI 2  "BIRT 2.1.2 (Business Intelligence and Reporting Tools Report Designer)" "http://download.eclipse.org/birt/downloads/drops/R-R1-2_1_2-200702271000/birt-report-framework-2.1.2.zip" "" ''

	!define SECTION_BIRT Section${SECTION_NO}

		!insertmacro DownloadAny 2 "iText 1.3"										"http://easynews.dl.sourceforge.net/sourceforge/itext/itext-1.3.jar" "eclipse\plugins\org.eclipse.birt.report.engine.emitter.pdf_version\lib" ''
		#!insertmacro DownloadAny 2 "iText 1.4"										"http://easynews.dl.sourceforge.net/sourceforge/itext/itext-1.4.jar" "eclipse\plugins\org.eclipse.birt.report.engine.emitter.pdf_version\lib"

		!define SECTION_ITEXT Section${SECTION_NO}

		!insertmacro DownloadAny 2 "prototype.js 1.4.0"								"http://dev.conio.net/repos/prototype/dist/prototype.js" "plugins\org.eclipse.birt.report.viewer_version\birt\ajax\lib" ''

		!define SECTION_PROTOTYPE Section${SECTION_NO}

		# @todo: add jdbc drivers:

		#http://jdbc.postgresql.org/download/postgresql-8.2dev-501.jdbc3.jar
		#http://mysql.osuosl.org/Downloads/Connector-J/mysql-connector-java-3.1.12.zip

!insertmacro DownloadCLI 2 "CDT 3.1.2 (C/C++ IDE)"							"http://download.eclipse.org/tools/cdt/releases/callisto/dist/3.1.2/org.eclipse.cdt-3.1.2-win32.x86.zip" "" ''

	!define SECTION_CDT Section${SECTION_NO}

!insertmacro DownloadCLI 2 "DTP-SDK 1.0 (Data Tools Platform)"				"http://download.eclipse.org/datatools/downloads/1.0/dtp_1.0_200612211.zip" "" ''

	!define SECTION_DTP Section${SECTION_NO}

!insertmacro DownloadCLI 2 "EMF-SDO-XSD-SDK 2.3.0M5 (Eclipse Modeling Framework)" "http://download.eclipse.org/modeling/emf/emf/downloads/drops/2.3.0/S200702121527/emf-sdo-xsd-SDK-2.3.0M5.zip" "" ''

	!define SECTION_EMF_SDO_XSD Section${SECTION_NO}

	!insertmacro DownloadCLI 2 "Examples ${STABLE_BUILD}"						"${URL_ROOT}/eclipse-examples-${STABLE_BUILD}-win32.zip" "" ''

	!define SECTION_EXAMPLES Section${SECTION_NO}

	!insertmacro DownloadCLI 2 "FTP-WebDAV ${STABLE_BUILD}"						"${URL_ROOT}/eclipse-FTP-WebDAV-${STABLE_BUILD}.zip" "" ''

	!define SECTION_FTP Section${SECTION_NO}

	!insertmacro DownloadCLI 2 "GEF-ALL ${STABLE_BUILD} (Graphical Editor Framework)" "http://download.eclipse.org/tools/gef/downloads/drops/R-3.2.2-200702081315/GEF-ALL-3.2.2.zip" "" ''

	!define SECTION_GEF Section${SECTION_NO}

	!insertmacro DownloadCLI 2 "JDT-SDK ${STABLE_BUILD} (Java Development Tools)" "${URL_ROOT}/eclipse-JDT-SDK-${STABLE_BUILD}.zip" "" ''

	!define SECTION_JDT Section${SECTION_NO}

	# included in VE SDK
	#!insertmacro DownloadCLI 2 "JEM-SDK 1.2M2 (Java EMF Model)"				"http://download.eclipse.org/tools/ve/downloads/drops/S-1.2M2-200602271803/JEM-SDK-1.2M2.zip" "" ''

	!insertmacro DownloadCLI 2 "PDE-SDK ${STABLE_BUILD} (Plugin Development Environment)" "${URL_ROOT}/eclipse-PDE-SDK-${STABLE_BUILD}.zip" "" ''

	!define SECTION_PDE Section${SECTION_NO}

!insertmacro DownloadCLI 2 "PHP 0.7RC2 (PHP Development Tools)" "http://download.eclipse.org/tools/pdt/downloads/drops/S20070130-RC2/org.eclipse.php_feature-sdk-S20070130_RC2.zip" "" ''

	!define SECTION_PHP Section${SECTION_NO}

	!insertmacro DownloadCLI 2 "SWT ${STABLE_BUILD} (Standard Widget Toolkit)"	"${URL_ROOT}/swt-${STABLE_BUILD}-win32-win32-x86.zip" "eclipse" '' #???

	!define SECTION_SWT Section${SECTION_NO}

	!insertmacro DownloadCLI 2 "Test-Framework ${STABLE_BUILD}"					"${URL_ROOT}/eclipse-test-framework-${STABLE_BUILD}.zip" "" ''

	!define SECTION_TEST Section${SECTION_NO}

!insertmacro DownloadCLI 2 "TPTP-SDK 4.3.0 (Test & Performance Tools)"	"http://download.eclipse.org/tptp/4.3.0/TPTP-4.3.0-200611160100D/tptp.sdk-TPTP-4.3.0.zip" "" ''

	!define SECTION_TPTP Section${SECTION_NO}

!insertmacro DownloadCLI 2 "UML2-SDK 2.0.3 (Model Development Tools)"								"http://download.eclipse.org/modeling/mdt/uml2/downloads/drops/2.0.3/R200702141227/uml2-SDK-2.0.3.zip" "" ''

	!define SECTION_UML2 Section${SECTION_NO}

!insertmacro DownloadCLI 2 "VE-SDK 1.2.3 (Visual Editor)"					"http://download.eclipse.org/tools/ve/downloads/drops/R-1.2.3_jem-200701301117/VE-SDK-1.2.3_jem.zip" "" ''

	!define SECTION_VE Section${SECTION_NO}

	#!insertmacro DownloadCLI 2 "WTP SDK 1.5.3 (Web Standard Tools)" "http://download.eclipse.org/webtools/downloads/drops/R1.5/R-1.5.3-200702082048/wtp-all-in-one-sdk-R-1.5.3-win32.zip" "" ''
!insertmacro DownloadCLI 2 "WTP SDK 1.5.3 (Web Standard Tools)" "http://download.eclipse.org/webtools/downloads/drops/R1.5/R-1.5.3-200702082048/wtp-R-1.5.3.zip" "" ''

	!define SECTION_WTP Section${SECTION_NO}

SectionGroupEnd

##############################
SectionGroup "Third Party Plugins"
##############################

!insertmacro DownloadCLI "2 4" "CSSEditor 0.0.4" "http://easynews.dl.sourceforge.net/sourceforge/csseditor/net.sourceforge.csseditor_0.0.4.zip" "eclipse" ''

!insertmacro DownloadCLI "2 4" "EclipseNSIS 0.9.4" "http://easynews.dl.sourceforge.net/sourceforge/eclipsensis/net.sf.eclipsensis_0.9.4.zip" "eclipse" ''
# per https://sourceforge.net/tracker/index.php?func=detail&aid=1443239&group_id=116143&atid=673849
!insertmacro DownloadCLI "2 4" "EclipseNSIS 0.9.4 hotfix" "http://easynews.dl.sourceforge.net/sourceforge/eclipsensis/net.sf.eclipsensis_0.9.4-hotfix.zip" "eclipse\plugins" ''
!insertmacro DownloadCLI "2 4" "EclipseNSIS installoptions 0.9.4" "http://easynews.dl.sourceforge.net/sourceforge/eclipsensis/net.sf.eclipsensis.installoptions_0.9.4.zip" "eclipse" ''
!insertmacro DownloadCLI "2 4" "EclipseNSIS utilities 0.9.0" "http://easynews.dl.sourceforge.net/sourceforge/eclipsensis/net.sf.eclipsensis.utilities_0.9.0.zip" "eclipse" ''

!insertmacro DownloadCLI "2 4" "JasperAssistant 2.2.0" "http://www.jasperassistant.com/download/JasperAssistant_2.2.0_Eclipse3.2.zip" "eclipse" ''

# Jigloo GUI Builder 3.8.2
#http://cloudgarden1.com/jigloo_382.zip

!insertmacro DownloadCLI "2 4" "PHPEclipse 1.1.8" "http://easynews.dl.sourceforge.net/sourceforge/phpeclipse/net.sourceforge.phpeclipse_1.1.8.bin.dist.zip" "eclipse" ''
#!insertmacro DownloadCLI "2 4" "PHPEclipse 1.1.7" "http://easynews.dl.sourceforge.net/sourceforge/phpeclipse/net.sourceforge.phpeclipse_1.1.7.bin.dist.zip" "eclipse" ''

!insertmacro DownloadCLI "2 4" "QuantumDB 3.0.3" "http://easynews.dl.sourceforge.net/sourceforge/quantum/com.quantum.feature_3.0.3.bin.dist.zip" "eclipse" ''

!insertmacro DownloadCLI "2 4" "RubyEclipse 0.8.0" "http://easynews.dl.sourceforge.net/sourceforge/rubyeclipse/org.rubypeople.rdt-0.8.0.604272100PRD.zip" "eclipse" ''
#!insertmacro DownloadCLI "2 4" "RubyEclipse 0.7.0" "http://easynews.dl.sourceforge.net/sourceforge/rubyeclipse/org.rubypeople.rdt-0.7.0.601192300PRD.zip" "eclipse" ''

#!insertmacro DownloadCLI "2 4" "RadRails 0.7.2" "http://radrails.sourceforge.net/update/features/org.radrails.rails_feature_0.7.2.jar" "eclipse" ''

!macro UnzipFile file dir
	IfFileExists "${file}" +3 0
	    DetailPrint "File not found: '${file}'"
	    Abort
	IfFileExists "${dir}\*.*" +6 0
		DetailPrint "Creating directory '${dir}'"
		CreateDirectory "${dir}"
		IfErrors 0 +3
		    DetailPrint "Cannot create directory '${dir}'"
		    Abort
	DetailPrint "Unzipping '${file}' to '${dir}'"
	nsisunz::UnzipToLog "${file}" "${dir}"
	Pop $0
	StrCmp $0 "success" +3
	    DetailPrint "Failed to unzip '${file}' to '${dir}': $0"
	    Abort
!macroend

!define SPRINGIDE_VER 1.3.6

#!insertmacro DownloadCLI "2 4" "SpringIDE ${SPRINGIDE_VER}" "http://springide.org/updatesite/springide_updatesite_${SPRINGIDE_VER}.zip" "eclipse" ''

Section -zzzSpringIDE

#!insertmacro UnzipFile "$INSTDIR\eclipse\features\org.springframework.ide.eclipse_${SPRINGIDE_VER}.jar" "$INSTDIR\eclipse\features\org.springframework.ide.eclipse_${SPRINGIDE_VER}"

SectionEnd

!ifdef INCLUDE_SUBVERSION
# this doesn't work :(

!define SUBVERSION_VER "1.0.3"

!insertmacro DownloadCLI "2 4" "Subclipse ${SUBVERSION_VER}" "http://smithii.com/files/site-${SUBVERSION_VER}.zip" "eclipse" ''

Section -Subversion
	!insertmacro UnzipFile $INSTDIR\eclipse\features\org.tigris.subversion.subclipse_${SUBVERSION_VER}.jar 		$INSTDIR\eclipse\features\org.tigris.subversion.subclipse_${SUBVERSION_VER}
	!insertmacro UnzipFile $INSTDIR\eclipse\plugins\org.tigris.subversion.javahl.win32_1.0.2.jar				$INSTDIR\eclipse\plugins\org.tigris.subversion.javahl.win32_1.0.2
	!insertmacro UnzipFile $INSTDIR\eclipse\plugins\org.tigris.subversion.subclipse.core_${SUBVERSION_VER}.jar	$INSTDIR\eclipse\plugins\org.tigris.subversion.subclipse.core_${SUBVERSION_VER}
	!insertmacro UnzipFile $INSTDIR\eclipse\plugins\org.tigris.subversion.subclipse.ui_${SUBVERSION_VER}.jar	$INSTDIR\eclipse\plugins\org.tigris.subversion.subclipse.ui_${SUBVERSION_VER}
	!insertmacro UnzipFile $INSTDIR\eclipse\plugins\org.tigris.subversion.subclipse_${SUBVERSION_VER}.jar		$INSTDIR\eclipse\plugins\org.tigris.subversion.subclipse_${SUBVERSION_VER}
SectionEnd

!endif

#http://osdn.dl.sourceforge.jp/amateras/19180/tk.eclipse.plugin.htmleditor_2.0.0.zip

SectionGroupEnd # "Third Party Plugins"

!include "Sections.nsh"

Function .onSelChange
	!insertmacro SectionFlagIsSet ${${SECTION_BIRT}} ${SF_SELECTED} birt_on birt_off
	birt_on:
		!insertmacro SelectSection ${${SECTION_ECLIPSE}}
		!insertmacro SelectSection ${${SECTION_EMF_SDO_XSD}}
		!insertmacro SelectSection ${${SECTION_GEF}}
		!insertmacro SelectSection ${${SECTION_ITEXT}}
		!insertmacro SelectSection ${${SECTION_PROTOTYPE}}
	birt_off:

	!insertmacro SectionFlagIsSet ${${SECTION_CDT}} ${SF_SELECTED} cdt_on cdt_off
	cdt_on:
		!insertmacro SelectSection ${${SECTION_ECLIPSE}}
		!insertmacro SelectSection ${${SECTION_PLATFORM}}
	cdt_off:

	!insertmacro SectionFlagIsSet ${${SECTION_DTP}} ${SF_SELECTED} dtp_on dtp_off
	dtp_on:
		!insertmacro SelectSection ${${SECTION_ECLIPSE}}
		!insertmacro SelectSection ${${SECTION_EMF_SDO_XSD}}
		!insertmacro SelectSection ${${SECTION_GEF}}
	dtp_off:

	!insertmacro SectionFlagIsSet ${${SECTION_ECLIPSE}} ${SF_SELECTED} eclipse_on eclipse_off
	eclipse_on:
	eclipse_off:

	!insertmacro SectionFlagIsSet ${${SECTION_EMF_SDO_XSD}} ${SF_SELECTED} xsd_on xsd_off
	xsd_on:
		!insertmacro SelectSection ${${SECTION_ECLIPSE}}
	xsd_off:

	!insertmacro SectionFlagIsSet ${${SECTION_EXAMPLES}} ${SF_SELECTED} examples_on examples_off
	examples_on:
		!insertmacro SelectSection ${${SECTION_ECLIPSE}}
	examples_off:

	!insertmacro SectionFlagIsSet ${${SECTION_FTP}} ${SF_SELECTED} ftp_on ftp_off
	ftp_on:
		!insertmacro SelectSection ${${SECTION_ECLIPSE}}
	ftp_off:

	!insertmacro SectionFlagIsSet ${${SECTION_GEF}} ${SF_SELECTED} gef_on gef_off
	gef_on:
		!insertmacro SelectSection ${${SECTION_ECLIPSE}}
	gef_off:

	!insertmacro SectionFlagIsSet ${${SECTION_JDT}} ${SF_SELECTED} jdt_on jdt_off
	jdt_on:
		!insertmacro SelectSection ${${SECTION_ECLIPSE}}
	jdt_off:

	!insertmacro SectionFlagIsSet ${${SECTION_PDE}} ${SF_SELECTED} pde_on pde_off
	pde_on:
		!insertmacro SelectSection ${${SECTION_ECLIPSE}}
	pde_off:

	!insertmacro SectionFlagIsSet ${${SECTION_PHP}} ${SF_SELECTED} php_on php_off
	php_on:
		!insertmacro SelectSection ${${SECTION_ECLIPSE}}
	php_off:

	!insertmacro SectionFlagIsSet ${${SECTION_PLATFORM}} ${SF_SELECTED} platform_on platform_off
	platform_on:
		!insertmacro SelectSection ${${SECTION_ECLIPSE}}
	platform_off:

	!insertmacro SectionFlagIsSet ${${SECTION_SWT}} ${SF_SELECTED} swt_on swt_off
	swt_on:
		!insertmacro SelectSection ${${SECTION_ECLIPSE}}
	swt_off:

	!insertmacro SectionFlagIsSet ${${SECTION_TEST}} ${SF_SELECTED} test_on test_off
	test_on:
		!insertmacro SelectSection ${${SECTION_ECLIPSE}}
	test_off:

	!insertmacro SectionFlagIsSet ${${SECTION_TPTP}} ${SF_SELECTED} tptp_on tptp_off
	tptp_on:
		!insertmacro SelectSection ${${SECTION_ECLIPSE}}
		!insertmacro SelectSection ${${SECTION_EMF_SDO_XSD}}
		# optional:
		#!insertmacro SelectSection ${${SECTION_BIRT}}
		#!insertmacro SelectSection ${${SECTION_GEF}}
		#!insertmacro SelectSection ${${SECTION_JEM}}
		#!insertmacro SelectSection ${${SECTION_WTP}}
	tptp_off:

	!insertmacro SectionFlagIsSet ${${SECTION_UML2}} ${SF_SELECTED} uml2_on uml2_off
	uml2_on:
		!insertmacro SelectSection ${${SECTION_ECLIPSE}}
		!insertmacro SelectSection ${${SECTION_EMF_SDO_XSD}}
	uml2_off:

	!insertmacro SectionFlagIsSet ${${SECTION_VE}} ${SF_SELECTED} ve_on ve_off
	ve_on:
		!insertmacro SelectSection ${${SECTION_ECLIPSE}}
	ve_off:

	!insertmacro SectionFlagIsSet ${${SECTION_WTP}} ${SF_SELECTED} wtp_on wtp_off
	wtp_on:
#		!insertmacro SelectSection ${${SECTION_ECLIPSE}}
#		!insertmacro SelectSection ${${SECTION_EMF_SDO_XSD}}
#		!insertmacro SelectSection ${${SECTION_GEF}}
		#!insertmacro SelectSection ${${SECTION_JEM}}
	wtp_off:
FunctionEnd

/*
##############################
SectionGroup "${PREVIOUS_BUILD} - Prior Release"
##############################

!insertmacro DownloadGUI "3 4" "Eclipse SDK ${PREVIOUS_BUILD}" "http://mirrors.ibiblio.org/pub/mirrors/eclipse/eclipse/downloads/drops/R-${PREVIOUS_BUILD}-200601181600/eclipse-SDK-${PREVIOUS_BUILD}-win32.zip" "eclipse\eclipse.exe" ""

!insertmacro DownloadCLI "3 4" "Platform-SDK ${PREVIOUS_BUILD}" "http://mirrors.ibiblio.org/pub/mirrors/eclipse/eclipse/downloads/drops/R-${PREVIOUS_BUILD}-200601181600/eclipse-platform-SDK-${PREVIOUS_BUILD}-win32.zip" ""

!insertmacro DownloadCLI 4  "Automated-Tests ${PREVIOUS_BUILD}" "http://mirrors.ibiblio.org/pub/mirrors/eclipse/eclipse/downloads/drops/R-${PREVIOUS_BUILD}-200601181600/eclipse-Automated-Tests-${PREVIOUS_BUILD}.zip" ""

#includes Eclipse SDK, GEF, EMF
!insertmacro DownloadCLI 4  "BIRT 2.1M5 (Business Intelligence and Reporting Tools Report Designer)" "http://download.eclipse.org/birt/downloads/drops/M-R1-2.1M5-200603030920/birt-report-designer-all-in-one-2.1M5.zip" ""
#superceeds:
#!insertmacro DownloadCLI 4  "BIRT 2.0.1 (Business Intelligence and Reporting Tools Report Designer all-in-one)" "http://mirrors.ibiblio.org/pub/mirrors/eclipse//birt/downloads/drops/R-R1-2_0_1-200602221204/birt-report-designer-all-in-one-2_0_1.zip" ""

!insertmacro DownloadCLI 4  "iText 1.4" "http://easynews.dl.sourceforge.net/sourceforge/itext/itext-1.4.jar" "eclipse\plugins\org.eclipse.birt.report.engine.emitter.pdf_version\lib"
!insertmacro DownloadCLI 4  "prototype.js" "http://dev.conio.net/repos/prototype/dist/prototype.js" "plugins\org.eclipse.birt.report.viewer_version\birt\ajax\lib"

!insertmacro DownloadCLI 4  "CDT 3.0.2 (C/C++ IDE)" "http://ftp.osuosl.org/pub/eclipse/tools/cdt/releases/eclipse3.1/dist/3.0.2/org.eclipse.cdt-3.0.2-win32.x86.zip" ""

#!insertmacro DownloadCLI 4  "COBOL 0905" "http://download.eclipse.org/tools/downloads/cobol/cobolide-0905.zip" ""
# server did not specify content length!
#!insertmacro DownloadCLI 4  "COBOL 3.0.0 Beta 2" "http://dev.eclipse.org/viewcvs/indextools.cgi/~checkout~/cobol-home/download/cobol_plugins_3.0.0_b2_win32.zip" ""

!insertmacro DownloadCLI 4  "DTP 0.7RC1 (Data Tools Platform)" "http://mirrors.ibiblio.org/pub/mirrors/eclipse//datatools/downloads/0.7/RC1/dtp-Eclipse3.1_compatibility_SDK_0.7RC1_N032106.zip" ""

!insertmacro DownloadCLI 4  "EMF-SDO-XSD-SDK 2.1.2 (Eclipse Modeling Framework)" "http://mirrors.ibiblio.org/pub/mirrors/eclipse//tools/emf/downloads/drops/2.1.2/R200601191349/emf-sdo-xsd-SDK-2.1.2.zip" ""
# SDK of and includes
#!insertmacro DownloadCLI 4  "EMF-SDO-Runtime 2.1.2 (Eclipse Modeling Framework)" "http://mirrors.ibiblio.org/pub/mirrors/eclipse/tools/emf/downloads/drops/2.1.2/R200601191349/emf-sdo-runtime-2.1.2.zip" ""
#!insertmacro DownloadCLI 4  "XSD-Runtime 2.1.2" "http://mirrors.ibiblio.org/pub/mirrors/eclipse/tools/emf/downloads/drops/2.1.2/R200601191349/xsd-runtime-2.1.2.zip" ""

!insertmacro DownloadCLI 4  "Examples ${PREVIOUS_BUILD}" "http://mirrors.ibiblio.org/pub/mirrors/eclipse/eclipse/downloads/drops/R-${PREVIOUS_BUILD}-200601181600/eclipse-examples-${PREVIOUS_BUILD}-win32.zip" ""

!insertmacro DownloadCLI 4  "FTP-WebDAV ${PREVIOUS_BUILD}" "http://mirrors.ibiblio.org/pub/mirrors/eclipse/eclipse/downloads/drops/R-${PREVIOUS_BUILD}-200601181600/eclipse-FTP-WebDAV-${PREVIOUS_BUILD}.zip" ""

!insertmacro DownloadCLI 4  "GEF-ALL 3.1.1 (Graphical Editor Framework)" "http://mirrors.ibiblio.org/pub/mirrors/eclipse//tools/gef/downloads/drops/R-${PREVIOUS_BUILD}00507071758/GEF-ALL-3.1.zip" ""
# includes:
#!insertmacro DownloadCLI 4  "GEF-Runtime 3.1.1" "http://mirrors.ibiblio.org/pub/mirrors/eclipse/tools/gef/downloads/drops/R-3.1.1-200509${PREVIOUS_BUILD}7/GEF-runtime-3.1.1.zip" ""

!insertmacro DownloadCLI 4  "JDT-SDK ${PREVIOUS_BUILD} (Java Development Tools)" "http://mirrors.ibiblio.org/pub/mirrors/eclipse/eclipse/downloads/drops/R-${PREVIOUS_BUILD}-200601181600/eclipse-JDT-SDK-${PREVIOUS_BUILD}.zip" ""
# SDK of
#!insertmacro DownloadCLI 4  "JDT-${PREVIOUS_BUILD}" "http://mirrors.ibiblio.org/pub/mirrors/eclipse/eclipse/downloads/drops/R-${PREVIOUS_BUILD}-200601181600/eclipse-JDT-${PREVIOUS_BUILD}.zip" ""

!insertmacro DownloadCLI 4  "PDE-SDK ${PREVIOUS_BUILD} (Plugin Development Environment)" "http://mirrors.ibiblio.org/pub/mirrors/eclipse/eclipse/downloads/drops/R-${PREVIOUS_BUILD}-200601181600/eclipse-PDE-SDK-${PREVIOUS_BUILD}.zip" ""
# SDK of
#!insertmacro DownloadCLI 4  "PDE ${PREVIOUS_BUILD}" "http://mirrors.ibiblio.org/pub/mirrors/eclipse/eclipse/downloads/drops/R-${PREVIOUS_BUILD}-200601181600/eclipse-PDE-${PREVIOUS_BUILD}.zip" ""

	!insertmacro DownloadCLI 4 "PHP 0.1.3" "http://downloads.zend.com/phpide/builds/org.eclipse.php_feature-0.1.3.zip" "eclipse"

# breaks eclipse
#!insertmacro DownloadCLI 4  "RCP-SDK ${PREVIOUS_BUILD} (Rich Client Platform)" "http://mirrors.ibiblio.org/pub/mirrors/eclipse/eclipse/downloads/drops/R-${PREVIOUS_BUILD}-200601181600/eclipse-RCP-SDK-${PREVIOUS_BUILD}-win32.zip" ""
#!insertmacro DownloadCLI 4  "RCP ${PREVIOUS_BUILD}" "http://mirrors.ibiblio.org/pub/mirrors/eclipse/eclipse/downloads/drops/R-${PREVIOUS_BUILD}-200601181600/eclipse-RCP-${PREVIOUS_BUILD}-win32.zip" ""

!insertmacro DownloadCLI 4  "SWT ${PREVIOUS_BUILD} (Standard Widget Toolkit)" "http://mirrors.ibiblio.org/pub/mirrors/eclipse/eclipse/downloads/drops/R-${PREVIOUS_BUILD}-200601181600/swt-${PREVIOUS_BUILD}-win32-win32-x86.zip" "eclipse" # ???

!insertmacro DownloadCLI 4  "Test-Framework ${PREVIOUS_BUILD}" "http://mirrors.ibiblio.org/pub/mirrors/eclipse/eclipse/downloads/drops/R-${PREVIOUS_BUILD}-200601181600/eclipse-test-framework-${PREVIOUS_BUILD}.zip" ""

!insertmacro DownloadCLI 4  "TPTP-SDK 4.1.0.1 (Test & Performance Tools)" "http://mirrors.ibiblio.org/pub/mirrors/eclipse//tptp/4.1.0.1/TPTP-4.1.0.1/tptp.sdk-TPTP-4.1.0.1.zip" ""

!insertmacro DownloadCLI 4  "UML2-SDK 1.1.1" "http://mirrors.ibiblio.org/pub/mirrors/eclipse//tools/uml2/downloads/drops/1.1.1/R200509282050/uml2-SDK-1.1.1.zip" ""
# SDK of
#!insertmacro DownloadCLI 4  "UML2 1.1.1" "http://download.eclipse.org/tools/uml2/downloads/drops/1.1.1/R200509282050/uml2-1.1.1.zip" ""

!insertmacro DownloadCLI 4  "VE-SDK 1.1.0.1 (Visual Editor)" "http://mirrors.ibiblio.org/pub/mirrors/eclipse//tools/ve/downloads/drops/R-1.1.0.1-200509071822/VE-SDK-1.1.0.1.zip" ""
# SDK of
#!insertmacro DownloadCLI 4  "VE-Runtime 1.2M2 (Visual Editor)" "ftp://mirrors.ibiblio.org/pub/mirrors/eclipse//tools/ve/downloads/drops/S-1.2M2-200602271803/VE-runtime-1.2M2.zip" ""
#!insertmacro DownloadCLI 4  "VE-Runtime 1.1.0.1 (Visual Editor)" "http://mirrors.ibiblio.org/pub/mirrors/eclipse/tools/ve/downloads/drops/R-1.1.0.1-200509071822/VE-runtime-1.1.0.1.zip" ""

# includes: eclipse ${PREVIOUS_BUILD} sdk, emf, gef and jem

!insertmacro DownloadCLI 4 "WTP-SDK 1.0.2 (Web Tools Platform)" "http://download.eclipse.org/webtools/downloads/drops/R-1.0.2-200604200208/wtp-sdk-R-1.0.2-200604200208.zip" ""
#!insertmacro DownloadCLI 4 "WTP-SDK 1.0.2RC2 (Web Tools Platform)" "http://download.eclipse.org/webtools/downloads/drops/R-1.0.2RC2-200604132214/wtp-sdk-R-1.0.2RC2-200604132214.zip" ""

#!insertmacro DownloadCLI 4  "WTP-SDK-ALL 1.0.1 (Web Tools Platform)" "ftp://mirrors.ibiblio.org/pub/mirrors/eclipse//webtools/downloads/drops/R-1.0.1-200602171228/wtp-all-in-one-sdk-R-1.0.1-200602171228-win32.zip" ""
# SDK of
#!insertmacro DownloadCLI 4  "WTP 1.0.1" "http://mirrors.ibiblio.org/pub/mirrors/eclipse/webtools/downloads/drops/R-1.0.1-200602171228/wtp-R-1.0.1-200602171228.zip" ""

!insertmacro DownloadCLI 4 "WTP-WST-SDK 1.0.2 (Web Standard Tools)" "http://download.eclipse.org/webtools/downloads/drops/R-1.0.2-200604200208/wtp-wst-sdk-R-1.0.2-200604200208.zip" ""
#!insertmacro DownloadCLI 4 "WTP-WST-SDK 1.0.2RC2 (Web Standard Tools)" "http://download.eclipse.org/webtools/downloads/drops/R-1.0.2RC2-200604132214/wtp-wst-sdk-R-1.0.2RC2-200604132214.zip" ""

SectionGroupEnd # "${PREVIOUS_BUILD}"

*/
