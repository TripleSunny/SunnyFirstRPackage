#' Body Mass Index
#'
#' Caculate BMI
#' @param height Input height (in cm)
#' @param weight Input weight (in kg)
#' @param PRINT if print is TRUE, then print level (Default is FALSE)
#' @return BMI
#' @export
BMI <- function(height, weight, PRINT=FALSE){
  height <- height / 100
  bmi <- weight / height^2

  if(PRINT){
    if(bmi < 18.5){
      print("underweight")
    } else if(bmi < 24){
      print("normal range")
    } else if(bmi < 28){
      print("overweight")
    } else {
      print("obese")
    }
  }

  return(bmi)
}
