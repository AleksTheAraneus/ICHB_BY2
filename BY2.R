#swap sonication and incubation! for 17_2, 24_2, 24_3

file_list <- list.files("/mnt/Data/sciences/ICHB/obserwacje")
recznie_2 <- read.csv("/mnt/Data/sciences/ICHB/recznie/d2_24VI2015.txt", sep=";")
recznie_3 <- read.csv("/mnt/Data/sciences/ICHB/recznie/d3_24VI2015.txt", sep=";")
results <- read.csv("/mnt/Data/sciences/ICHB/Results.csv", header=T, row.names = 1)


## table
table <- NULL
for(file_name in file_list) {
  file_name <- gsub(".tif", "", file_name)
  table <- rbind(table, t(as.data.frame(strsplit(file_name, "_"))))
}

rownames(table) <- NULL
table <- cbind(as.data.frame(file_list), table)
colnames(table) <- c("nazwa_pliku", "data", "numer_doswiadczenia", "szczep_agrobacterium", "wiek_kultury_[dni]",
                     "czas_sonikacji_[s]", "czas_inkubacji_[h]", "powtorzenie")
table$nazwa_pliku <- as.character(table$nazwa_pliku)


## results = measurements
names(results)[1] <- "nazwa_pliku"


## recznie
table$recznie <- NA

for(i in 1:nrow(recznie_2)) {
  row <- as.character(recznie_2$proba[i])
  table[grepl(row, gsub("_", "", table$nazwa_pliku)) &
          table$data == "24VI15" & table$numer_doswiadczenia == "2",]$recznie <- recznie_2$pomiar_.0.5.[i]
}


for(i in 1:nrow(recznie_3)) {
  row <- as.character(recznie_3$proba[i])
  table[grepl(row, gsub("_", "", table$nazwa_pliku)) &
          table$data == "24VI15" & table$numer_doswiadczenia == "3",]$recznie <- recznie_3$pomiar_.0.5.[i]
}

## MERGE
data <- merge(table, results, by="nazwa_pliku")

## 



