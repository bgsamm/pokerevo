EXTAB_O_FILES := \
	$(BUILD_DIR)/asm/extab.o

EXTABINDEX_O_FILES := \
	$(BUILD_DIR)/asm/extabindex.o

#init is included here so that linking is in the right order
#todo fix with makefile implementation
SPLIT_O_FILES := \
	$(BUILD_DIR)/asm/ctors.o \
	$(BUILD_DIR)/asm/data.o \
	$(BUILD_DIR)/asm/bss.o \
	$(BUILD_DIR)/asm/sdata.o \
	$(BUILD_DIR)/asm/sbss.o \
	$(BUILD_DIR)/asm/sdata2.o \
	$(BUILD_DIR)/asm/code_80006980.o \
	$(BUILD_DIR)/asm/code_8000748C.o \
	$(BUILD_DIR)/asm/code_80007940.o \
	$(BUILD_DIR)/asm/code_800097D8.o \
	$(BUILD_DIR)/asm/code_8000A7C4.o \
	$(BUILD_DIR)/asm/code_8000AAC4.o \
	$(BUILD_DIR)/asm/code_8000ADC0.o \
	$(BUILD_DIR)/asm/code_80024914.o \
	$(BUILD_DIR)/asm/code_80025390.o \
	$(BUILD_DIR)/asm/code_800284B0.o \
	$(BUILD_DIR)/asm/code_8002A910.o \
	$(BUILD_DIR)/asm/code_8002ABE8.o \
	$(BUILD_DIR)/asm/code_8002BB44.o \
	$(BUILD_DIR)/asm/code_8002CB00.o \
	$(BUILD_DIR)/asm/code_8002DE2C.o \
	$(BUILD_DIR)/asm/code_80030134.o \
	$(BUILD_DIR)/asm/code_80030320.o \
	$(BUILD_DIR)/asm/code_80030BA0.o \
	$(BUILD_DIR)/asm/code_800310D8.o \
	$(BUILD_DIR)/asm/code_80031544.o \
	$(BUILD_DIR)/asm/code_800321E4.o \
	$(BUILD_DIR)/asm/code_800324A8.o \
	$(BUILD_DIR)/asm/code_80032BC8.o \
	$(BUILD_DIR)/asm/code_80032E60.o \
	$(BUILD_DIR)/asm/code_80032FE8.o \
	$(BUILD_DIR)/asm/code_80035CB0.o \
	$(BUILD_DIR)/asm/code_80036F88.o \
	$(BUILD_DIR)/asm/code_8003E03C.o \
	$(BUILD_DIR)/asm/code_8003E854.o \
	$(BUILD_DIR)/asm/code_800400E8.o \
	$(BUILD_DIR)/asm/code_800447E4.o \
	$(BUILD_DIR)/asm/code_80044F28.o \
	$(BUILD_DIR)/asm/code_800477E8.o \
	$(BUILD_DIR)/asm/code_800478C0.o \
	$(BUILD_DIR)/asm/code_80048728.o \
	$(BUILD_DIR)/asm/code_80049084.o \
	$(BUILD_DIR)/asm/code_8004ACF4.o \
	$(BUILD_DIR)/asm/code_8004D724.o \
	$(BUILD_DIR)/asm/code_8004DE88.o \
	$(BUILD_DIR)/asm/code_8004E9F0.o \
	$(BUILD_DIR)/asm/code_8004F37C.o \
	$(BUILD_DIR)/asm/code_8005018C.o \
	$(BUILD_DIR)/asm/code_80050324.o \
	$(BUILD_DIR)/asm/code_80055504.o \
	$(BUILD_DIR)/asm/code_800559D4.o \
	$(BUILD_DIR)/asm/code_800598F8.o \
	$(BUILD_DIR)/asm/code_8005A588.o \
	$(BUILD_DIR)/asm/code_8005B4A4.o \
	$(BUILD_DIR)/asm/code_8005CEAC.o \
	$(BUILD_DIR)/asm/code_8006A878.o \
	$(BUILD_DIR)/asm/code_8006E554.o \
	$(BUILD_DIR)/asm/code_8007CFB0.o \
	$(BUILD_DIR)/asm/code_8007F8C4.o \
	$(BUILD_DIR)/asm/code_8008A2D4.o \
	$(BUILD_DIR)/asm/code_8008D8CC.o \
	$(BUILD_DIR)/asm/code_80091268.o \
	$(BUILD_DIR)/asm/code_80094DC0.o \
	$(BUILD_DIR)/asm/code_8009598C.o \
	$(BUILD_DIR)/asm/code_8009A2BC.o \
	$(BUILD_DIR)/asm/code_8009C1A8.o \
	$(BUILD_DIR)/asm/code_8009F6C4.o \
	$(BUILD_DIR)/asm/code_800AA038.o \
	$(BUILD_DIR)/asm/code_800AA470.o \
	$(BUILD_DIR)/asm/code_800B9E10.o \
	$(BUILD_DIR)/asm/code_800C5968.o \
	$(BUILD_DIR)/asm/code_800D7C90.o \
	$(BUILD_DIR)/asm/code_800E4234.o \
	$(BUILD_DIR)/asm/code_800E96C4.o \
	$(BUILD_DIR)/asm/code_800F8AC4.o \
	$(BUILD_DIR)/asm/code_80104354.o \
	$(BUILD_DIR)/asm/code_801166F8.o \
	$(BUILD_DIR)/asm/code_8011B19C.o \
	$(BUILD_DIR)/asm/code_8011C954.o \
	$(BUILD_DIR)/asm/code_8011C974.o \
	$(BUILD_DIR)/asm/code_8011E1FC.o \
	$(BUILD_DIR)/asm/code_8012F0D8.o \
	$(BUILD_DIR)/asm/code_80131CF0.o \
	$(BUILD_DIR)/asm/code_8013A930.o \
	$(BUILD_DIR)/asm/code_8013F044.o \
	$(BUILD_DIR)/asm/code_8014FEA8.o \
	$(BUILD_DIR)/asm/code_80151474.o \
	$(BUILD_DIR)/asm/code_80155B50.o \
	$(BUILD_DIR)/asm/code_80157854.o \
	$(BUILD_DIR)/asm/code_801581B8.o \
	$(BUILD_DIR)/asm/code_80158E50.o \
	$(BUILD_DIR)/asm/code_8015D390.o \
	$(BUILD_DIR)/asm/code_80162784.o \
	$(BUILD_DIR)/asm/code_80162B70.o \
	$(BUILD_DIR)/asm/code_8016340C.o \
	$(BUILD_DIR)/asm/code_80163674.o \
	$(BUILD_DIR)/asm/code_80164CE8.o \
	$(BUILD_DIR)/asm/code_80164E3C.o \
	$(BUILD_DIR)/asm/code_80164FA0.o \
	$(BUILD_DIR)/asm/code_80165534.o \
	$(BUILD_DIR)/asm/code_80166D6C.o \
	$(BUILD_DIR)/asm/code_80167298.o \
	$(BUILD_DIR)/asm/code_80167820.o \
	$(BUILD_DIR)/asm/code_80167994.o \
	$(BUILD_DIR)/asm/code_801679F8.o \
	$(BUILD_DIR)/asm/code_801682D0.o \
	$(BUILD_DIR)/asm/code_80168798.o \
	$(BUILD_DIR)/asm/code_80168C1C.o \
	$(BUILD_DIR)/asm/code_80169268.o \
	$(BUILD_DIR)/asm/code_801697AC.o \
	$(BUILD_DIR)/asm/code_8016A25C.o \
	$(BUILD_DIR)/asm/code_8016E2B8.o \
	$(BUILD_DIR)/asm/code_8016EFCC.o \
	$(BUILD_DIR)/asm/code_801708DC.o \
	$(BUILD_DIR)/asm/code_80176EB4.o \
	$(BUILD_DIR)/asm/code_80177C24.o \
	$(BUILD_DIR)/asm/code_8017B4B8.o \
	$(BUILD_DIR)/asm/code_8017C588.o \
	$(BUILD_DIR)/asm/code_8017C980.o \
	$(BUILD_DIR)/asm/code_8017CC8C.o \
	$(BUILD_DIR)/asm/code_8017E3F4.o \
	$(BUILD_DIR)/asm/code_8017E954.o \
	$(BUILD_DIR)/asm/code_80185AE0.o \
	$(BUILD_DIR)/asm/code_8018777C.o \
	$(BUILD_DIR)/asm/text_5.o \
	$(BUILD_DIR)/asm/Runtime/__mem.o \
	$(BUILD_DIR)/asm/Runtime/__va_arg.o \
	$(BUILD_DIR)/asm/Runtime/global_destructor_chain.o \
	$(BUILD_DIR)/asm/Runtime/NMWException.o \
	$(BUILD_DIR)/src/Runtime/ptmf.o \
	$(BUILD_DIR)/asm/Runtime/runtime.o \
	$(BUILD_DIR)/asm/Runtime/__init_cpp_exceptions.o \
	$(BUILD_DIR)/asm/Runtime/Gecko_ExceptionPPC.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/ansi_files.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/ansi_fp.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/arith.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/buffer_io.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/direct_io.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/file_io.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/file_pos.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/mbstring.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/mem.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/mem_funcs.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/math_api.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/misc_io.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/printf.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/qsort.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/rand.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/scanf.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/string.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/strtold.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/strtoul.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/wstring.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/wchar_io.o \
	$(BUILD_DIR)/asm/MSL_C/PPC_EABI/uart_console_io_gcn.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/math_sun.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/extras.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/e_acos.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/e_asin.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/e_atan2.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/e_fmod.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/e_pow.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/e_rem_pio2.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/k_cos.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/k_rem_pio2.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/k_sin.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/k_tan.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/s_atan.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/s_copysign.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/s_cos.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/s_floor.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/s_frexp.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/s_ldexp.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/s_sin.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/s_tan.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/w_acos.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/w_asin.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/w_atan2.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/w_fmod.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/w_pow.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/e_sqrt.o \
	$(BUILD_DIR)/asm/MSL_C/PPC_EABI/math_ppc.o \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/w_sqrt.o \
	$(BUILD_DIR)/asm/MetroTRK/mainloop.o \
	$(BUILD_DIR)/asm/MetroTRK/nubevent.o \
	$(BUILD_DIR)/asm/MetroTRK/nubinit.o \
	$(BUILD_DIR)/asm/MetroTRK/msg.o \
	$(BUILD_DIR)/asm/MetroTRK/msgbuf.o \
	$(BUILD_DIR)/asm/MetroTRK/serpoll.o \
	$(BUILD_DIR)/asm/MetroTRK/usr_put.o \
	$(BUILD_DIR)/asm/MetroTRK/dispatch.o \
	$(BUILD_DIR)/asm/MetroTRK/msghndlr.o \
	$(BUILD_DIR)/asm/MetroTRK/support.o \
	$(BUILD_DIR)/asm/MetroTRK/mutex_TRK.o \
	$(BUILD_DIR)/asm/MetroTRK/notify.o \
	$(BUILD_DIR)/asm/MetroTRK/flush_cache.o \
	$(BUILD_DIR)/asm/MetroTRK/mem_TRK.o \
	$(BUILD_DIR)/asm/init.o \
	$(BUILD_DIR)/asm/MetroTRK/string_TRK.o \
	$(BUILD_DIR)/asm/MetroTRK/targimpl.o \
	$(BUILD_DIR)/asm/MetroTRK/mpc_7xx_603e.o \
	$(BUILD_DIR)/asm/MetroTRK/mslsupp.o \
	$(BUILD_DIR)/asm/MetroTRK/dolphin_trk.o \
	$(BUILD_DIR)/asm/MetroTRK/main_TRK.o \
	$(BUILD_DIR)/asm/MetroTRK/dolphin_trk_glue.o \
	$(BUILD_DIR)/asm/MetroTRK/targcont.o \
	$(BUILD_DIR)/asm/MetroTRK/target_options.o \
	$(BUILD_DIR)/asm/MetroTRK/UDP_Stubs.o \
	$(BUILD_DIR)/asm/MetroTRK/main.o \
	$(BUILD_DIR)/asm/MetroTRK/CircleBuffer.o \
	$(BUILD_DIR)/asm/MetroTRK/MWCriticalSection_gc.o \
	$(BUILD_DIR)/asm/NdevExi2A/DebuggerDriver.o \
	$(BUILD_DIR)/asm/NdevExi2A/exi2.o \
	$(BUILD_DIR)/src/code_801DAA30.o \
	$(BUILD_DIR)/src/code_801DAAE0.o \
	$(BUILD_DIR)/src/code_801DB040.o \
	$(BUILD_DIR)/src/code_801DB81C.o \
	$(BUILD_DIR)/src/code_801DBB3C.o \
	$(BUILD_DIR)/src/code_801DBE90.o \
	$(BUILD_DIR)/src/code_801DCE6C.o \
	$(BUILD_DIR)/src/code_801DD5C8.o \
	$(BUILD_DIR)/src/code_801DD8C0.o \
	$(BUILD_DIR)/src/GScamera.o \
	$(BUILD_DIR)/asm/GSvolume.o \
	$(BUILD_DIR)/asm/GSvolume_ctors.o \
	$(BUILD_DIR)/asm/GSvolume_sbss.o \
	$(BUILD_DIR)/src/code_801E07E8.o \
	$(BUILD_DIR)/src/gUnkClass20.o \
	$(BUILD_DIR)/asm/code_801E0A54.o \
	$(BUILD_DIR)/asm/code_801E4360.o \
	$(BUILD_DIR)/asm/code_801E474C.o \
	$(BUILD_DIR)/asm/code_801E5F7C.o \
	$(BUILD_DIR)/asm/code_801E6BF8.o \
	$(BUILD_DIR)/asm/code_801ED3F0.o \
	$(BUILD_DIR)/asm/code_801EE044.o \
	$(BUILD_DIR)/asm/code_801F1AE8.o \
	$(BUILD_DIR)/asm/code_801F40E0.o \
	$(BUILD_DIR)/asm/code_801F98EC.o \
	$(BUILD_DIR)/asm/code_801FA094.o \
	$(BUILD_DIR)/asm/code_801FA38C.o \
	$(BUILD_DIR)/asm/code_801FB42C.o \
	$(BUILD_DIR)/asm/code_801FF308.o \
	$(BUILD_DIR)/asm/code_802000B0.o \
	$(BUILD_DIR)/asm/code_80202E54.o \
	$(BUILD_DIR)/asm/code_80204058.o \
	$(BUILD_DIR)/asm/code_80205954.o \
	$(BUILD_DIR)/asm/code_802078B8.o \
	$(BUILD_DIR)/asm/code_80207C4C.o \
	$(BUILD_DIR)/asm/code_8020B4F8.o \
	$(BUILD_DIR)/asm/code_8020CA38.o \
	$(BUILD_DIR)/asm/code_8020D250.o \
	$(BUILD_DIR)/asm/code_8020EB1C.o \
	$(BUILD_DIR)/asm/code_8020F998.o \
	$(BUILD_DIR)/asm/code_80211564.o \
	$(BUILD_DIR)/asm/code_80211A04.o \
	$(BUILD_DIR)/asm/code_80213694.o \
	$(BUILD_DIR)/asm/code_80219E48.o \
	$(BUILD_DIR)/asm/code_8021C220.o \
	$(BUILD_DIR)/asm/code_8021CAA0.o \
	$(BUILD_DIR)/asm/code_8021D0E0.o \
	$(BUILD_DIR)/asm/code_8021D424.o \
	$(BUILD_DIR)/asm/code_8021EA48.o \
	$(BUILD_DIR)/asm/code_8021FB44.o \
	$(BUILD_DIR)/asm/code_8022063C.o \
	$(BUILD_DIR)/asm/code_80220DC4.o \
	$(BUILD_DIR)/asm/code_802233C8.o \
	$(BUILD_DIR)/asm/code_80223694.o \
	$(BUILD_DIR)/asm/code_802236C0.o \
	$(BUILD_DIR)/asm/code_80223830.o \
	$(BUILD_DIR)/asm/code_802238A0.o \
	$(BUILD_DIR)/asm/code_80223A0C.o \
	$(BUILD_DIR)/asm/code_80223BC8.o \
	$(BUILD_DIR)/asm/code_80223C54.o \
	$(BUILD_DIR)/asm/code_80224104.o \
	$(BUILD_DIR)/asm/code_802247A0.o \
	$(BUILD_DIR)/asm/code_8022494C.o \
	$(BUILD_DIR)/asm/code_80224B10.o \
	$(BUILD_DIR)/asm/code_80225E44.o \
	$(BUILD_DIR)/asm/code_80226364.o \
	$(BUILD_DIR)/asm/code_8022773C.o \
	$(BUILD_DIR)/asm/code_80228970.o \
	$(BUILD_DIR)/asm/code_80228B0C.o \
	$(BUILD_DIR)/asm/code_8022910C.o \
	$(BUILD_DIR)/asm/code_8022D72C.o \
	$(BUILD_DIR)/asm/code_80230BD4.o \
	$(BUILD_DIR)/asm/code_80230E48.o \
	$(BUILD_DIR)/asm/code_8023234C.o \
	$(BUILD_DIR)/asm/code_8023283C.o \
	$(BUILD_DIR)/asm/code_80232D24.o \
	$(BUILD_DIR)/asm/code_802353F8.o \
	$(BUILD_DIR)/asm/code_80235474.o \
	$(BUILD_DIR)/asm/code_80235A74.o \
	$(BUILD_DIR)/asm/code_80236704.o \
	$(BUILD_DIR)/asm/code_8023694C.o \
	$(BUILD_DIR)/asm/code_80236B08.o \
	$(BUILD_DIR)/asm/code_80237794.o \
	$(BUILD_DIR)/asm/code_802377BC.o \
	$(BUILD_DIR)/asm/code_8023AF8C.o \
	$(BUILD_DIR)/asm/code_8023B64C.o \
	$(BUILD_DIR)/asm/code_8023B9F4.o \
	$(BUILD_DIR)/asm/code_8023D008.o \
	$(BUILD_DIR)/asm/code_8023EA44.o \
	$(BUILD_DIR)/asm/code_8023EE6C.o \
	$(BUILD_DIR)/asm/code_80240060.o \
	$(BUILD_DIR)/asm/code_8024052C.o \
	$(BUILD_DIR)/asm/code_802437EC.o \
	$(BUILD_DIR)/asm/code_80244904.o \
	$(BUILD_DIR)/asm/code_80244A18.o \
	$(BUILD_DIR)/asm/code_80244EDC.o \
	$(BUILD_DIR)/asm/code_802452E8.o \
	$(BUILD_DIR)/asm/code_80245C60.o \
	$(BUILD_DIR)/asm/code_80246CCC.o \
	$(BUILD_DIR)/asm/code_80247038.o \
	$(BUILD_DIR)/asm/code_80247280.o \
	$(BUILD_DIR)/asm/code_80249B7C.o \
	$(BUILD_DIR)/asm/code_80249BA0.o \
	$(BUILD_DIR)/asm/code_80249BC8.o \
	$(BUILD_DIR)/asm/code_80249BF0.o \
	$(BUILD_DIR)/asm/code_80249D38.o \
	$(BUILD_DIR)/asm/code_80250F18.o \
	$(BUILD_DIR)/asm/code_80253FEC.o \
	$(BUILD_DIR)/asm/code_80254260.o \
	$(BUILD_DIR)/asm/code_80254460.o \
	$(BUILD_DIR)/asm/code_8025716C.o \
	$(BUILD_DIR)/asm/code_80259AA4.o \
	$(BUILD_DIR)/asm/code_8025A710.o \
	$(BUILD_DIR)/asm/code_8025AD84.o \
	$(BUILD_DIR)/asm/code_8025B164.o \
	$(BUILD_DIR)/asm/code_8025B6AC.o \
	$(BUILD_DIR)/asm/code_8025B6E8.o \
	$(BUILD_DIR)/asm/code_8025D3B8.o \
	$(BUILD_DIR)/asm/code_8025D7CC.o \
	$(BUILD_DIR)/asm/code_8025DCC0.o \
	$(BUILD_DIR)/asm/code_8025DF80.o \
	$(BUILD_DIR)/asm/code_8025E348.o \
	$(BUILD_DIR)/asm/code_8025E86C.o \
	$(BUILD_DIR)/asm/code_8025EC68.o \
	$(BUILD_DIR)/asm/code_8025F07C.o \
	$(BUILD_DIR)/asm/code_8025FFF8.o \
	$(BUILD_DIR)/asm/code_802609E0.o \
	$(BUILD_DIR)/asm/code_802613A4.o \
	$(BUILD_DIR)/asm/code_80262B00.o \
	$(BUILD_DIR)/asm/code_80262E90.o \
	$(BUILD_DIR)/asm/code_80263CBC.o \
	$(BUILD_DIR)/asm/code_802674CC.o \
	$(BUILD_DIR)/asm/SDK/base/PPCArch.o \
	$(BUILD_DIR)/asm/SDK/OS/OS.o \
	$(BUILD_DIR)/asm/SDK/OS/OSAlarm.o \
	$(BUILD_DIR)/src/SDK/OS/OSAlloc.o \
	$(BUILD_DIR)/asm/SDK/OS/OSArena.o \
	$(BUILD_DIR)/asm/SDK/OS/OSAudioSystem.o \
	$(BUILD_DIR)/asm/SDK/OS/OSCache.o \
	$(BUILD_DIR)/asm/SDK/OS/OSContext.o \
	$(BUILD_DIR)/asm/SDK/OS/OSError.o \
	$(BUILD_DIR)/asm/SDK/OS/OSExec.o \
	$(BUILD_DIR)/asm/SDK/OS/OSFatal.o \
	$(BUILD_DIR)/asm/SDK/OS/OSFont.o \
	$(BUILD_DIR)/asm/SDK/OS/OSInterrupt.o \
	$(BUILD_DIR)/asm/SDK/OS/OSLink.o \
	$(BUILD_DIR)/asm/SDK/OS/OSMessage.o \
	$(BUILD_DIR)/asm/SDK/OS/OSMemory.o \
	$(BUILD_DIR)/asm/SDK/OS/OSMutex.o \
	$(BUILD_DIR)/asm/SDK/OS/OSReboot.o \
	$(BUILD_DIR)/asm/SDK/OS/OSReset.o \
	$(BUILD_DIR)/asm/SDK/OS/OSRtc.o \
	$(BUILD_DIR)/asm/SDK/OS/OSSemaphore.o \
	$(BUILD_DIR)/asm/SDK/OS/OSSync.o \
	$(BUILD_DIR)/asm/SDK/OS/OSThread.o \
	$(BUILD_DIR)/asm/SDK/OS/OSTime.o \
	$(BUILD_DIR)/asm/SDK/OS/OSUtf.o \
	$(BUILD_DIR)/asm/SDK/OS/OSIpc.o \
	$(BUILD_DIR)/asm/SDK/OS/OSStateTM.o \
	$(BUILD_DIR)/asm/SDK/OS/OSPlayRecord.o \
	$(BUILD_DIR)/asm/SDK/OS/OSStateFlags.o \
	$(BUILD_DIR)/asm/SDK/OS/OSNet.o \
	$(BUILD_DIR)/asm/SDK/OS/OSNandbootInfo.o \
	$(BUILD_DIR)/asm/Runtime/__ppc_eabi_init.o \
	$(BUILD_DIR)/asm/SDK/EXI/EXIBios.o \
	$(BUILD_DIR)/asm/SDK/EXI/EXIUart.o \
	$(BUILD_DIR)/asm/SDK/EXI/EXICommon.o \
	$(BUILD_DIR)/asm/SDK/SI/SIBios.o \
	$(BUILD_DIR)/asm/SDK/SI/SISamplingRate.o \
	$(BUILD_DIR)/asm/SDK/DB/db.o \
	$(BUILD_DIR)/asm/SDK/VI/vi.o \
	$(BUILD_DIR)/asm/SDK/VI/i2c.o \
	$(BUILD_DIR)/asm/SDK/VI/vi3in1.o \
	$(BUILD_DIR)/asm/SDK/MTX/mtx.o \
	$(BUILD_DIR)/asm/SDK/MTX/mtxvec.o \
	$(BUILD_DIR)/asm/SDK/MTX/mtx44.o \
	$(BUILD_DIR)/asm/SDK/MTX/vec.o \
	$(BUILD_DIR)/asm/SDK/MTX/quat.o \
	$(BUILD_DIR)/asm/SDK/GX/GXInit.o \
	$(BUILD_DIR)/asm/SDK/GX/GXFifo.o \
	$(BUILD_DIR)/asm/SDK/GX/GXAttr.o \
	$(BUILD_DIR)/asm/SDK/GX/GXMisc.o \
	$(BUILD_DIR)/asm/SDK/GX/GXGeometry.o \
	$(BUILD_DIR)/asm/SDK/GX/GXFrameBuf.o \
	$(BUILD_DIR)/asm/SDK/GX/GXLight.o \
	$(BUILD_DIR)/asm/SDK/GX/GXTexture.o \
	$(BUILD_DIR)/asm/SDK/GX/GXBump.o \
	$(BUILD_DIR)/asm/SDK/GX/GXTev.o \
	$(BUILD_DIR)/asm/SDK/GX/GXPixel.o \
	$(BUILD_DIR)/asm/SDK/GX/GXDraw.o \
	$(BUILD_DIR)/asm/SDK/GX/GXDisplayList.o \
	$(BUILD_DIR)/asm/SDK/GX/GXTransform.o \
	$(BUILD_DIR)/asm/SDK/GX/GXPerf.o \
	$(BUILD_DIR)/asm/SDK/DVD/dvdfs.o \
	$(BUILD_DIR)/asm/SDK/DVD/dvd.o \
	$(BUILD_DIR)/asm/SDK/DVD/dvdqueue.o \
	$(BUILD_DIR)/asm/SDK/DVD/dvderror.o \
	$(BUILD_DIR)/asm/SDK/DVD/dvdidutils.o \
	$(BUILD_DIR)/asm/SDK/DVD/dvdFatal.o \
	$(BUILD_DIR)/asm/SDK/DVD/dvd_broadway.o \
	$(BUILD_DIR)/asm/SDK/AI/ai.o \
	$(BUILD_DIR)/asm/SDK/AX/AX.o \
	$(BUILD_DIR)/asm/SDK/AX/AXAlloc.o \
	$(BUILD_DIR)/asm/SDK/AX/AXAux.o \
	$(BUILD_DIR)/asm/SDK/AX/AXCL.o \
	$(BUILD_DIR)/asm/SDK/AX/AXOut.o \
	$(BUILD_DIR)/asm/SDK/AX/AXSPB.o \
	$(BUILD_DIR)/asm/SDK/AX/AXVPB.o \
	$(BUILD_DIR)/asm/SDK/AX/AXProf.o \
	$(BUILD_DIR)/asm/SDK/AXFX/AXFXReverbHi.o \
	$(BUILD_DIR)/asm/SDK/AXFX/AXFXReverbHiDpl2.o \
	$(BUILD_DIR)/asm/SDK/AXFX/AXFXReverbHiExp.o \
	$(BUILD_DIR)/asm/SDK/AXFX/AXFXReverbHiExpDpl2.o \
	$(BUILD_DIR)/asm/SDK/AXFX/AXFXDelay.o \
	$(BUILD_DIR)/asm/SDK/AXFX/AXFXReverbStd.o \
	$(BUILD_DIR)/asm/SDK/AXFX/AXFXReverbStdExp.o \
	$(BUILD_DIR)/asm/SDK/AXFX/AXFXChorus.o \
	$(BUILD_DIR)/asm/SDK/AXFX/AXFXChorusExp.o \
	$(BUILD_DIR)/asm/SDK/AXFX/AXFXLfoTable.o \
	$(BUILD_DIR)/asm/SDK/AXFX/AXFXSrcCoef.o \
	$(BUILD_DIR)/asm/SDK/AXFX/AXFXHooks.o \
	$(BUILD_DIR)/asm/SDK/MEM/mem_heapCommon.o \
	$(BUILD_DIR)/asm/SDK/MEM/mem_expHeap.o \
	$(BUILD_DIR)/asm/SDK/MEM/mem_frameHeap.o \
	$(BUILD_DIR)/asm/SDK/MEM/mem_allocator.o \
	$(BUILD_DIR)/asm/SDK/MEM/mem_list.o \
	$(BUILD_DIR)/asm/SDK/MIX/mix.o \
	$(BUILD_DIR)/asm/SDK/MIX/remote.o \
	$(BUILD_DIR)/asm/SDK/DSP/dsp.o \
	$(BUILD_DIR)/asm/SDK/DSP/dsp_debug.o \
	$(BUILD_DIR)/asm/SDK/DSP/dsp_task.o \
	$(BUILD_DIR)/asm/SDK/TPL/TPL.o \
	$(BUILD_DIR)/asm/SDK/THP/THPDec.o \
	$(BUILD_DIR)/asm/SDK/THP/THPAudio.o \
	$(BUILD_DIR)/asm/SDK/KPAD/KPAD.o \
	$(BUILD_DIR)/asm/SDK/CX/CXCompression.o \
	$(BUILD_DIR)/asm/SDK/CX/CXUncompression.o \
	$(BUILD_DIR)/asm/SDK/IPC/ipcMain.o \
	$(BUILD_DIR)/asm/SDK/IPC/ipcclt.o \
	$(BUILD_DIR)/asm/SDK/IPC/memory.o \
	$(BUILD_DIR)/asm/SDK/IPC/ipcProfile.o \
	$(BUILD_DIR)/asm/SDK/FS/fs.o \
	$(BUILD_DIR)/asm/SDK/PAD/Pad.o \
	$(BUILD_DIR)/asm/SDK/WPAD/WPAD.o \
	$(BUILD_DIR)/asm/SDK/WPAD/WPADHIDParser.o \
	$(BUILD_DIR)/asm/SDK/WPAD/WPADEncrypt.o \
	$(BUILD_DIR)/asm/SDK/WPAD/WPADMem.o \
	$(BUILD_DIR)/asm/SDK/WPAD/debug_msg.o \
	$(BUILD_DIR)/asm/SDK/EUART/euart.o \
	$(BUILD_DIR)/asm/SDK/USB/usb.o \
	$(BUILD_DIR)/asm/SDK/WUD/WUD.o \
	$(BUILD_DIR)/asm/SDK/WUD/WUDHidHost.o \
	$(BUILD_DIR)/asm/SDK/WUD/debug_msg.o \
	$(BUILD_DIR)/asm/SDK/BTE/gki_buffer.o \
	$(BUILD_DIR)/asm/SDK/BTE/gki_time.o \
	$(BUILD_DIR)/asm/SDK/BTE/gki_ppc.o \
	$(BUILD_DIR)/asm/SDK/BTE/hcisu_h2.o \
	$(BUILD_DIR)/asm/SDK/BTE/uusb_ppc.o \
	$(BUILD_DIR)/asm/SDK/BTE/bte_hcisu.o \
	$(BUILD_DIR)/asm/SDK/BTE/bte_init.o \
	$(BUILD_DIR)/asm/SDK/BTE/bte_logmsg.o \
	$(BUILD_DIR)/asm/SDK/BTE/bte_main.o \
	$(BUILD_DIR)/asm/SDK/BTE/btu_task1.o \
	$(BUILD_DIR)/asm/SDK/BTE/bd.o \
	$(BUILD_DIR)/asm/SDK/BTE/bta_sys_conn.o \
	$(BUILD_DIR)/asm/SDK/BTE/bta_sys_main.o \
	$(BUILD_DIR)/asm/SDK/BTE/ptim.o \
	$(BUILD_DIR)/asm/SDK/BTE/utl.o \
	$(BUILD_DIR)/asm/SDK/BTE/bta_dm_act.o \
	$(BUILD_DIR)/asm/SDK/BTE/bta_dm_api.o \
	$(BUILD_DIR)/asm/SDK/BTE/bta_dm_main.o \
	$(BUILD_DIR)/asm/SDK/BTE/bta_dm_pm.o \
	$(BUILD_DIR)/asm/SDK/BTE/bta_hh_act.o \
	$(BUILD_DIR)/asm/SDK/BTE/bta_hh_api.o \
	$(BUILD_DIR)/asm/SDK/BTE/bta_hh_main.o \
	$(BUILD_DIR)/asm/SDK/BTE/bta_hh_utils.o \
	$(BUILD_DIR)/asm/SDK/BTE/btm_acl.o \
	$(BUILD_DIR)/asm/SDK/BTE/btm_dev.o \
	$(BUILD_DIR)/asm/SDK/BTE/btm_devctl.o \
	$(BUILD_DIR)/asm/SDK/BTE/btm_discovery.o \
	$(BUILD_DIR)/asm/SDK/BTE/btm_inq.o \
	$(BUILD_DIR)/asm/SDK/BTE/btm_main.o \
	$(BUILD_DIR)/asm/SDK/BTE/btm_pm.o \
	$(BUILD_DIR)/asm/SDK/BTE/btm_sco.o \
	$(BUILD_DIR)/asm/SDK/BTE/btm_sec.o \
	$(BUILD_DIR)/asm/SDK/BTE/btu_hcif.o \
	$(BUILD_DIR)/asm/SDK/BTE/btu_init.o \
	$(BUILD_DIR)/asm/SDK/BTE/wbt_ext.o \
	$(BUILD_DIR)/asm/SDK/BTE/gap_api.o \
	$(BUILD_DIR)/asm/SDK/BTE/gap_conn.o \
	$(BUILD_DIR)/asm/SDK/BTE/gap_utils.o \
	$(BUILD_DIR)/asm/SDK/BTE/hcicmds.o \
	$(BUILD_DIR)/asm/SDK/BTE/hidd_api.o \
	$(BUILD_DIR)/asm/SDK/BTE/hidd_conn.o \
	$(BUILD_DIR)/asm/SDK/BTE/hidd_mgmt.o \
	$(BUILD_DIR)/asm/SDK/BTE/hidd_pm.o \
	$(BUILD_DIR)/asm/SDK/BTE/hidh_api.o \
	$(BUILD_DIR)/asm/SDK/BTE/hidh_conn.o \
	$(BUILD_DIR)/asm/SDK/BTE/l2c_api.o \
	$(BUILD_DIR)/asm/SDK/BTE/l2c_csm.o \
	$(BUILD_DIR)/asm/SDK/BTE/l2c_link.o \
	$(BUILD_DIR)/asm/SDK/BTE/l2c_main.o \
	$(BUILD_DIR)/asm/SDK/BTE/l2c_utils.o \
	$(BUILD_DIR)/asm/SDK/BTE/port_api.o \
	$(BUILD_DIR)/asm/SDK/BTE/port_rfc.o \
	$(BUILD_DIR)/asm/SDK/BTE/port_utils.o \
	$(BUILD_DIR)/asm/SDK/BTE/rfc_l2cap_if.o \
	$(BUILD_DIR)/asm/SDK/BTE/rfc_mx_fsm.o \
	$(BUILD_DIR)/asm/SDK/BTE/rfc_port_fsm.o \
	$(BUILD_DIR)/asm/SDK/BTE/rfc_port_if.o \
	$(BUILD_DIR)/asm/SDK/BTE/rfc_ts_frames.o \
	$(BUILD_DIR)/asm/SDK/BTE/rfc_utils.o \
	$(BUILD_DIR)/asm/SDK/BTE/sdp_api.o \
	$(BUILD_DIR)/asm/SDK/BTE/sdp_db.o \
	$(BUILD_DIR)/asm/SDK/BTE/sdp_discovery.o \
	$(BUILD_DIR)/asm/SDK/BTE/sdp_main.o \
	$(BUILD_DIR)/asm/SDK/BTE/sdp_server.o \
	$(BUILD_DIR)/asm/SDK/BTE/sdp_utils.o \
	$(BUILD_DIR)/asm/SDK/NAND/nand.o \
	$(BUILD_DIR)/asm/SDK/NAND/NANDOpenClose.o \
	$(BUILD_DIR)/asm/SDK/NAND/NANDCore.o \
	$(BUILD_DIR)/asm/SDK/NAND/NANDCheck.o \
	$(BUILD_DIR)/asm/SDK/SC/scsystem.o \
	$(BUILD_DIR)/asm/SDK/SC/scapi.o \
	$(BUILD_DIR)/asm/SDK/SC/scapi_prdinfo.o \
	$(BUILD_DIR)/asm/SDK/WENC/wenc.o \
	$(BUILD_DIR)/asm/SDK/ARC/arc.o \
	$(BUILD_DIR)/asm/SDK/NCD/ncdsystem.o \
	$(BUILD_DIR)/asm/SDK/WD/wd_misc.o \
	$(BUILD_DIR)/asm/SDK/WD/wd_request.o \
	$(BUILD_DIR)/asm/SDK/WD/wd_receive.o \
	$(BUILD_DIR)/asm/SDK/WD/wd_init.o \
	$(BUILD_DIR)/asm/SDK/NTR/crc.o \
	$(BUILD_DIR)/asm/SDK/NTR/math.o \
	$(BUILD_DIR)/asm/SDK/NTR/wdp_common.o \
	$(BUILD_DIR)/asm/SDK/NTR/wdp_parent.o \
	$(BUILD_DIR)/asm/SDK/MP/mpsystem.o \
	$(BUILD_DIR)/asm/SDK/MP/mpwd.o \
	$(BUILD_DIR)/asm/SDK/MP/mpmisc.o \
	$(BUILD_DIR)/asm/SDK/MP/mptxrx.o \
	$(BUILD_DIR)/asm/SDK/MP/mpconnection.o \
	$(BUILD_DIR)/asm/SDK/MP/mpparent.o \
	$(BUILD_DIR)/asm/SDK/MP/mpnotification.o \
	$(BUILD_DIR)/asm/SDK/MP/mpport.o \
	$(BUILD_DIR)/asm/SDK/MP/mpbeacon.o \
	$(BUILD_DIR)/asm/SDK/MPDL/mpdlsystem.o \
	$(BUILD_DIR)/asm/SDK/NET/neterrorcode.o \
	$(BUILD_DIR)/asm/SDK/NET/neterrorcode.o \
	$(BUILD_DIR)/asm/SDK/NET/NETVersion.o \
	$(BUILD_DIR)/asm/SDK/NET/wireless_macaddr.o \
	$(BUILD_DIR)/asm/SDK/SO/SOCommon.o \
	$(BUILD_DIR)/asm/SDK/SO/SOBasic.o \
	$(BUILD_DIR)/asm/SDK/SO/SOInformation.o \
	$(BUILD_DIR)/asm/SDK/SO/SOOption.o \
	$(BUILD_DIR)/asm/SDK/NHTTP/NHTTP_bgnend.o \
	$(BUILD_DIR)/asm/SDK/NHTTP/NHTTP_control.o \
	$(BUILD_DIR)/asm/SDK/NHTTP/NHTTP_list.o \
	$(BUILD_DIR)/asm/SDK/NHTTP/NHTTP_os_RVL.o \
	$(BUILD_DIR)/asm/SDK/NHTTP/NHTTP_recvbuf.o \
	$(BUILD_DIR)/asm/SDK/NHTTP/NHTTP_request.o \
	$(BUILD_DIR)/asm/SDK/NHTTP/NHTTP_response.o \
	$(BUILD_DIR)/asm/SDK/NHTTP/NHTTP_socket_RVL.o \
	$(BUILD_DIR)/asm/SDK/NHTTP/NHTTP_stdlib_RVL.o \
	$(BUILD_DIR)/asm/SDK/NHTTP/NHTTP_thread.o \
	$(BUILD_DIR)/asm/SDK/NHTTP/d_nhttp_private.o \
	$(BUILD_DIR)/asm/SDK/NHTTP/d_nhttp.o \
	$(BUILD_DIR)/asm/SDK/NHTTP/d_nhttp_common.o \
	$(BUILD_DIR)/asm/SDK/SSL/ssl_api.o \
	$(BUILD_DIR)/asm/SDK/SSL/ssl_mutex.o \
	$(BUILD_DIR)/asm/text_9.o \
	$(BUILD_DIR)/asm/SDK/NWC24/NWC24StdAPI.o \
	$(BUILD_DIR)/asm/SDK/NWC24/NWC24FileAPI.o \
	$(BUILD_DIR)/asm/SDK/NWC24/NWC24Config.o \
	$(BUILD_DIR)/asm/SDK/NWC24/NWC24Manage.o \
	$(BUILD_DIR)/asm/SDK/NWC24/NWC24MBoxCtrl.o \
	$(BUILD_DIR)/asm/SDK/NWC24/NWC24Mime.o \
	$(BUILD_DIR)/asm/SDK/NWC24/NWC24Schedule.o \
	$(BUILD_DIR)/asm/SDK/NWC24/NWC24FriendList.o \
	$(BUILD_DIR)/asm/SDK/NWC24/NWC24SecretFList.o \
	$(BUILD_DIR)/asm/SDK/NWC24/NWC24Time.o \
	$(BUILD_DIR)/asm/SDK/NWC24/NWC24Ipc.o \
	$(BUILD_DIR)/asm/SDK/NWC24/NWC24Download.o \
	$(BUILD_DIR)/asm/SDK/NWC24/NWC24System.o \
	$(BUILD_DIR)/asm/SDK/VF/pf_clib.o \
	$(BUILD_DIR)/asm/SDK/VF/pf_code.o \
	$(BUILD_DIR)/asm/SDK/VF/pf_service.o \
	$(BUILD_DIR)/asm/SDK/VF/pf_str.o \
	$(BUILD_DIR)/asm/SDK/VF/pf_w_clib.o \
	$(BUILD_DIR)/asm/SDK/VF/pf_driver.o \
	$(BUILD_DIR)/asm/SDK/VF/pdm_bpb.o \
	$(BUILD_DIR)/asm/SDK/VF/pdm_disk.o \
	$(BUILD_DIR)/asm/SDK/VF/pdm_partition.o \
	$(BUILD_DIR)/asm/SDK/VF/pdm_mbr.o \
	$(BUILD_DIR)/asm/SDK/VF/pdm_dskmng.o \
	$(BUILD_DIR)/asm/SDK/VF/pf_cache.o \
	$(BUILD_DIR)/asm/SDK/VF/pf_cluster.o \
	$(BUILD_DIR)/asm/SDK/VF/pf_dir.o \
	$(BUILD_DIR)/asm/SDK/VF/pf_entry.o \
	$(BUILD_DIR)/asm/SDK/VF/pf_entry_iterator.o \
	$(BUILD_DIR)/asm/SDK/VF/pf_fat.o \
	$(BUILD_DIR)/asm/SDK/VF/pf_fat12.o \
	$(BUILD_DIR)/asm/SDK/VF/pf_fat16.o \
	$(BUILD_DIR)/asm/SDK/VF/pf_fat32.o \
	$(BUILD_DIR)/asm/SDK/VF/pf_fatfs.o \
	$(BUILD_DIR)/asm/SDK/VF/pf_file.o \
	$(BUILD_DIR)/asm/SDK/VF/pf_path.o \
	$(BUILD_DIR)/asm/SDK/VF/pf_sector.o \
	$(BUILD_DIR)/asm/SDK/VF/pf_volume.o \
	$(BUILD_DIR)/asm/SDK/VF/pf_cp932.o \
	$(BUILD_DIR)/asm/SDK/VF/pf_api_util.o \
	$(BUILD_DIR)/asm/SDK/VF/pf_errnum.o \
	$(BUILD_DIR)/asm/SDK/VF/pf_fclose.o \
	$(BUILD_DIR)/asm/SDK/VF/pf_finfo.o \
	$(BUILD_DIR)/asm/SDK/VF/pf_fopen.o \
	$(BUILD_DIR)/asm/SDK/VF/pf_fread.o \
	$(BUILD_DIR)/asm/SDK/VF/pf_fseek.o \
	$(BUILD_DIR)/asm/SDK/VF/pf_fwrite.o \
	$(BUILD_DIR)/asm/SDK/VF/pf_init_prfile2.o \
	$(BUILD_DIR)/asm/SDK/VF/pf_filelock.o \
	$(BUILD_DIR)/asm/SDK/VF/pf_system.o \
	$(BUILD_DIR)/asm/SDK/VF/d_vf.o \
	$(BUILD_DIR)/asm/SDK/VF/d_vf_sys.o \
	$(BUILD_DIR)/asm/SDK/VF/d_hash.o \
	$(BUILD_DIR)/asm/SDK/VF/d_time.o \
	$(BUILD_DIR)/asm/SDK/VF/d_common.o \
	$(BUILD_DIR)/asm/SDK/VF/nand_drv.o \
	$(BUILD_DIR)/asm/SDK/VF/sd_drv.o \
	$(BUILD_DIR)/asm/SDK/DWC/dwc_common/dwc_base64.o \
	$(BUILD_DIR)/asm/SDK/DWC/dwc_common/dwc_error.o \
	$(BUILD_DIR)/asm/SDK/DWC/dwc_common/dwc_init.o \
	$(BUILD_DIR)/asm/SDK/DWC/dwc_common/dwc_memfunc.o \
	$(BUILD_DIR)/asm/SDK/DWC/dwc_common/dwc_report.o \
	$(BUILD_DIR)/asm/SDK/DWC/dwc_ghttp/dwc_ghttp.o \
	$(BUILD_DIR)/asm/SDK/DWC/dwc_lanmatch/dwc_lanmatch.o \
	$(BUILD_DIR)/asm/SDK/DWC/dwc_match/dwc_common.o \
	$(BUILD_DIR)/asm/SDK/DWC/dwc_match/dwc_friend.o \
	$(BUILD_DIR)/asm/SDK/DWC/dwc_match/dwc_login.o \
	$(BUILD_DIR)/asm/SDK/DWC/dwc_match/dwc_main.o \
	$(BUILD_DIR)/asm/SDK/DWC/dwc_match/dwc_match.o \
	$(BUILD_DIR)/asm/SDK/DWC/dwc_match/dwc_transport.o \
	$(BUILD_DIR)/asm/SDK/DWC/dwc_nonport/dwc_nonport.o \
	$(BUILD_DIR)/asm/SDK/DWC/dwc_nonport/dwci_np_math.o \
	$(BUILD_DIR)/asm/SDK/DWC/dwcsec_account/dwc_account.o \
	$(BUILD_DIR)/asm/SDK/DWC/dwcsec_auth/dwc_auth_interface.o \
	$(BUILD_DIR)/asm/SDK/DWC/dwcsec_nas/dwc_naslogin.o \
	$(BUILD_DIR)/src/SDK/DWC/gamespy/darray.o \
	$(BUILD_DIR)/src/SDK/DWC/gamespy/hashtable.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/md5c.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/nonport.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/gsAvailable.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/gsCrypt.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/gsLargeInt.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/gsRC4.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/gsSHA1.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/gsXML.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/gp.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/gpi.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/gpiBuddy.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/gpiBuffer.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/gpiCallback.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/gpiConnect.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/gpiInfo.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/gpiOperation.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/gpiPeer.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/gpiProfile.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/gpiSearch.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/gpiTransfer.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/gpiUnique.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/gpiUtility.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/gt2Auth.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/gt2Buffer.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/gt2Callback.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/gt2Connection.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/gt2Main.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/gt2Message.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/gt2Socket.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/gt2Utility.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/qr2.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/qr2regkeys.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/ghttpBuffer.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/ghttpCallbacks.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/ghttpCommon.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/ghttpConnection.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/ghttpEncryption.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/ghttpMain.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/ghttpPost.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/ghttpProcess.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/gbucket.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/gstats.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/NATify.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/natneg.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/sb_crypt.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/sb_queryengine.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/sb_server.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/sb_serverbrowsing.o \
	$(BUILD_DIR)/asm/SDK/DWC/gamespy/sb_serverlist.o \
	$(BUILD_DIR)/asm/nw4r/db/db_console.o \
	$(BUILD_DIR)/asm/text_10_2.o \
	$(BUILD_DIR)/asm/nw4r/db/db_assert.o \
	$(BUILD_DIR)/asm/nw4r/ut/ut_list.o \
	$(BUILD_DIR)/asm/nw4r/ut/detail/ut_LinkList.o \
	$(BUILD_DIR)/asm/nw4r/ut/ut_binaryFileFormat.o \
	$(BUILD_DIR)/asm/nw4r/ut/ut_CharStrmReader.o \
	$(BUILD_DIR)/asm/nw4r/ut/ut_TagProcessorBase.o \
	$(BUILD_DIR)/asm/nw4r/ut/ut_IOStream.o \
	$(BUILD_DIR)/asm/nw4r/ut/ut_FileStream.o \
	$(BUILD_DIR)/asm/nw4r/ut/ut_DvdFileStream.o \
	$(BUILD_DIR)/asm/nw4r/ut/ut_DvdLockedFileStream.o \
	$(BUILD_DIR)/asm/nw4r/ut/ut_Font.o \
	$(BUILD_DIR)/asm/nw4r/ut/detail/ut_ResFontBase.o \
	$(BUILD_DIR)/asm/nw4r/ut/ut_ResFont.o \
	$(BUILD_DIR)/asm/nw4r/ut/ut_CharWriter.o \
	$(BUILD_DIR)/asm/nw4r/ut/ut_TextWriterBase.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_AxManager.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_AxVoice.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_AxVoiceManager.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_AxfxImpl.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_Bank.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_BankFile.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_BasicPlayer.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_BasicSound.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_Channel.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_DisposeCallbackManager.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_DvdSoundArchive.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_EnvGenerator.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_ExternalSoundPlayer.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_FrameHeap.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_FxDelay.o \
	$(BUILD_DIR)/asm/text_10_4.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_FxReverbHi.o \
	$(BUILD_DIR)/asm/text_10_5.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_InstancePool.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_Lfo.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_MemorySoundArchive.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_MidiSeqPlayer.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_MmlParser.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_MmlSeqTrack.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_MmlSeqTrackAllocator.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_NandSoundArchive.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_RemoteSpeaker.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_RemoteSpeakerManager.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_SeqFile.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_SeqPlayer.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_SeqSound.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SeqSoundHandle.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_SeqTrack.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_Sound3DListener.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_Sound3DManager.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_SoundArchive.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_SoundArchiveFile.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_SoundArchiveLoader.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundArchivePlayer.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundHandle.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundHeap.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundPlayer.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundStartable.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundSystem.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_SoundThread.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_StrmChannel.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_StrmFile.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_StrmPlayer.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_StrmSound.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_Task.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_TaskManager.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_TaskThread.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_Voice.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_VoiceManager.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_Util.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_WaveFile.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_WaveSound.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_WaveSoundHandle.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_WsdFile.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_WsdPlayer.o \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_adpcm.o \
	$(BUILD_DIR)/asm/nw4r/math/math_triangular.o \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_pane.o \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_group.o \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_layout.o \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_picture.o \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_textBox.o \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_window.o \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_bounding.o \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_material.o \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_texMap.o \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_drawInfo.o \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_animation.o \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_resourceAccessor.o \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_arcResourceAccessor.o \
	$(BUILD_DIR)/asm/nw4r/lyt/detail/lyt_common.o \
	$(BUILD_DIR)/asm/code_8038F1CC.o \
	$(BUILD_DIR)/asm/text_11.o \
	$(BUILD_DIR)/asm/SDK/HBM/HBMBase.o \
	$(BUILD_DIR)/asm/SDK/HBM/HBMAnmController.o \
	$(BUILD_DIR)/asm/SDK/HBM/HBMFrameController.o \
	$(BUILD_DIR)/asm/SDK/HBM/HBMGUIManager.o \
	$(BUILD_DIR)/asm/SDK/HBM/HBMController.o \
	$(BUILD_DIR)/asm/SDK/HBM/HBMRemoteSpk.o \
	$(BUILD_DIR)/asm/code_803A60D8.o \
	$(BUILD_DIR)/asm/code_803D9208.o \
	$(BUILD_DIR)/asm/text_11_2.o \
	$(BUILD_DIR)/asm/ctors_2.o \
	$(BUILD_DIR)/asm/data_2.o \
	$(BUILD_DIR)/asm/bss_2.o \
	$(BUILD_DIR)/asm/sdata_2.o \
	$(BUILD_DIR)/asm/sbss_2.o \
	$(BUILD_DIR)/asm/sdata2_2.o


DTORS_O_FILES := \
	$(BUILD_DIR)/asm/dtors.o

RODATA_O_FILES := \
	$(BUILD_DIR)/asm/rodata.o

DATA_O_FILES := \
	$(BUILD_DIR)/asm/data.o

SBSS2_O_FILES := \
	$(BUILD_DIR)/asm/sbss2.o
