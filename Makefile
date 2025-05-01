#Makefile for Final Project: Mobile Device Usage and User Behavior

#Define filenames
RMD_FILE = DATAT550_FinalProj.Rmd
OUTPUT_DIR = report
OUTPUT_FILE = $(OUTPUT_DIR)/Final_Report.html

#Restore R environment using renv
install:
	Rscript -e "renv::restore()"

#Render the R Markdown file locally (not via Docker)
$(OUTPUT_FILE): $(RMD_FILE)
	mkdir -p $(OUTPUT_DIR)
	Rscript -e "rmarkdown::render('$(RMD_FILE)', output_file='$(OUTPUT_FILE)')"

#Clean the output file
clean:
	rm -f $(OUTPUT_FILE)

#Build Docker image
docker-build:
	docker build -t ssomeya13/final-project .

#Run Docker container to build report
docker-run:
	docker run --rm -v "$(PWD)/report:/project/report" ssomeya13/final-project

.PHONY: clean install docker-run docker-build
