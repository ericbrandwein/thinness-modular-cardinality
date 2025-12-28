SOURCES = main.tex *.bib img/

submission: $(SOURCES)
	zip submission.zip -r $(SOURCES)