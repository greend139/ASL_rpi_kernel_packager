#!/bin/bash
set -x
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/basic/.fixdep.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89         -o scripts/basic/fixdep scripts/basic/fixdep.c
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/kconfig/.conf.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89       -c -o scripts/kconfig/conf.o scripts/kconfig/conf.c
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/kconfig/.confdata.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89       -c -o scripts/kconfig/confdata.o scripts/kconfig/confdata.c
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/kconfig/.expr.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89       -c -o scripts/kconfig/expr.o scripts/kconfig/expr.c
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/kconfig/.lexer.lex.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89      -I ./scripts/kconfig -c -o scripts/kconfig/lexer.lex.o scripts/kconfig/lexer.lex.c
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/kconfig/.parser.tab.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89      -I ./scripts/kconfig -c -o scripts/kconfig/parser.tab.o scripts/kconfig/parser.tab.c
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/kconfig/.preprocess.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89       -c -o scripts/kconfig/preprocess.o scripts/kconfig/preprocess.c
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/kconfig/.symbol.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89       -c -o scripts/kconfig/symbol.o scripts/kconfig/symbol.c
arm-linux-gnueabihf-gcc   -o scripts/kconfig/conf scripts/kconfig/conf.o scripts/kconfig/confdata.o scripts/kconfig/expr.o scripts/kconfig/lexer.lex.o scripts/kconfig/parser.tab.o scripts/kconfig/preprocess.o scripts/kconfig/symbol.o
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/dtc/.dtc.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89     -I ./scripts/dtc/libfdt -DNO_YAML  -c -o scripts/dtc/dtc.o scripts/dtc/dtc.c
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/dtc/.flattree.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89     -I ./scripts/dtc/libfdt -DNO_YAML  -c -o scripts/dtc/flattree.o scripts/dtc/flattree.c
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/dtc/.fstree.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89     -I ./scripts/dtc/libfdt -DNO_YAML  -c -o scripts/dtc/fstree.o scripts/dtc/fstree.c
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/dtc/.data.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89     -I ./scripts/dtc/libfdt -DNO_YAML  -c -o scripts/dtc/data.o scripts/dtc/data.c
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/dtc/.livetree.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89     -I ./scripts/dtc/libfdt -DNO_YAML  -c -o scripts/dtc/livetree.o scripts/dtc/livetree.c
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/dtc/.treesource.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89     -I ./scripts/dtc/libfdt -DNO_YAML  -c -o scripts/dtc/treesource.o scripts/dtc/treesource.c
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/dtc/.srcpos.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89     -I ./scripts/dtc/libfdt -DNO_YAML  -c -o scripts/dtc/srcpos.o scripts/dtc/srcpos.c
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/dtc/.checks.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89     -I ./scripts/dtc/libfdt -DNO_YAML  -c -o scripts/dtc/checks.o scripts/dtc/checks.c
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/dtc/.util.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89     -I ./scripts/dtc/libfdt -DNO_YAML  -c -o scripts/dtc/util.o scripts/dtc/util.c
flex -oscripts/dtc/dtc-lexer.lex.c -L scripts/dtc/dtc-lexer.l
bison -o scripts/dtc/dtc-parser.tab.c --defines=scripts/dtc/dtc-parser.tab.h -t -l scripts/dtc/dtc-parser.y
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/dtc/.dtc-lexer.lex.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89     -I ./scripts/dtc/libfdt -DNO_YAML -I ./scripts/dtc -c -o scripts/dtc/dtc-lexer.lex.o scripts/dtc/dtc-lexer.lex.c
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/dtc/.dtc-parser.tab.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89     -I ./scripts/dtc/libfdt -DNO_YAML -I ./scripts/dtc -c -o scripts/dtc/dtc-parser.tab.o scripts/dtc/dtc-parser.tab.c
arm-linux-gnueabihf-gcc   -o scripts/dtc/dtc scripts/dtc/dtc.o scripts/dtc/flattree.o scripts/dtc/fstree.o scripts/dtc/data.o scripts/dtc/livetree.o scripts/dtc/treesource.o scripts/dtc/srcpos.o scripts/dtc/checks.o scripts/dtc/util.o scripts/dtc/dtc-lexer.lex.o scripts/dtc/dtc-parser.tab.o   
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/genksyms/.genksyms.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89       -c -o scripts/genksyms/genksyms.o scripts/genksyms/genksyms.c
bison --version >/dev/null; bison -o scripts/genksyms/parse.tab.c --defines=scripts/genksyms/parse.tab.h -t -l scripts/genksyms/parse.y 2>/dev/null
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/genksyms/.parse.tab.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89      -I ./scripts/genksyms -c -o scripts/genksyms/parse.tab.o scripts/genksyms/parse.tab.c
flex -oscripts/genksyms/lex.lex.c -L scripts/genksyms/lex.l
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/genksyms/.lex.lex.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89      -I ./scripts/genksyms -c -o scripts/genksyms/lex.lex.o scripts/genksyms/lex.lex.c
arm-linux-gnueabihf-gcc   -o scripts/genksyms/genksyms scripts/genksyms/genksyms.o scripts/genksyms/parse.tab.o scripts/genksyms/lex.lex.o   
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/.kallsyms.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89     -I./tools/include    -o scripts/kallsyms scripts/kallsyms.c   
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/.pnmtologo.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89     -I./tools/include    -o scripts/pnmtologo scripts/pnmtologo.c   
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/.conmakehash.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89     -I./tools/include    -o scripts/conmakehash scripts/conmakehash.c   
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/.recordmcount.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89     -I./tools/include    -o scripts/recordmcount scripts/recordmcount.c   
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/.sortextable.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89     -I./tools/include -I./tools/include   -o scripts/sortextable scripts/sortextable.c   
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/.asn1_compiler.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89     -I./tools/include -I./include   -o scripts/asn1_compiler scripts/asn1_compiler.c   
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/.extract-cert.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89     -I./tools/include  -I../includes/usr/include -I../includes/usr/include/arm-linux-gnueabihf -I../includes/usr/lib/arm-linux-gnueabihf -o scripts/extract-cert scripts/extract-cert.c  -lcrypto -pthread -ldl
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/mod/.mk_elfconfig.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89         -o scripts/mod/mk_elfconfig scripts/mod/mk_elfconfig.c
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/mod/.modpost.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89       -c -o scripts/mod/modpost.o scripts/mod/modpost.c
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/mod/.file2alias.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89       -c -o scripts/mod/file2alias.o scripts/mod/file2alias.c
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/mod/.sumversion.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89       -c -o scripts/mod/sumversion.o scripts/mod/sumversion.c
arm-linux-gnueabihf-gcc   -o scripts/mod/modpost scripts/mod/modpost.o scripts/mod/file2alias.o scripts/mod/sumversion.o
arm-linux-gnueabihf-gcc -Wp,-MD,scripts/mod/.mk_elfconfig.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89         -o scripts/unifdef scripts/unifdef.c
