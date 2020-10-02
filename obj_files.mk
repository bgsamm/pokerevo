EXTAB_O_FILES :=                                                  \
    $(BUILD_DIR)/asm/extab.o

EXTABINDEX_O_FILES :=                                             \
    $(BUILD_DIR)/asm/extabindex.o

#init is included here so that linking is in the right order
#todo fix with makefile implementation
TEXT_O_FILES := 						                          \
    $(BUILD_DIR)/asm/code_80006980.o							  \
	$(BUILD_DIR)/asm/code_8000748C.o							  \
	$(BUILD_DIR)/asm/code_80007940.o							  \
	$(BUILD_DIR)/asm/code_800097D8.o							  \
	$(BUILD_DIR)/asm/code_8000A7C4.o							  \
	$(BUILD_DIR)/asm/code_8000AAC4.o							  \
	$(BUILD_DIR)/asm/code_8000ADC0.o							  \
	$(BUILD_DIR)/asm/code_80024914.o							  \
	$(BUILD_DIR)/asm/code_80025390.o							  \
	$(BUILD_DIR)/asm/code_800284B0.o							  \
	$(BUILD_DIR)/asm/code_8002A910.o							  \
	$(BUILD_DIR)/asm/text_1.o                                     \
	$(BUILD_DIR)/asm/text_2.o                                     \
	$(BUILD_DIR)/asm/text_3.o                                     \
	$(BUILD_DIR)/asm/text_4.o                                     \
	$(BUILD_DIR)/asm/text_5.o                                     \
	$(BUILD_DIR)/asm/Runtime/__mem.o                            \
	$(BUILD_DIR)/asm/Runtime/__va_arg.o                         \
	$(BUILD_DIR)/asm/Runtime/global_destructor_chain.o          \
	$(BUILD_DIR)/asm/Runtime/NMWException.o                     \
	$(BUILD_DIR)/src/Runtime/ptmf.o                             \
	$(BUILD_DIR)/asm/Runtime/runtime.o                          \
	$(BUILD_DIR)/asm/Runtime/__init_cpp_exceptions.o            \
	$(BUILD_DIR)/asm/Runtime/Gecko_ExceptionPPC.o               \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/ansi_files.o                       \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/ansi_fp.o                          \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/arith.o                            \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/buffer_io.o                        \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/direct_io.o                        \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/file_io.o                          \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/file_pos.o                         \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/mbstring.o                         \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/mem.o                              \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/mem_funcs.o                        \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/math_api.o                         \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/misc_io.o                          \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/printf.o                           \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/qsort.o                            \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/rand.o                             \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/scanf.o                            \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/string.o                           \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/strtold.o                          \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/strtoul.o                          \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/wstring.o                          \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/wchar_io.o                         \
	$(BUILD_DIR)/asm/MSL_C/PPC_EABI/uart_console_io_gcn.o              \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/math_sun.o                         \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/extras.o                           \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/e_acos.o                           \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/e_asin.o                           \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/e_atan2.o                          \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/e_fmod.o                           \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/e_pow.o                            \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/e_rem_pio2.o                       \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/k_cos.o                            \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/k_rem_pio2.o                       \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/k_sin.o                            \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/k_tan.o                            \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/s_atan.o                           \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/s_copysign.o                       \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/s_cos.o                            \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/s_floor.o                          \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/s_frexp.o                          \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/s_ldexp.o                          \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/s_sin.o                            \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/s_tan.o                            \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/w_acos.o                           \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/w_asin.o                           \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/w_atan2.o                          \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/w_fmod.o                           \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/w_pow.o                            \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/e_sqrt.o                           \
	$(BUILD_DIR)/asm/MSL_C/PPC_EABI/math_ppc.o                         \
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/w_sqrt.o                           \
	$(BUILD_DIR)/asm/MetroTRK/mainloop.o                          \
	$(BUILD_DIR)/asm/MetroTRK/nubevent.o                          \
	$(BUILD_DIR)/asm/MetroTRK/nubinit.o                          \
	$(BUILD_DIR)/asm/MetroTRK/msg.o                          \
	$(BUILD_DIR)/asm/MetroTRK/msgbuf.o                          \
	$(BUILD_DIR)/asm/MetroTRK/serpoll.o                          \
	$(BUILD_DIR)/asm/MetroTRK/usr_put.o                          \
	$(BUILD_DIR)/asm/MetroTRK/dispatch.o                          \
	$(BUILD_DIR)/asm/MetroTRK/msghndlr.o                          \
	$(BUILD_DIR)/asm/MetroTRK/support.o                          \
	$(BUILD_DIR)/asm/MetroTRK/mutex_TRK.o                          \
	$(BUILD_DIR)/asm/MetroTRK/notify.o                          \
	$(BUILD_DIR)/asm/MetroTRK/flush_cache.o                                     \
	$(BUILD_DIR)/asm/MetroTRK/mem_TRK.o                           \
	$(BUILD_DIR)/asm/init.o                                       \
	$(BUILD_DIR)/asm/MetroTRK/string_TRK.o                                       \
	$(BUILD_DIR)/asm/MetroTRK/targimpl.o                                       \
	$(BUILD_DIR)/asm/MetroTRK/mpc_7xx_603e.o                                       \
	$(BUILD_DIR)/asm/MetroTRK/mslsupp.o                                       \
	$(BUILD_DIR)/asm/MetroTRK/dolphin_trk.o                                       \
	$(BUILD_DIR)/asm/MetroTRK/main_TRK.o                                       \
	$(BUILD_DIR)/asm/MetroTRK/dolphin_trk_glue.o                                       \
	$(BUILD_DIR)/asm/MetroTRK/targcont.o                                       \
	$(BUILD_DIR)/asm/MetroTRK/target_options.o                                       \
	$(BUILD_DIR)/asm/MetroTRK/UDP_Stubs.o                                       \
	$(BUILD_DIR)/asm/MetroTRK/main.o                                       \
	$(BUILD_DIR)/asm/MetroTRK/CircleBuffer.o                                       \
	$(BUILD_DIR)/asm/MetroTRK/MWCriticalSection_gc.o                                       \
	$(BUILD_DIR)/asm/SDK/DebuggerDriver.o                                       \
	$(BUILD_DIR)/asm/SDK/exi2.o                                       \
	$(BUILD_DIR)/asm/text_6_2.o                                   \
	$(BUILD_DIR)/asm/text_7.o                                     \
	$(BUILD_DIR)/asm/SDK/base/PPCArch.o                                  \
	$(BUILD_DIR)/asm/SDK/OS/OS.o                                  \
	$(BUILD_DIR)/asm/SDK/OS/OSAlarm.o                             \
	$(BUILD_DIR)/src/SDK/OS/OSAlloc.o                             \
	$(BUILD_DIR)/asm/SDK/OS/OSArena.o                             \
	$(BUILD_DIR)/asm/SDK/OS/OSAudioSystem.o                       \
	$(BUILD_DIR)/asm/SDK/OS/OSCache.o                             \
	$(BUILD_DIR)/asm/SDK/OS/OSContext.o                           \
	$(BUILD_DIR)/asm/SDK/OS/OSError.o                             \
	$(BUILD_DIR)/asm/SDK/OS/OSExec.o                              \
	$(BUILD_DIR)/asm/SDK/OS/OSFatal.o                              \
	$(BUILD_DIR)/asm/SDK/OS/OSFont.o                              \
	$(BUILD_DIR)/asm/SDK/OS/OSInterrupt.o                              \
	$(BUILD_DIR)/asm/SDK/OS/OSLink.o                              \
	$(BUILD_DIR)/asm/SDK/OS/OSMessage.o                              \
	$(BUILD_DIR)/asm/SDK/OS/OSMemory.o                              \
	$(BUILD_DIR)/asm/SDK/OS/OSMutex.o                              \
	$(BUILD_DIR)/asm/SDK/OS/OSReboot.o                              \
	$(BUILD_DIR)/asm/SDK/OS/OSReset.o                              \
	$(BUILD_DIR)/asm/SDK/OS/OSRtc.o                              \
	$(BUILD_DIR)/asm/SDK/OS/OSSemaphore.o                              \
	$(BUILD_DIR)/asm/SDK/OS/OSSync.o                              \
	$(BUILD_DIR)/asm/SDK/OS/OSThread.o                              \
	$(BUILD_DIR)/asm/SDK/OS/OSTime.o                              \
	$(BUILD_DIR)/asm/SDK/OS/OSUtf.o                              \
	$(BUILD_DIR)/asm/SDK/OS/OSIpc.o                              \
	$(BUILD_DIR)/asm/SDK/OS/OSStateTM.o                              \
	$(BUILD_DIR)/asm/SDK/OS/OSPlayRecord.o                              \
	$(BUILD_DIR)/asm/SDK/OS/OSStateFlags.o                              \
	$(BUILD_DIR)/asm/SDK/OS/OSNet.o                              \
	$(BUILD_DIR)/asm/SDK/OS/OSNandbootInfo.o                              \
	$(BUILD_DIR)/asm/Runtime/__ppc_eabi_init.o                              \
	$(BUILD_DIR)/asm/SDK/EXI/EXIBios.o                              \
	$(BUILD_DIR)/asm/SDK/EXI/EXIUart.o                              \
	$(BUILD_DIR)/asm/SDK/EXI/EXICommon.o                              \
	$(BUILD_DIR)/asm/SDK/SI/SIBios.o                              \
	$(BUILD_DIR)/asm/SDK/SI/SISamplingRate.o                              \
	$(BUILD_DIR)/asm/SDK/DB/db.o                              \
	$(BUILD_DIR)/asm/text_7_2.o                                   \
	$(BUILD_DIR)/asm/text_8.o                                     \
	$(BUILD_DIR)/asm/text_9.o                                     \
	$(BUILD_DIR)/asm/text_10.o                                    \
	$(BUILD_DIR)/src/GameSpy/darray.o                             \
	$(BUILD_DIR)/src/GameSpy/hashtable.o                          \
	$(BUILD_DIR)/asm/GameSpy/md5c.o                               \
	$(BUILD_DIR)/asm/GameSpy/nonport.o                            \
	$(BUILD_DIR)/asm/GameSpy/gsAvailable.o                        \
	$(BUILD_DIR)/asm/GameSpy/gsCrypt.o                            \
	$(BUILD_DIR)/asm/GameSpy/gsLargeInt.o                         \
	$(BUILD_DIR)/asm/GameSpy/gsRC4.o                              \
	$(BUILD_DIR)/asm/GameSpy/gsSHA1.o                             \
	$(BUILD_DIR)/asm/GameSpy/gsXML.o                              \
	$(BUILD_DIR)/asm/GameSpy/gp.o                                 \
	$(BUILD_DIR)/asm/GameSpy/gpi.o                                \
	$(BUILD_DIR)/asm/GameSpy/gpiBuddy.o                           \
	$(BUILD_DIR)/asm/GameSpy/gpiBuffer.o                          \
	$(BUILD_DIR)/asm/GameSpy/gpiCallback.o                        \
	$(BUILD_DIR)/asm/GameSpy/gpiConnect.o                         \
	$(BUILD_DIR)/asm/GameSpy/gpiInfo.o                            \
	$(BUILD_DIR)/asm/GameSpy/gpiOperation.o                       \
	$(BUILD_DIR)/asm/GameSpy/gpiPeer.o                            \
	$(BUILD_DIR)/asm/GameSpy/gpiProfile.o                         \
	$(BUILD_DIR)/asm/GameSpy/gpiSearch.o                          \
	$(BUILD_DIR)/asm/GameSpy/gpiTransfer.o                        \
	$(BUILD_DIR)/asm/GameSpy/gpiUnique.o                          \
	$(BUILD_DIR)/asm/GameSpy/gpiUtility.o                         \
	$(BUILD_DIR)/asm/GameSpy/gt2Auth.o                            \
	$(BUILD_DIR)/asm/GameSpy/gt2Buffer.o                          \
	$(BUILD_DIR)/asm/GameSpy/gt2Callback.o                        \
	$(BUILD_DIR)/asm/GameSpy/gt2Connection.o                      \
	$(BUILD_DIR)/asm/GameSpy/gt2Main.o                            \
	$(BUILD_DIR)/asm/GameSpy/gt2Message.o                         \
	$(BUILD_DIR)/asm/GameSpy/gt2Socket.o                          \
	$(BUILD_DIR)/asm/GameSpy/gt2Utility.o                         \
	$(BUILD_DIR)/asm/GameSpy/qr2.o                                \
	$(BUILD_DIR)/asm/GameSpy/qr2regkeys.o                         \
	$(BUILD_DIR)/asm/GameSpy/ghttpBuffer.o                        \
	$(BUILD_DIR)/asm/GameSpy/ghttpCallbacks.o                     \
	$(BUILD_DIR)/asm/GameSpy/ghttpCommon.o                        \
	$(BUILD_DIR)/asm/GameSpy/ghttpConnection.o                    \
	$(BUILD_DIR)/asm/GameSpy/ghttpEncryption.o                    \
	$(BUILD_DIR)/asm/GameSpy/ghttpMain.o                          \
	$(BUILD_DIR)/asm/GameSpy/ghttpPost.o                          \
	$(BUILD_DIR)/asm/GameSpy/ghttpProcess.o                       \
	$(BUILD_DIR)/asm/GameSpy/gbucket.o                            \
	$(BUILD_DIR)/asm/GameSpy/gstats.o                             \
	$(BUILD_DIR)/asm/GameSpy/NATify.o                             \
	$(BUILD_DIR)/asm/GameSpy/natneg.o                             \
	$(BUILD_DIR)/asm/GameSpy/sb_crypt.o                           \
	$(BUILD_DIR)/asm/GameSpy/sb_queryengine.o                     \
	$(BUILD_DIR)/asm/GameSpy/sb_server.o                          \
	$(BUILD_DIR)/asm/GameSpy/sb_serverbrowsing.o                  \
	$(BUILD_DIR)/asm/GameSpy/sb_serverlist.o                      \
	$(BUILD_DIR)/asm/text_10_2.o                                      \
	$(BUILD_DIR)/asm/nw4r/ut/ut_list.o                                \
	$(BUILD_DIR)/asm/nw4r/ut/detail/ut_LinkList.o                     \
	$(BUILD_DIR)/asm/nw4r/ut/ut_binaryFileFormat.o                    \
	$(BUILD_DIR)/asm/nw4r/ut/ut_CharStrmReader.o                      \
	$(BUILD_DIR)/asm/nw4r/ut/ut_TagProcessorBase.o                    \
	$(BUILD_DIR)/asm/nw4r/ut/ut_IOStream.o                            \
	$(BUILD_DIR)/asm/nw4r/ut/ut_FileStream.o                          \
	$(BUILD_DIR)/asm/nw4r/ut/ut_DvdFileStream.o                       \
	$(BUILD_DIR)/asm/nw4r/ut/ut_DvdLockedFileStream.o                 \
	$(BUILD_DIR)/asm/nw4r/ut/ut_Font.o                                \
	$(BUILD_DIR)/asm/text_10_3.o                                      \
	$(BUILD_DIR)/asm/nw4r/ut/ut_ResFont.o                             \
	$(BUILD_DIR)/asm/nw4r/ut/ut_CharWriter.o                          \
	$(BUILD_DIR)/asm/nw4r/ut/ut_TextWriterBase.o                      \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_AxManager.o                  \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_AxVoice.o                    \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_AxVoiceManager.o             \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_AxfxImpl.o                   \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_Bank.o                       \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_BankFile.o                   \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_BasicPlayer.o                \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_BasicSound.o                 \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_Channel.o                    \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_DisposeCallbackManager.o     \
	$(BUILD_DIR)/asm/nw4r/snd/snd_DvdSoundArchive.o                   \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_EnvGenerator.o               \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_ExternalSoundPlayer.o        \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_FrameHeap.o                  \
	$(BUILD_DIR)/asm/nw4r/snd/snd_FxDelay.o                           \
	$(BUILD_DIR)/asm/text_10_4.o                                      \
	$(BUILD_DIR)/asm/nw4r/snd/snd_FxReverbHi.o                        \
	$(BUILD_DIR)/asm/text_10_5.o                                      \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_InstancePool.o               \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_Lfo.o                        \
	$(BUILD_DIR)/asm/nw4r/snd/snd_MemorySoundArchive.o                \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_MidiSeqPlayer.o              \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_MmlParser.o                  \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_MmlSeqTrack.o                \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_MmlSeqTrackAllocator.o       \
	$(BUILD_DIR)/asm/nw4r/snd/snd_NandSoundArchive.o                  \
	$(BUILD_DIR)/asm/nw4r/snd/snd_RemoteSpeaker.o                     \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_RemoteSpeakerManager.o       \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_SeqFile.o                    \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_SeqPlayer.o                  \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_SeqSound.o                   \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SeqSoundHandle.o                    \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_SeqTrack.o                   \
	$(BUILD_DIR)/asm/nw4r/snd/snd_Sound3DListener.o                   \
	$(BUILD_DIR)/asm/nw4r/snd/snd_Sound3DManager.o                    \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_SoundArchive.o               \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_SoundArchiveFile.o           \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_SoundArchiveLoader.o         \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundArchivePlayer.o                \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundHandle.o                       \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundHeap.o                         \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundPlayer.o                       \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundStartable.o                    \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundSystem.o                       \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_SoundThread.o                \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_StrmChannel.o                \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_StrmFile.o                   \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_StrmPlayer.o                 \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_StrmSound.o                  \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_Task.o                       \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_TaskManager.o                \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_TaskThread.o                 \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_Voice.o                      \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_VoiceManager.o               \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_Util.o                       \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_WaveFile.o                   \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_WaveSound.o                  \
	$(BUILD_DIR)/asm/nw4r/snd/snd_WaveSoundHandle.o                   \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_WsdFile.o                    \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_WsdPlayer.o                  \
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_adpcm.o                      \
	$(BUILD_DIR)/asm/nw4r/math/math_triangular.o                      \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_pane.o                              \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_group.o                             \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_layout.o                            \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_picture.o                           \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_textBox.o                           \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_window.o                            \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_bounding.o                          \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_material.o                          \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_texMap.o                            \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_drawInfo.o                          \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_animation.o                         \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_resourceAccessor.o                  \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_arcResourceAccessor.o               \
	$(BUILD_DIR)/asm/nw4r/lyt/detail/lyt_common.o                     \
	$(BUILD_DIR)/asm/text_11.o                                        \
	$(BUILD_DIR)/asm/SDK/HBM/HBMBase.o                                \
	$(BUILD_DIR)/asm/SDK/HBM/HBMAnmController.o                                \
	$(BUILD_DIR)/asm/SDK/HBM/HBMFrameController.o                                \
	$(BUILD_DIR)/asm/SDK/HBM/HBMGUIManager.o                                \
	$(BUILD_DIR)/asm/SDK/HBM/HBMController.o                                \
	$(BUILD_DIR)/asm/SDK/HBM/HBMRemoteSpk.o                                \
	$(BUILD_DIR)/asm/text_11_2.o

CTORS_O_FILES :=                                                  \
    $(BUILD_DIR)/asm/ctors.o

DTORS_O_FILES :=                                                  \
    $(BUILD_DIR)/asm/dtors.o

RODATA_O_FILES :=                                                 \
    $(BUILD_DIR)/asm/rodata.o

DATA_O_FILES :=                                                   \
    $(BUILD_DIR)/asm/data.o

BSS_O_FILES :=                                                    \
    $(BUILD_DIR)/asm/bss.o

SDATA_O_FILES :=                                                  \
    $(BUILD_DIR)/asm/sdata.o

SBSS_O_FILES :=                                                   \
    $(BUILD_DIR)/asm/sbss.o

SDATA2_O_FILES :=                                                 \
    $(BUILD_DIR)/asm/sdata2.o

SBSS2_O_FILES :=                                                 \
    $(BUILD_DIR)/asm/sbss2.o
