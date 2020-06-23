working=$PWD
echo "$working"
declare -A db
db=(['bionic']="https://github.com/cygnus-rom/bionic.git" 
['bootable/recovery']="https://github.com/cygnus-rom/bootable_recovery.git"
['build/blueprint']="https://github.com/cygnus-rom/build_blueprint.git"
['art']="https://github.com/cygnus-rom/art.git"
['build/make']="https://github.com/cygnus-rom/build.git"
['build/soong']="https://github.com/cygnus-rom/build_soong.git"
['development']="https://github.com/cygnus-rom/development.git"
['device/qcom/common']="https://github.com/cygnus-rom/device_qcom_common.git"
['device/qcom/sepolicy']="https://github.com/cygnus-rom/device_qcom_sepolicy.git"
['external/libunwind_llvm']="https://github.com/cygnus-rom/external_libunwind_llvm.git"
['external/selinux']="https://github.com/cygnus-rom/external_selinux.git"
['frameworks/av']="https://github.com/cygnus-rom/frameworks_av.git"
['frameworks/native']="https://github.com/cygnus-rom/frameworks_native.git"
['frameworks/base']="https://github.com/cygnus-rom/frameworks_base.git"
['frameworks/opt/net/wifi']="https://github.com/cygnus-rom/frameworks_opt_net_wifi.git"
['frameworks/opt/telephony']="https://github.com/cygnus-rom/frameworks_opt_telephony.git"
['hardware/libhardware']="https://github.com/cygnus-rom/hardware_libhardware.git"
['hardware/nxp/nfc']="https://github.com/cygnus-rom/hardware_nxp_nfc.git"
['hardware/qcom/bt']="https://github.com/cygnus-rom/hardware_qcom_bt.git"
['hardware/qcom/vr']="https://github.com/cygnus-rom/hardware_qcom_vr.git"
['hardware/qcom/wlan']="https://github.com/cygnus-rom/hardware_qcom_wlan.git"
['manifest']="https://github.com/cygnus-rom/manifest.git"
['libcore']="https://github.com/cygnus-rom/libcore.git"
['packages/apps/Settings']="https://github.com/cygnus-rom/packages_apps_Settings.git"
['packages/apps/ThemePicker']="https://github.com/cygnus-rom/packages_apps_ThemePicker.git"
['packages/apps/Trebuchet']="https://github.com/cygnus-rom/packages_apps_Trebuchet.git"
#['prebuilts/abi-dumps/Telephony']=""
['prebuilts/abi-dumps/vndk']="https://github.com/cygnus-rom/prebuilts_abi-dumps_vndk.git"
['prebuilts/r8']="https://github.com/cygnus-rom/prebuilts_r8.git"
['system/bt']="https://github.com/cygnus-rom/system_bt.git"
['system/core']="https://github.com/cygnus-rom/system_core.git"
['system/vold']="https://github.com/cygnus-rom/system_vold.git"
['vendor/codeaurora/commonsys/telephony']="https://github.com/cygnus-rom/vendor_codeaurora_commonsys_telephony.git"
['vendor/cygnus']="https://github.com/cygnus-rom/vendor_cygnus.git"
['vendor/cygnus-overlays']="https://github.com/cygnus-rom/vendor_cygnus-overlays.git"
['vendor/prebuilts']="https://github.com/cygnus-rom/vendor_prebuilts.git"
['vendor/qcom/opensource/core-utils']="https://github.com/cygnus-rom/vendor_qcom-opensource_core-utils.git"
['vendor/qcom/opensource/commonsys/system/bt']="https://github.com/cygnus-rom/vendor_qcom_opensource_commonsys_system_bt.git"
['vendor/qcom/opensource/data-ipa-cfg-mgr']="https://github.com/cygnus-rom/vendor_qcom_opensource_data-ipa-cfg-mgr.git"
['vendor/qcom/opensource/dataservices']="https://github.com/cygnus-rom/vendor_qcom_opensource_dataservices.git"
['vendor/qcom/opensource/interfaces']="https://github.com/cygnus-rom/vendor_qcom_opensource_interfaces.git"
['vendor/qcom/opensource/power']="https://github.com/cygnus-rom/vendor_qcom_opensource_power.git")

for d in ${!db[@]};do
if [ -d "$d" ]; then
cd $d
link=${db[$d]}
git push -f $link HEAD:caf-test
cd $working
fi
done