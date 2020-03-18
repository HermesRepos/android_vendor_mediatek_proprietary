LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
    GraphicBufferUtil.cpp \
    FpsCounter.cpp \
    IDumpTunnel.cpp \
    RefBaseDump.cpp

LOCAL_C_INCLUDES:= \
    $(LOCAL_PATH)/../ui_ext/include \
    $(LOCAL_PATH)/../gralloc_extra/include \
    external/libpng \
    external/zlib \
    external/skia/src/images \
    external/skia/include/core \
    external/skia/include/config

LOCAL_SHARED_LIBRARIES := \
    libpng \
    libutils \
    libui \
    libcutils \
    libhardware \
    libgralloc_extra \
    libbinder \
    libdl \
    liblog

LOCAL_MODULE := libui_ext
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)
