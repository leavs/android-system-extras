LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CFLAGS := -Wall -Werror

LOCAL_SRC_FILES:= su.cpp

LOCAL_MODULE:= su

ifeq ($(BOARD_SU_ALLOW_ALL),true)
LOCAL_CFLAGS += -DSU_ALLOW_ALL
endif

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)
