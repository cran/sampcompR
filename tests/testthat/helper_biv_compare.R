
local_test_data_biv1 <- function(env = parent.frame(), remove_nas="all") {
  
  if (!requireNamespace("wooldridge", quietly = TRUE))
    install.packages("wooldridge")
  
  black<<-wooldridge::card[wooldridge::card$black==1,]
  north<<-wooldridge::card[wooldridge::card$south==0,]
  white<<-wooldridge::card[wooldridge::card$black==0,]
  south<<-wooldridge::card[wooldridge::card$south==1,]
  
  
  set.seed(1)
  
  ### analyze data ###
  biv_data<-biv_compare(dfs = c("north","black"),
                        benchmarks = c("south","white"),
                        variables = c("age","educ","wage","IQ"),
                        data=T,
                        weight = c("weight",NA),
                        id = c("id",NA),
                        weight_bench = c("weight",NA),
                        id_bench = c("id",NA), 
                        remove_nas = remove_nas)
  
  biv_data
}








local_test_data_biv2 <- function(env = parent.frame()) {
  
  if (!requireNamespace("wooldridge", quietly = TRUE))
    install.packages("wooldridge") 
  
  black<<-wooldridge::card[wooldridge::card$black==1,]
  north<<-wooldridge::card[wooldridge::card$south==0,]
  white<<-wooldridge::card[wooldridge::card$black==0,]
  south<<-wooldridge::card[wooldridge::card$south==1,]
  
  
  set.seed(1)
  
  ### analyze data ###
  biv_data<-biv_compare(dfs = c("north","black"),
                        benchmarks = c("south","white"),
                        variables = c("age","educ","wage","IQ"),
                        data=T,
                        weight = NULL,
                        id = NULL,
                        weight_bench = NULL,
                        id_bench = NULL,
                        p_adjust = "bonferroni", 
                        remove_nas = "pairwise")
  
  biv_data
}


biv_compare_table(local_test_data_biv2(),type="diff",comparison_number=1)







