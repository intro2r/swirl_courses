# For compatibility with 2.2.21
swirl_options(swirl_logging = TRUE)


.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

# Path to installed lesson
lessonpath <- file.path(.get_course_path(), "fes720_Explore",
                        "Plotting_Data")


# simple dataset for plotting
BirdData <- data.frame(
  Tarsus  = c(22.3, 19.7, 20.8, 20.3, 20.8, 21.5, 20.6, 21.5),
  Head    = c(31.2, 30.4, 30.6, 30.3, 30.3, 30.8, 32.5, 31.6),
  Weight  = c(9.5, 13.8, 14.8, 15.2, 15.5, 15.6, 15.6, 15.7),
  Wingcrd = c(59, 55, 53.5, 55, 52.5, 57.5, 53, 55),
  Species = c('A', 'A', 'A', 'A', 'A',  'B', 'B', 'B')
)

