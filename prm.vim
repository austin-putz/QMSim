" Vim syntax highlighting file
" for QMSim parameter files
" Maintainer: Austin Putz (putz.austin@gmail.com or amputz@ncsu.edu)
" Latest version: 2015-03-02

" Please contact me if you find errors or I forgot a keyword (email above).

if exists("b:current_syntax")
	finish
endif

" Make sure vim syntax highlighting is turned on
" Make sure QMSim parameter files are .prm

"================================================================================================"
" KEYWORDS
"================================================================================================"

" GLOBAL keywords
syn keyword prmGlobal title seed nthread nrep h2 qtlh2 phvar no_male_rec
syn keyword prmGlobal skip_inbreeding joint_pop system

" HISTORICAL keywords
syn keyword prmHistorical begin_hp end_hp hg_size nmfhg nmlhg

" POPULATION keywords
syn keyword prmPopulation begin_pop end_pop begin_founder end_founder male female
syn keyword prmPopulation ng ls pmp md sr dr sd cd ebv_est
syn keyword prmPopulation begin_popoutput end_popoutput
syn keyword prmPopulation crossover data stat allele_freq genotype ld

" GENOME keywords
syn keyword prmGenome begin_genome end_genome begin_chr end_chr chrlen
syn keyword prmGenome nmloci mpos nma maf nqloci qpos nqa qaf qae
syn keyword prmGenome male_map_scale female_map_scale cld select_seg_loci
syn keyword prmGenome r_mpos_g r1_mpos_g r_qpos_g r1_qpos_g rmmg rmqg rmge rqge mmutr qmutr
syn keyword prmGenome interference

" OUTPUT keywords
syn keyword prmOutput begin_output end_output
syn keyword prmOutput output_folder attach_rep linkage_map allele_effect allele_label
syn keyword prmOutput hp_stat monitor_hp_homo 


"================================================================================================"
" OPTIONS
"================================================================================================"

" GLOBAL options
syn match prmGlobalOption "/nrep"

" HISTORICAL options
" none that I know of...

" POPULATION options
" begin_founder for male and female
syn keyword prmPopulationOption n pop gen select rnd phen tbv ebv
syn match   prmPopulationOption "/l"
syn match   prmPopulationOption "/h"
syn match   prmPopulationOption "/not_founder_yet"

" pmp
syn match prmPopulationOption "/fix"
syn match prmPopulationOption "/fix_litter"

" md
syn keyword prmPopulationOption rnd rnd_ug minf maxf p_assort n_assort
syn match   prmPopulationOption "/phen"
syn match   prmPopulationOption "/ebv"
syn match   prmPopulationOption "/tbv"

" sr/dr
syn match prmPopulationOption "/e"

" sd same as begin_founder section
" cd
syn keyword prmPopulationOption age

" ebv_est
syn keyword prmPopulationOption blup approx accur accur_male accur_female external_bv
syn match   prmPopulationOption "/mnp_male"
syn match   prmPopulationOption "/mnp_female"
syn match   prmPopulationOption "/true_av"

" popoutput
syn match  prmPopulationOption "/gen"
syn match  prmPopulationOption "/mafbin"
syn match  prmPopulationOption "/binary"
syn match  prmPopulationOption "/snp_code"
syn match  prmPopulationOption "/seq"
syn match  prmPopulationOption "/maft"
syn match  prmPopulationOption "/max_distance"
syn match  prmPopulationOption "/nmrk"
syn match  prmPopulationOption "/chr"

" GENOME options
syn keyword prmGenomeOption even rnd rnd1 pd all unique eql rndg rndn m q mq
syn match   prmGenomeOption "/start"
syn match   prmGenomeOption "/end"
syn match   prmGenomeOption "/maft"
syn match   prmGenomeOption "/nmrk"
syn match   prmGenomeOption "/nqtl"
syn match   prmGenomeOption "/rndg"
syn match   prmGenomeOption "/recurrent"
syn match   prmGenomeOption "/c"

" OUTPUT options
syn match  prmOutputOption "/freq"

"================================================================================================"
" STRINGS
"================================================================================================"

syn match prmString "\".*\""

"================================================================================================"
" COMMENTS
"================================================================================================"

" Comment
syn match prmComment "//.*$" 
syn match prmComment "^/\*.*\n.*\n.*\*/$"
syn match prmComment "^/\*.*\n.*\*/$"
syn match prmComment "^/\*.*\*/"

" syn match prmComment contained "^\s*\*\($\|\s\+\)"

"================================================================================================"
" NUMBERS (copied from PERL vim syntax file)
"================================================================================================"

syn match  prmNumber	"\<\%(0\%(x\x[[:xdigit:]_]*\|b[01][01_]*\|\o[0-7_]*\|\)\|[1-9][[:digit:]_]*\)\>"
syn match  prmFloat	    "\<\d[[:digit:]_]*[eE][\-+]\=\d\+"
syn match  prmFloat	    "\<\d[[:digit:]_]*\.[[:digit:]_]*\%([eE][\-+]\=\d\+\)\="
syn match  prmFloat	    "\.[[:digit:]_]\+\%([eE][\-+]\=\d\+\)\="

"================================================================================================"
" OTHER
"================================================================================================"

" Like to figure out how to write errors for not ending in a semicolon
" Let me know if you figure it out
" syn match prmError '^.*!\;[ ]*'

"================================================================================================"
" SET HIGHLIGHTING COLORS
"================================================================================================"

let b:current_syntax = "prm"

hi prmComment           ctermfg=Cyan
hi prmString            ctermfg=White
hi prmGlobal            ctermfg=Red
hi prmGlobalOption      ctermfg=White
hi prmHistorical        ctermfg=Yellow
hi prmHistoricalOption  ctermfg=White
hi prmPopulation        ctermfg=Green
hi prmPopulationOption  ctermfg=White
hi prmGenome            ctermfg=Blue
hi prmGenomeOption      ctermfg=White
hi prmOutput            ctermfg=Magenta
hi prmOutputOption      ctermfg=White
hi prmNumber            ctermfg=Gray
hi prmFloat             ctermfg=Gray
hi prmError             ctermfg=White ctermbg=red



