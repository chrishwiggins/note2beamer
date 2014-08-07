# scrpt to make a talk .pdf from notes.asc

# cleanup
rm -f notes.tex raw.tex talk.*

mkdir backups
cp notes.asc backups/notes_`date +%yy%mm%dd_%Hh%Mm%Ss`

# asc2tex
cut -d% -f1 < notes.asc >! notes.tex

# tex2raw.tex
pandoc -t beamer notes.asc -o raw.tex

# aggregate, sed to clean things i don't like
cat header.tex raw.tex tail.tex | sed -f pbeam2cbeam.sed  > talk.tex
# NB here's a good palce to add fixes just for this talk:
  # cat header.tex raw.tex tail.tex | sed -f pbeam2cbeam.sed -f adhoc-this-talk.sed  > talk.tex

# ACTUALLY LATEX IT
latex talk.tex
latex talk.tex
dvipdf talk.dvi
