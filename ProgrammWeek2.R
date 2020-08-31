pollutantmean <- function (directory){
        SubDir <- as.string(directory)
        PathName <- paste ("~/GithubRepo/datasciencecoursera/", SubDir, "/", sep='')
        file_list <- list.files(path= PathName, pattern="*.csv") # create list of all .csv files in folder
        MonitorData <- 
                do.call("rbind", 
                        lapply(file_list, 
                               function(x) 
                                       read.csv(paste(PathName, file_list, sep=''), 
                                                stringsAsFactors = FALSE)))
}


summary ()


# MonitorData <- read.csv("~/GithubRepo/datasciencecoursera/specdata/001.csv")




# , pollutant, id = 1:331
directory <- NULL
essai <- function (directory){
        SubDir <- toString(directory)
        
}
essai
# PathName <- paste ("~/GithubRepo/datasciencecoursera/", SubDir, "/", sep='')        

folder <- "~/GithubRepo/datasciencecoursera/specdata/"      # path to folder that holds multiple .csv files
file_list <- list.files(path=folder, pattern="*.csv") # create list of all .csv files in folder
file_list
# read in each .csv file in file_list and rbind them into a data frame called data 
data <- 
        do.call("rbind", 
                lapply(file_list, 
                       function(x) 
                               read.csv(paste(folder, x, sep=''), 
                                        stringsAsFactors = FALSE)))
summary (data)
file_list





x <- 1:10
if(x > 5) {
        x <- 0
}



pollutantmean <-function(x, y, z, removeNA=TRUE){
        
        x <-list.files("specdata", full.names = TRUE)[id]
        
        y<-file.access(x)
        
        z <-`colnames<-`("y", "nitrate")
        
}

colMeans(z)




pollutantmean <- function(directory, pollutant, id = 1:332){
        tab1 <- data.frame()
        tab2 <- data.frame()
        tab3 <- data.frame()
        for (i in id){
                if (i < 10) {
                        tab1 <- read.csv(paste0(getwd(), "/", directory, "/00", i, ".csv"))
                } else if (i >= 10 && i < 100){
                        tab2 <- read.csv(paste0(getwd(), "/", directory, "/0", i, ".csv"))
                } else {
                        tab3 <- read.csv(paste0(getwd(), "/", directory, "/", i, ".csv"))
                }      
        }
        tabla <- rbind(tab1, tab2, tab3 )
        if (pollutant == "sulfate"){
                media_sulfate <- weighted.mean(tabla[,2], na.rm = TRUE)
                print(media_sulfate)
        } else if (pollutant == "nitrate"){
                media_nitrate <- weighted.mean(tabla[,3], na.rm = TRUE)
                print(media_nitrate)
        } else {
                print("That's not correct. Check your pollutant.")
        }
} 