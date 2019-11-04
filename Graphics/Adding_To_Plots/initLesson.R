# For compatibility with 2.2.21
swirl_options(swirl_logging = TRUE)


.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

# Path to installed lesson
lessonpath <- file.path(.get_course_path(), "Graphics",
                        "Adding_To_Plots")


# simple dataset for plotting
data(state)
state <- as.data.frame(state.x77)
colnames(state)[c(4,6)] <- c("Life_Exp", "HS_grad")
state$state_name <- rownames(state)
rownames(state) <- NULL

