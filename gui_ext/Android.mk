LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
    IGuiExtService.cpp \
    GuiExtService.cpp \
    GuiExtClient.cpp \
    GuiExtClientProducer.cpp \
    GuiExtClientConsumer.cpp \
    GuiExtImpl.cpp

MTK_HWC_CHIP := $(shell echo $(MTK_PLATFORM) | tr A-Z a-z )

LOCAL_C_INCLUDES := \
    frameworks/base/include \
    $(LOCAL_PATH)/../gralloc_extra/include \
    $(LOCAL_PATH)/../ui_ext/include \
    $(LOCAL_PATH)/include

LOCAL_SHARED_LIBRARIES := \
    libutils \
    libcutils \
    libbinder \
    libhardware \
    libhardware_legacy \
    libgui \
    liblog \
    libui \
    libdl \
    libion \
    libion_mtk \
    libgralloc_extra \
    libui_ext

ifneq ($(strip $(TARGET_BUILD_VARIANT)), eng)
LOCAL_CFLAGS += -DMTK_USER_BUILD
endif

LOCAL_MODULE := libgui_ext
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)
