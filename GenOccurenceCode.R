text_v <- scan("corpus_files_ru/FULLTEXT.txt", what = "character", sep = "\n") #insert txt file
novel_lines_v <- text_v[1:length(text_v)] 
novel_v <- paste(novel_lines_v, collapse = " ") 
novel_lower_v <- tolower(novel_v)
corpus_words_l <- strsplit(novel_lower_v, "\\W")
corpus_word_v <- unlist(corpus_words_l)
not_blanks_v <- which(corpus_word_v != "")
corpus_word_v <- corpus_word_v[not_blanks_v]
length(text_v)
n_time_v <- seq(from = 1, to = length(corpus_word_v))
stalins_v <- grep("^сталин$|^сталина$|^сталину$|^сталине$|^сталиным$", corpus_word_v)
stalins_v
s_count_v <- rep(NA, times = length(n_time_v))
s_count_v[stalins_v] <- 1
plot(
  s_count_v,
  main = "Dispersion Plot of 'Сталин' in Text Corpus",
  xlab = "Corpus Time",
  ylab = "Сталин",
  type = "h",
  ylim = c(0, 1), yaxt = 'n'
)
