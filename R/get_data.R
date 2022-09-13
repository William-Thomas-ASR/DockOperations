

get_data <- function(refinery_name = refinery,
                     endpoint = file_name,
                     sheet = sheet) {

  path = paste("Dock Operations", refinery_name, endpoint,
               sep = "/")

  sheet <- 'Downtime'

  downtime_data <- readxl::read_xlsx(path, sheet)


  return(downtime_data)
}
