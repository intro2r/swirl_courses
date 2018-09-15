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

#Path to data
#.datapath <- file.path(.get_course_path(),'Working_With_Data', 'Subsetting_Data_Frames','forest_area.txt')
#Read in data
#forest_area <- read.table(.datapath, header = TRUE, sep = "\t")

# Remove annoying columns
#.cols2rm <- c('Accepted.Symbol', 'Synonym.Symbol')
#plants <- plants[, !(names(plants) %in% .cols2rm)]

# Make names pretty
# names(plants) <- c('Scientific_Name', 'Duration', 'Active_Growth_Period',
# 'Foliage_Color', 'pH_Min', 'pH_Max',
# 'Precip_Min', 'Precip_Max',
# 'Shade_Tolerance', 'Temp_Min_F')

forest_area <- data.frame(
rank= c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193),

country = c('Russia', 'Canada', 'Brazil', 'United States', 'China', 'Australia', 'Democratic Republic of the Congo', 'Argentina', 'Indonesia', 'India', 'Mexico', 'Peru', 'Sudan', 'Mozambique', 'Colombia', 'Angola', 'Bolivia', 'Venezuela', 'Myanmar', 'Zambia', 'Tanzania', 'Sudan', 'Papua New Guinea', 'Sweden', 'Zimbabwe', 'Japan', 'France', 'Finland', 'Central African Republic', 'Gabon', 'Republic of the Congo', 'Turkey', 'Cameroon', 'Malaysia', 'Paraguay', 'Spain', 'Laos', 'Chile', 'Guyana', 'South Sudan', 'Suriname', 'Thailand', 'Madagascar', 'Mali', 'Vietnam', 'Norway', 'Botswana', 'Chad', 'Ecuador', 'Germany', 'Niger', 'Morocco', 'Nigeria', 'Iran', 'Guatemala', 'Italy', 'Ukraine', 'Mongolia', 'Cambodia', 'Poland', 'South Africa', 'Senegal', 'New Zealand', 'Belarus', 'Namibia', 'North Korea', 'Philippines', 'Somalia', 'Romania', 'Burkina Faso', 'Honduras', 'Guinea', 'South Korea', 'Benin', 'Kazakhstan', 'Nicaragua', 'Uganda', 'Panama', 'Pakistan', 'Algeria', 'Turkmenistan', 'Austria', 'Ethiopia', 'Greece', 'Nepal', 'Bulgaria', 'Malawi', 'Portugal', 'Liberia', 'Ivory Coast', 'Latvia', 'United Kingdom', 'Georgia', 'Sierra Leone', 'Serbia', 'Cuba', 'Saudi Arabia', 'Czech Republic', 'Bosnia and Herzegovina', 'Croatia', 'Bhutan', 'Ghana', 'Estonia', 'Taiwan', 'Lithuania', 'Hungary', 'Guinea-Bissau', 'Tunisia', 'Costa Rica', 'Slovakia', 'Uzbekistan', 'Sri Lanka', 'Belize', 'Equatorial Guinea', 'Eritrea', 'Dominican Republic', 'Kenya', 'Oman', 'Slovenia', ' Switzerland', 'Azerbaijan', 'Macedonia', 'Fiji', 'Bangladesh', 'Kyrgyzstan', 'Iraq', 'Togo', 'Timor-Leste', 'Albania', 'Ireland', 'Uruguay', 'Belgium', 'Montenegro', 'Denmark', 'Bahamas', 'Gambia', 'Syria', 'Yemen', 'Vanuatu', 'Tajikistan', 'Netherlands', 'Jamaica', 'Moldova', 'Rwanda', 'United Arab Emirates', 'El Salvador', 'Armenia', 'Brunei', 'Mauritania', 'Trinidad and Tobago', 'Libya', 'Iceland', 'Cyprus', 'Afghanistan', 'Israel', 'Lebanon', 'Burundi', 'Samoa', 'Jordan', 'Luxembourg', 'Cape Verde', 'Egypt', 'Micronesia', 'Mauritius', 'Dominica', 'Haiti', 'Seychelles', 'Palau', 'Sao Tome and Principe', 'Swaziland', 'Saint Lucia', 'Andorra', 'Saint Vincent and the Grenadines', 'Antigua and Barbuda', 'Palestine', 'Lesotho', 'Liechtenstein', 'Djibouti', 'Kuwait', 'Comoros', 'Saint Kitts and Nevis', 'Grenada', 'Tonga', 'Tuvalu', 'Barbados', 'Kiribati', 'Singapore', 'Maldives', 'Bahrain', 'Malta', 'San Marino', 'Qatar'),

land.area.km = c(8149300, 4916438, 4776980, 3100950, 2083210, 1470832, 1172704, 945336, 884950, 802088, 710000, 687420, 675460, 620000, 607280, 591040, 587400, 471378, 430560, 376309, 352570, 327909, 294370, 280730, 259267, 253203, 246640, 233320, 227550, 227517, 224710, 216781, 212450, 195200, 184750, 184180, 170000, 158781, 151040, 148196, 147760, 147620, 128380, 125720, 123000, 121120, 119430, 119210, 115510, 114190, 112000, 111325, 110890, 110750, 108894, 106736, 105000, 102520, 93350, 90000, 89170, 86730, 85424, 80334, 76610, 76240, 71620, 71310, 69610, 67940, 67254, 67240, 63346, 61860, 54498, 51890, 50000, 42940, 42240, 42000, 41270, 39600, 39313, 37520, 36360, 36250, 33176, 31820, 31540, 30000, 28807, 28650, 28577, 27540, 27200, 27130, 27000, 26000, 25599, 24901, 24764, 24600, 23066, 21588, 21223, 20990, 20720, 20615, 20440, 20006, 19690, 19330, 16530, 16320, 15540, 13384, 13200, 13050, 12574, 12540, 11400, 10285, 10000, 8710, 8690, 8220, 8000, 7980, 7716, 7540, 7000, 6834, 6252, 6120, 5150, 4857, 4610, 4490, 4470, 4100, 3650, 3308, 3290, 3161, 3120, 2980, 2974, 2780, 2670, 2260, 2170, 1930, 1740, 1631, 1600, 1383, 1270, 1050, 893, 870, 840, 670, 630, 612, 488, 8300, 407, 400, 270, 174, 170, 160, 127, 90, 90, 80, 70, 60, 60, 50, 50, 40, 40, 23, 20, 20, 20, 10, 5, 3, 1, 0),

per.forest = c(49.4, 49.24, 56.1, 33.84, 21.83, 19.9, 50, 34, 46.46, 23.68, 36.5, 53.49, 26.96, 78, 53.32, 47.41, 53.47, 51.68, 63.64, 50, 37.22, 17.62, 63.6, 68.95, 66.35, 67, 36.76, 72, 36.53, 85, 65.7, 27.6, 44.68, 59.5, 45.42, 36.7, 71.6, 21, 70.26, 23, 90.2, 29, 21.87, 10.14, 37.14, 37.42, 20.53, 9.28, 42, 32, 8, 15.66, 12, 6.72, 51, 35, 17, 6.55, 51.56, 28.8, 7.31, 44.09, 31.87, 38.6, 9.29, 73, 23.87, 11.18, 29.02, 24.78, 60, 27.35, 63.2, 54.93, 2, 39.8, 20.74, 56.93, 5.31, 1.7, 8.46, 47.2, 3.56, 28.43, 24.7, 32.69, 28, 34.8, 28.32, 9.3, 60, 11.76, 41, 38.39, 31.13, 24.47, 1.26, 34, 53, 44, 64.5, 10.2, 61, 60, 33, 23, 57.36, 12.6, 40, 40.8, 4.4, 29.46, 71.98, 58.18, 13.21, 27.5, 2.27, 4.22, 60, 31.8, 13.17, 40, 54.72, 6.05, 4.35, 1.88, 14, 53.65, 26.84, 11.07, 4, 22.38, 45.26, 14.2, 51.45, 43, 2.49, 0.85, 36.67, 2.87, 8.79, 30.1, 9.72, 12, 3.73, 14.16, 10, 48.22, 0.26, 44.07, 0.12, 2, 18.81, 0.25, 7, 13.3, 4.5, 37, 1, 33.64, 20.83, 0.07, 89.74, 30, 65, 30, 89.45, 87.15, 28.01, 1, 27.6, 34.19, 32.56, 21, 1.45, 0.26, 43.75, 0.26, 0.34, 2.24, 19.16, 11.63, 5.35, 89.12, 4.65, 2.47, 3, 3.56, 0.67, 0.95, 1.64, 0)
)

