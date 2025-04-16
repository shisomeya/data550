#Makefile
install:
	Rscript -e "renv::restore()"
RMD_FILE = DATAT550_FinalProj.Rmd
OUTPUT_FILE = output/Final_Report.pdf
$(OUTPUT_FILE): $(RMD_FILE)
	Rscript -e "rmarkdown::render('$(RMD_FILE)', output_file='$(OUTPUT_FILE)')
clean:
	rm -f $(OUTPUT_FILE)
.PHONY: clean

