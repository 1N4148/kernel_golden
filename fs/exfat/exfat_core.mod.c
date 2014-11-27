#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

MODULE_INFO(vermagic, VERMAGIC_STRING);

struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
 .name = KBUILD_MODNAME,
 .init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
 .exit = cleanup_module,
#endif
 .arch = MODULE_ARCH_INIT,
};

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0xbdb4b54, "module_layout" },
	{ 0x12da5bb2, "__kmalloc" },
	{ 0x405c1144, "get_seconds" },
	{ 0xff178f6, "__aeabi_idivmod" },
	{ 0x296aa27c, "__bread" },
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0x97255bdf, "strlen" },
	{ 0xe403478b, "malloc_sizes" },
	{ 0x61580b95, "__lock_buffer" },
	{ 0xb1ad28e0, "__gnu_mcount_nc" },
	{ 0xb35ada66, "unlock_buffer" },
	{ 0x6bcb6e07, "__might_sleep" },
	{ 0xe2d5255a, "strcmp" },
	{ 0xfa2a45e, "__memzero" },
	{ 0x5f754e5a, "memset" },
	{ 0x27e1a049, "printk" },
	{ 0xe52592a, "panic" },
	{ 0x84b183ae, "strncmp" },
	{ 0xb5a0e267, "down" },
	{ 0x26d94f09, "sync_dirty_buffer" },
	{ 0xe5cb7f99, "__brelse" },
	{ 0x2196324, "__aeabi_idiv" },
	{ 0xfe5d4bb2, "sys_tz" },
	{ 0xd7c26f37, "mark_page_accessed" },
	{ 0xe952d4af, "sync_blockdev" },
	{ 0xc27487dd, "__bug" },
	{ 0xf828ef78, "kmem_cache_alloc_trace" },
	{ 0x8d66a3a, "warn_slowpath_fmt" },
	{ 0x37a0cba, "kfree" },
	{ 0x9d669763, "memcpy" },
	{ 0x7a728ef4, "up" },
	{ 0x4db4c85b, "sb_set_blocksize" },
	{ 0xfb75df9b, "mark_buffer_dirty" },
	{ 0x676bbc0f, "_set_bit" },
	{ 0xca54fee, "_test_and_set_bit" },
	{ 0xbe2fc7d1, "__getblk" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "98843AA03143649F4339A77");
