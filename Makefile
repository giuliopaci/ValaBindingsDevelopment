VALA_SOURCES:=$(wildcard *.vala)
VALA_BINARIES:=$(VALA_SOURCES:.vala=)

all: $(VALA_BINARIES) $(VALA_SOURCES)

%: %.vala
	`head -n 1 $(<) | sed -e 's-^[[:space:]]*/[*][[:space:]]*--g' -e 's-[[:space:]]*[*]/[[:space:]]*$$--g'` $(<)