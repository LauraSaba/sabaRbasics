splitpick <-
function(x,split,occur) unlist(lapply(strsplit(x,split=split,fixed=TRUE),function(a) a[occur]))
