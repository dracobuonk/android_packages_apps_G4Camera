LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

#LOCAL_MODULE_TAGS := optional

LOCAL_STATIC_JAVA_LIBRARIES := android-support-v4

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_RESOURCE_DIR += \
	$(LOCAL_PATH)/res

LOCAL_PACKAGE_NAME := G4Camera
LOCAL_CERTIFICATE := platform

LOCAL_PROGUARD_ENABLED := disabled

LOCAL_PROGUARD_FLAG_FILES := proguard.flags

include $(BUILD_PACKAGE)

include $(call all-makefiles-under, $(LOCAL_PATH))
