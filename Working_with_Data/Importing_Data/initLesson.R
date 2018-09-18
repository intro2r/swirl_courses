# For compatibility with 2.2.21
swirl_options(swirl_logging = TRUE)


.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

# Path to installed lesson
lessonpath <- file.path(.get_course_path(), "Working_with_Data",
                        "Importing_Data", "data")


# open a text editor to see the data
viewData <- function(file1 = 'example1.txt'){
  file.edit(file1)
}

