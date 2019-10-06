#
# This is a Plumber API. You can run the API by clicking
# the 'Run API' button above.
#
# Find out more about building APIs with Plumber here:
#
#    https://www.rplumber.io/
#

library(plumber)
#* @serializer json list(digits = 12)

#* Print to log
#* @filter logger
function(req){
  #browser()

  cat("\n", as.character(Sys.time()),
      "\n", req$REQUEST_METHOD, req$PATH_INFO,
      "\n", req$HTTP_USER_AGENT, "@", req$REMOTE_ADDR)

  plumber::forward()

}



#* @apiTitle Plumber Example API

#* Echo back the input
#* @param msg The message to echo
#* @get /echo
function(msg = "") {
    list(msg = paste0("The message is: '", msg, "'"))
}

#* Plot a histogram
#* @png
#* @get /plot
function() {
    rand <- rnorm(100)
    hist(rand)
}

#* Return the sum of two numbers
#* @param a The first number to add
#* @param b The second number to add
#* @post /sum

function(a, b) {
    as.numeric(a) + as.numeric(b)
}
