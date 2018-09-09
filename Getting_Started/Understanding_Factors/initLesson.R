# Code placed in this file fill be executed every time the
# lesson is started. Any variables created here will show up in
# the user's working directory and thus be accessible to them
# throughout the lesson.

swirl_options(swirl_logging = TRUE)

# data
sex <- factor(c("male", "female", "female", "male"))

food <- factor(c("low", "high", "medium", "high", "low", "medium", "high"))

# extracted from sample.csv (https://swcarpentry.github.io/r-novice-inflammation/setup.html)
Gender <- factor(c('m', 'm', 'm', 'f', 'm', 'M', 'f', 'm', 'm', 'f', 'm', 'f', 'f', 'm', 'm', 'm', 'f', 'm', 'm', 'F', 'f', 'm', 'f', 'f', 'm', 'M', 'M', 'f', 'm', 'f', 'f', 'm', 'm', 'm', 'm', 'f', 'f', 'm', 'M', 'm', 'f', 'm', 'm', 'm', 'f', 'f', 'M', 'M', 'm', 'm', 'm', 'f', 'f', 'f', 'm', 'f', 'm', 'm', 'm', 'f', 'f', 'f', 'f', 'M', 'f', 'm', 'f', 'f', 'M', 'm', 'm', 'm', 'F', 'm', 'm', 'f', 'M', 'M', 'M', 'f', 'm', 'M', 'M', 'm', 'm', 'f', 'f', 'f', 'm', 'm', 'f', 'm', 'F', 'f', 'm', 'm', 'F', 'm', 'M', 'M'))

Group <- factor(c('Treatment2', 'Treatment2', 'Treatment1', 'Treatment1', 'Treatment2', 'Control', 'Treatment2', 'Treatment2', 'Control', 'Treatment1', 'Treatment2', 'Control', 'Control', 'Control', 'Control', 'Treatment1', 'Treatment2', 'Treatment1', 'Treatment1', 'Control', 'Treatment1', 'Treatment2', 'Treatment2', 'Treatment1', 'Treatment1', 'Treatment2', 'Treatment1', 'Control', 'Control', 'Treatment1', 'Treatment1', 'Treatment2', 'Treatment1', 'Treatment1', 'Control', 'Treatment2', 'Treatment2', 'Treatment1', 'Treatment2', 'Treatment1', 'Treatment1', 'Control', 'Treatment1', 'Control', 'Treatment2', 'Control', 'Control', 'Control', 'Treatment1', 'Treatment2', 'Treatment1', 'Treatment1', 'Treatment2', 'Treatment2', 'Treatment2', 'Control', 'Treatment2', 'Treatment1', 'Control', 'Control', 'Treatment2', 'Treatment1', 'Treatment1', 'Treatment2', 'Treatment1', 'Treatment2', 'Control', 'Treatment2', 'Control', 'Treatment2', 'Control', 'Treatment1', 'Control', 'Treatment2', 'Treatment2', 'Treatment1', 'Treatment1', 'Treatment1', 'Control', 'Treatment2', 'Treatment1', 'Treatment2', 'Treatment2', 'Treatment2', 'Control', 'Control', 'Treatment1', 'Treatment1', 'Control', 'Treatment2', 'Treatment2', 'Control', 'Treatment1', 'Control', 'Control', 'Treatment2', 'Treatment1', 'Treatment2', 'Treatment1'))

BloodPressure <- c(132, 139, 130, 105, 125, 112, 173, 108, 131, 129, 126, 96, 77, 158, 81, 137, 147, 130, 105, 92, 111, 122, 97, 118, 82, 123, 126, 94, 135, 108, 133, 108, 122, 134, 145, 133, 90, 118, 113, 115, 142, 114, 139, 90, 126, 109, 125, 99, 122, 111, 109, 134, 113, 105, 125, 123, 155, 117, 116, 133, 94, 106, 144, 149, 108, 116, 136, 98, 148, 74, 147, 116, 133, 97, 132, 153, 151, 121, 116, 104, 111, 62, 124, 124, 109, 117, 90, 158, 113, 150, 115, 83, 116, 141, 108, 102, 90, 133, 83, 122)
