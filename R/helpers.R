
#' Returns dm object for f1db database
f1db_get_dm <- function(){
    return(dm_obj)
}

#' Disconnects from database
f1db_disconnect <- function(con, shutdown = TRUE){
    DBI::dbDisconnect(con, shutdown = shutdown)
}


#' Reconnects to database, currently does not work
f1db_reconnect <- function(){
    con <- DBI::dbConnect(duckdb("f1_db.duckdb", read_only = TRUE))
    return(con)

}


#' Deletes database files of the exist
f1db_cleardb <- function(){
    if(file.exists("f1_db.duckdb")){
        file.remove("f1_db.duckdb")
    }
    if(file.exists("f1_db.duckdb.wal")){
        file.remove("f1_db.duckdb.wal")
    }

}
