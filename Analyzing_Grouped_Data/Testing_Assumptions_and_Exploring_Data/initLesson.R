# For compatibility with 2.2.21
swirl_options(swirl_logging = TRUE)


.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

# Path to installed lesson
.lessonpath <- file.path(.get_course_path(), "Analyzing_Grouped_Data",
                        "Testing_Assumptions_and_Exploring_Data")
# Path to dataset
.datapath <- file.path(.lessonpath, "sparrows.txt")
# Load dataset
sparrows <- read.table(.datapath, header = TRUE, sep = '\t')

# Path to dataset info
.infopath <- file.path(.lessonpath, "sparrows.txt")
# Function for user to open info
viewinfo <- function() {
  file.edit(.infopath)
  return(.infopath)
}

## basic model of sparrow wing on weight
m <- lm(sparrows$Wing ~ sparrows$Weight + sparrows$Species)

