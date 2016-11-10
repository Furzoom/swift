TARGET = main

GNUSTEP_MAKEFILES = /usr/share/GNUstep/Makefiles
include $(GNUSTEP_MAKEFILES)/common.make
ADDITIONAL_FLAGS += -std=gnu11 -Wall -g #-Werror
TOOL_NAME = $(TARGET)
$(TARGET)_OBJC_FILES = $(TARGET).m

include $(GNUSTEP_MAKEFILES)/tool.make
