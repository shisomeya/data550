#Use R and RStudio preconfigured image with tidyverse + rmarkdown
FROM rocker/verse:latest

#Install needed packages
RUN R -e "install.packages(c('rmarkdown', 'dplyr', 'here'))"

#Set working directory
WORKDIR /project

#Copy everything from repo into the image
COPY . /project

#Render report
CMD ["Rscript", "-e", "rmarkdown::render('DATAT550_FinalProj.Rmd', output_dir='/project/report')"]

