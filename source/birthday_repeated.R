#' birthday_repeated
#'
#'This function simulates birthdays for a group of people and checks whether at least 2 people share a birthday.
#'
#' @param n_room 
#'
#' @returns logical: TRUE if at least 2 people share a birthday, FALSE otherwise  
#'

birthday_repeated = function(n_room) {
  
  birthdays = sample(1:365, size = n_room, replace = TRUE)
  repeated_birthdays = length(unique(birthdays)) < n_room
  
  return(repeated_birthdays)
}