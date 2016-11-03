TARGET = main

GNUSTEP_MAKEFILES = /usr/share/GNUstep/Makefiles
include $(GNUSTEP_MAKEFILES)/common.make
ADDITIONAL_FLAGS += -std=gnu11 -g -Wall #-Werror
TOOL_NAME = $(TARGET)
$(TARGET)_OBJC_FILES = $(TARGET).m Person.m Teacher.m

include $(GNUSTEP_MAKEFILES)/tool.make
