PRHFILES = include/PR/os_internal_error.h include/PR/os_internal_thread.h \
		 include/PR/os_time.h include/PR/os_gio.h include/PR/ramrom.h  \
		 include/PR/os_cache.h include/PR/os_cont.h include/PR/os_system.h include/PR/os_libc.h include/PR/os_pfs.h \
		 include/PR/os_eeprom.h include/PR/sptask.h include/PR/R4300.h \
		 include/PR/gu.h include/PR/gt.h include/PR/os_ai.h include/PR/abi.h include/PR/os_rdp.h include/PR/os_internal_rsp.h \
		 include/PR/os_error.h include/PR/os_si.h include/PR/os_internal_reg.h \
		 include/PR/os_internal.h include/PR/os_message.h include/PR/os_internal_gio.h include/PR/os_motor.h \
		 include/PR/os_internal_host.h include/PR/os_rsp.h include/PR/os_internal_si.h include/PR/gs2dex.h \
		 include/PR/region.h include/PR/rcp.h include/PR/sptaskoff.h include/PR/gtoff.h include/PR/ultralog.h \
		 include/PR/os_tlb.h include/PR/os_thread.h include/PR/os_internal_flash.h \
		 include/PR/rmon.h include/PR/os_internal_tlb.h include/PR/sp.h include/PR/os_exception.h include/PR/ucode.h \
		 include/PR/os_debug.h include/PR/os_vi.h include/PR/gbi.h include/PR/libaudio.h include/PR/os_internal_debug.h \
		 include/PR/os_host.h include/PR/os_gbpak.h include/PR/os_version.h include/PR/os_convert.h include/PR/os_internal_exception.h \
		 include/PR/ultratypes.h include/PR/rdb.h include/PR/os_pi.h include/PR/os.h include/PR/os_voice.h include/PR/ultraerror.h include/PR/os_flash.h \
		 include/PR/mbi.h include/PR/gzsort.h include/PR/sched.h include/PR/os_reg.h 

install: all
	$(V)mkdir -p /opt/crashsdk/mips64-elf/lib/ /opt/crashsdk/mips64-elf/include/ /opt/crashsdk/mips64-elf/include/PR
	@$(PRINT) "$(GREEN)Copying libultra.a$(NO_COL)\n"
	$(V)cp $(BUILD_DIR_BASE)/libultra.a /opt/crashsdk/mips64-elf/lib/libultra.a
	@$(PRINT) "$(GREEN)Copying libultra_d.a$(NO_COL)\n"
	$(V)cp $(BUILD_DIR_BASE)/libultra_d.a /opt/crashsdk/mips64-elf/lib/libultra_d.a
	@$(PRINT) "$(GREEN)Copying libultra_rom.a$(NO_COL)\n"
	$(V)cp $(BUILD_DIR_BASE)/libultra_rom.a /opt/crashsdk/mips64-elf/lib/libultra_rom.a
	@$(PRINT) "$(GREEN)Copying assert.h$(NO_COL)\n"
	$(V)cp include/assert.h /opt/crashsdk/mips64-elf/include/assert.h
	@$(PRINT) "$(GREEN)Copying ultra64.h$(NO_COL)\n"
	$(V)cp include/ultra64.h /opt/crashsdk/mips64-elf/include/ultra64.h
	@$(PRINT) "$(GREEN)Copying ultrahost.h$(NO_COL)\n"
	$(V)cp include/ultrahost.h /opt/crashsdk/mips64-elf/include/ultrahost.h
	@$(PRINT) "$(GREEN)Copying PR headers$(NO_COL)\n"
	$(V)$(foreach var,$(PRHFILES),cp $(var) /opt/crashsdk/mips64-elf/include/PR/;)
