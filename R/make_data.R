

#' Make raw data table
#'
#' @param refinery_name The name of the refinery we're making the data frame for
#' @param endpoint The name of the file containing the data being reading in
#' @param sheet name of worksheet (Vessel, Downtime, Labor, Trucks, Operations)
#'
#' @return A data frame containing the data for the specific location, date, and category
#' @export
#'
#' @examples
make_data <- function(refinery_name = refinery,
                     endpoint = file_name,
                     sheet = sheet) {

  path = paste("Dock Operations", refinery_name, endpoint,
               sep = "/")

  sheet <- 'Downtime'

  downtime_data <- readxl::read_xlsx(path, sheet)


  return(downtime_data)
}
