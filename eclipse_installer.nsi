# Copyright (c) 2005-2015 Ross Smith II (http://smithii.com). MIT Licensed.

# @todo add jsdk ?

!define STABLE_BUILD "3.2.2"

!define PREVIOUS_BUILD "3.1.2"

!define PRODUCT_NAME "eclipse_installer"
!define PRODUCT_DIR "Eclipse"
#!define PRODUCT_VERSION "1.0"
!define PRODUCT_DESC "Eclipse™ Installer ${PRODUCT_VERSION} for Eclipse ${STABLE_BUILD}"
!define PRODUCT_TRADEMARKS "Eclipse™ is a trademark of the Eclipse Foundation"

!addincludedir "../nsislib"
!addincludedir "nsislib"

!include "config.nsh"

!undef PRODUCT_EXE
!undef PRODUCT_FILE
!define NO_DESKTOP_ICONS
#!undef ADD_INSTDIR_TO_PATH

!define COPYDIR "$EXEDIR"
#!undef NOEXTRACTPATH
!define UNZIP_DIR "$INSTDIR"

InstType "${STABLE_BUILD} - Typical (Latest Release)"
InstType "${STABLE_BUILD} - All & Third Party Plugins (Latest Release)"
#InstType "${PREVIOUS_BUILD} - Typical (Previous Release)"
#InstType "${PREVIOUS_BUILD} - All & Third Party Plugins (Previous Release)"
InstType "None"

!include "common.nsh"

!include "eclipse_installer.nsh"

!ifdef DESCRIPTION_FILE
	!appendfile "${DESCRIPTION_FILE}" "!insertmacro MUI_FUNCTION_DESCRIPTION_END$\n"

	!include "${DESCRIPTION_FILE}"
	#!delfile "${DESCRIPTION_FILE}"
	!undef DESCRIPTION_FILE
!endif
