#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.vc_call_vol_steps=7

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    telephony.lteOnCdmaDevice=0 \
    keyguard.no_require_sim=true \
    rild.libpath=/vendor/lib/libsec-ril.so \
    rild.libargs=-d /dev/ttyS0 \
    ro.telephony.default_network=9 \
    ro.telephony.mms_data_profile=5 \
    ro.gsm.sim.operator.iso-country=false \
    ro.ril.telephony.mqanelements=6 \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \
    persist.data.netmgrd.qos.enable=false \
    ro.use_data_netmgrd=false \
    ro.ril.force_eri_from_xml=true \

# Memory Optimizations
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.max_starting_bg=1 \
    ro.lmk.use_psi=false \
    ro.lmk.critical=0 \
    ro.lmk.low=950 \
    ro.lmk.swap_free_low_percentage=15 \
    ro.vendor.qti.am.reschedule_service=true \
    ro.vendor.qti.sys.fw.use_trim_settings=true \
    ro.vendor.qti.sys.fw.trim_empty_percent=50 \
    ro.vendor.qti.sys.fw.trim_cache_percent=100 \
    ro.vendor.qti.sys.fw.empty_app_percent=25

# Reduces GC frequency of foreground apps by 50%
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.foreground-heap-growth-multiplier=2.0