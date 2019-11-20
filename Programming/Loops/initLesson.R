# Put initialization code in this file.

swirl_options(swirl_logging = TRUE)


.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

# Path to installed lesson
lessonpath <- file.path(.get_course_path(), "Programming",
                        "Loops")


trees <- read.table(file = paste(lessonpath, '/treespecies_cleandata.txt', sep = ''), header = TRUE, sep = '\t')
