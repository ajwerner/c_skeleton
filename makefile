ROOT:=$(realpath .)
BUILDDIR:=$(ROOT)/build
SRCDIR:=$(ROOT)/src

all:
	@mkdir -p $(BUILDDIR) || echo
	@(cd $(BUILDDIR) && cmake $(CMAKE_FLAGS) $(SRCDIR) && make all)

clean:
	rm -rf $(BUILDDIR)
