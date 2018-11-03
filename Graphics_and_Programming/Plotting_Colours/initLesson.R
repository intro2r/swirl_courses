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


try(dev.off(),silent=TRUE)
plot.new()

palette("default")

par(mfrow = c(1,1))
