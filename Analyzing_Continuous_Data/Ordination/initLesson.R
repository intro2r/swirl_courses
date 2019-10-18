# Put initialization code in this file. The variables you create
# here will show up in the user's workspace when he or she begins
# the lesson.

swirl_options(swirl_logging = TRUE)
library(MASS)

# For compatibility with 2.2.21
.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

lessonpath <- file.path(.get_course_path(), "Analyzing_Continuous_Data",
                        "Ordination")

sparrow <- read.table(paste0(lessonpath, "/Sparrows.txt"), header = TRUE, sep = "\t")

bryce <- read.table(paste0(lessonpath, "/bryceveg.s"), header = TRUE, row.names = 1)

site <- read.table(paste0(lessonpath, "/brycesit.s"), header = TRUE)

# Path to data
#.datapath <- file.path(.get_course_path(),'Working_with_Data', 'Matrices_and_Data_Frames','plant-data.txt')
# Read in data
#plants <- read.csv(.datapath, strip.white=TRUE, na.strings="")

# Remove annoying columns
#.cols2rm <- c('Accepted.Symbol', 'Synonym.Symbol')
#plants <- plants[, !(names(plants) %in% .cols2rm)]

# Make names pretty
# names(plants) <- c('Scientific_Name', 'Duration', 'Active_Growth_Period',
# 'Foliage_Color', 'pH_Min', 'pH_Max',
# 'Precip_Min', 'Precip_Max',
# 'Shade_Tolerance', 'Temp_Min_F')
