#' downloads configures connect to database
f1db_connect <- function(collect_tables = FALSE){

    # Load packages, install if not available
    install_load_packages("DBI", "dm", "duckdb",
                          "tidyverse", "lubridate",
                          "rlang", "datamodelr")

    # Database connection
    if(file.exists("f1_db.duckdb")){
        f1db_cleardb()
    }
    con_dm <- createF1db()
    con <- con_dm[[1]]
    dm_obj <<- con_dm[[2]]

    # Save all tables as global variable
    # tbl's with the same name
    if(collect_tables == TRUE){
        f1db_collect_tables(con)
    }

    return(con)

}
