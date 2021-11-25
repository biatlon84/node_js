# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := fib
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=fib' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DNAPI_DISABLE_CPP_EXCEPTIONS' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-std=gnu++1y

INCS_Debug := \
	-I/home/kwas/.cache/node-gyp/12.13.0/include/node \
	-I/home/kwas/.cache/node-gyp/12.13.0/src \
	-I/home/kwas/.cache/node-gyp/12.13.0/deps/openssl/config \
	-I/home/kwas/.cache/node-gyp/12.13.0/deps/openssl/openssl/include \
	-I/home/kwas/.cache/node-gyp/12.13.0/deps/uv/include \
	-I/home/kwas/.cache/node-gyp/12.13.0/deps/zlib \
	-I/home/kwas/.cache/node-gyp/12.13.0/deps/v8/include \
	-I/home/kwas/Temp/addons/Fibonacci_native/node_modules/node-addon-api

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=fib' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DNAPI_DISABLE_CPP_EXCEPTIONS' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-O3 \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-std=gnu++1y

INCS_Release := \
	-I/home/kwas/.cache/node-gyp/12.13.0/include/node \
	-I/home/kwas/.cache/node-gyp/12.13.0/src \
	-I/home/kwas/.cache/node-gyp/12.13.0/deps/openssl/config \
	-I/home/kwas/.cache/node-gyp/12.13.0/deps/openssl/openssl/include \
	-I/home/kwas/.cache/node-gyp/12.13.0/deps/uv/include \
	-I/home/kwas/.cache/node-gyp/12.13.0/deps/zlib \
	-I/home/kwas/.cache/node-gyp/12.13.0/deps/v8/include \
	-I/home/kwas/Temp/addons/Fibonacci_native/node_modules/node-addon-api

OBJS := \
	$(obj).target/$(TARGET)/fib.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64

LIBS :=

$(obj).target/fib.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/fib.node: LIBS := $(LIBS)
$(obj).target/fib.node: TOOLSET := $(TOOLSET)
$(obj).target/fib.node: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(obj).target/fib.node
# Add target alias
.PHONY: fib
fib: $(builddir)/fib.node

# Copy this to the executable output path.
$(builddir)/fib.node: TOOLSET := $(TOOLSET)
$(builddir)/fib.node: $(obj).target/fib.node FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/fib.node
# Short alias for building this executable.
.PHONY: fib.node
fib.node: $(obj).target/fib.node $(builddir)/fib.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/fib.node

