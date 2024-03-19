library(dslabs)
str(murders)
head(murders,10)

murders2 <- murders %>% mutate(abb = reorder(abb, rate))

murders3 <- murders %>% arrange(rate)

murders4 <- murders %>% arrange(rate) %>% mutate(abb = reorder(abb,rate))

murders2 %>% ggplot(aes(abb,rate)) + geom_bar(stat = "identity") + coord_flip()

murders %>% ggplot(aes(abb,rate)) + geom_bar(stat = "identity") + coord_flip()

murders3 %>% ggplot(aes(abb,rate)) + geom_bar(stat = "identity") + coord_flip()

murders4 %>% ggplot(aes(abb,rate)) + geom_bar(stat = "identity") + coord_flip()


head(murders)
head(murders2)
head(murders3)
head(murders4)


