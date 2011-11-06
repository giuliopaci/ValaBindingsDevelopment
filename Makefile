VAPI_SOURCES:=$(wildcard */*.gi)
VALA_SOURCES:=$(wildcard *.vala)
VALA_BINARIES:=$(VALA_SOURCES:.vala=)
VAPI_FILES:=libcurl.vapi  libmicrohttpd.vapi  raptor2.vapi

all: $(VALA_BINARIES) $(VALA_SOURCES) $(VAPI_SOURCES) $(VAPI_FILES)

%: %.vala
	`head -n 1 $(<) | sed -e 's-^[[:space:]]*/[*][[:space:]]*--g' -e 's-[[:space:]]*[*]/[[:space:]]*$$--g'` $(<)

%.vapi: %/*.gi %/*
	vapigen $(<) --library $(@:.vapi=)
	touch $(@)