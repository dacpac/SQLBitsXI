﻿/*
Do not change the database path or name variables.
It will be properly coded for build and deployment
This is using sqlcmd variable substitution
*/
ALTER DATABASE [$(DatabaseName)]
    ADD FILE
    (
        NAME = [NonClusteredIndexesFile],
        FILENAME = '$(DefaultDataPath)$(DatabaseName)_NonClusteredIndexesData.ndf', 
        SIZE = 50 MB, 
        MAXSIZE = UNLIMITED, 
        FILEGROWTH = 100 MB
    )
    TO FILEGROUP [NONCLUSTEREDINDEXES]
    
