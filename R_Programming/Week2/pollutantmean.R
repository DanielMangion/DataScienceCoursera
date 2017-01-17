pollutantmean <- function(directory, pollutant, id){
        files_list <- list.files(directory, full.names = TRUE)
        dat <- data.frame()
        for (i in 1:25){
                dat <- rbind(dat, read.csv(files_list[i]))
        }
        print(dat)
        dat_subset <- dat[which(dat[, "ID"] == id),]
        median(
        median(dat_subset[which(dat_subset[, "pollutant"] == pollutant),], na.rm = TRUE)
} 