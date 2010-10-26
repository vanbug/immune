source('~/Desktop/immune/R/siv/codes/parser.R')
# open gag_raw_sequences
gagRaw=readFile('~/Desktop/immune/data/210410/CTLescape_allsequences/gag_raw_sequences.tsv',header=TRUE)

# applying thresh
gagThresh=thresh(gagRaw)


# fetching tissueStats
PBMC=tissueStats(gagRaw,gagRaw$Day,"PBMC")
LN=tissueStats(gagRaw,gagRaw$Day,"LN")
RB=tissueStats(gagRaw,gagRaw$Day,"RB")
PL=tissueStats(gagRaw,gagRaw$Day,"PL")

print(paste(PBMC$results,LN$results,RB$results,PL$results))

# newline introduced
#cat('',PBMC$results,'\n',LN$results,'\n',RB$results,'\n',PL$results)
