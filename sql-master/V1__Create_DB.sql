-- evolve-tx-off

-- Creates a new database, dropping an existing one. Use with care!

USE [master]
GO

IF DB_ID (N'${database-name}') IS NOT NULL
    DROP DATABASE [${database-name}];
GO

CREATE DATABASE [${database-name}];
GO

-- CREATE DATABASE [${database-name}]
--  CONTAINMENT = NONE
--  ON  PRIMARY 
-- ( NAME = N'${database-name}', FILENAME = N'/var/opt/mssql/data/${database-name}.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
--  LOG ON 
-- ( NAME = N'${database-name}_log', FILENAME = N'/var/opt/mssql/data/${database-name}_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
--  WITH CATALOG_COLLATION = DATABASE_DEFAULT
-- GO

-- IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
-- begin
-- EXEC [${database-name}].[dbo].[sp_fulltext_database] @action = 'enable'
-- end
-- GO

-- ALTER DATABASE [${database-name}] SET ANSI_NULL_DEFAULT OFF 
-- GO

-- ALTER DATABASE [${database-name}] SET ANSI_NULLS OFF 
-- GO

-- ALTER DATABASE [${database-name}] SET ANSI_PADDING OFF 
-- GO

-- ALTER DATABASE [${database-name}] SET ANSI_WARNINGS OFF 
-- GO

-- ALTER DATABASE [${database-name}] SET ARITHABORT OFF 
-- GO

-- ALTER DATABASE [${database-name}] SET AUTO_CLOSE OFF 
-- GO

-- ALTER DATABASE [${database-name}] SET AUTO_SHRINK OFF 
-- GO

-- ALTER DATABASE [${database-name}] SET AUTO_UPDATE_STATISTICS ON 
-- GO

-- ALTER DATABASE [${database-name}] SET CURSOR_CLOSE_ON_COMMIT OFF 
-- GO

-- ALTER DATABASE [${database-name}] SET CURSOR_DEFAULT  GLOBAL 
-- GO

-- ALTER DATABASE [${database-name}] SET CONCAT_NULL_YIELDS_NULL OFF 
-- GO

-- ALTER DATABASE [${database-name}] SET NUMERIC_ROUNDABORT OFF 
-- GO

-- ALTER DATABASE [${database-name}] SET QUOTED_IDENTIFIER OFF 
-- GO

-- ALTER DATABASE [${database-name}] SET RECURSIVE_TRIGGERS OFF 
-- GO

-- ALTER DATABASE [${database-name}] SET  DISABLE_BROKER 
-- GO

-- ALTER DATABASE [${database-name}] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
-- GO

-- ALTER DATABASE [${database-name}] SET DATE_CORRELATION_OPTIMIZATION OFF 
-- GO

-- ALTER DATABASE [${database-name}] SET TRUSTWORTHY OFF 
-- GO

-- ALTER DATABASE [${database-name}] SET ALLOW_SNAPSHOT_ISOLATION OFF 
-- GO

-- ALTER DATABASE [${database-name}] SET PARAMETERIZATION SIMPLE 
-- GO

-- ALTER DATABASE [${database-name}] SET READ_COMMITTED_SNAPSHOT OFF 
-- GO

-- ALTER DATABASE [${database-name}] SET HONOR_BROKER_PRIORITY OFF 
-- GO

-- ALTER DATABASE [${database-name}] SET RECOVERY FULL 
-- GO

-- ALTER DATABASE [${database-name}] SET  MULTI_USER 
-- GO

-- ALTER DATABASE [${database-name}] SET PAGE_VERIFY CHECKSUM  
-- GO

-- ALTER DATABASE [${database-name}] SET DB_CHAINING OFF 
-- GO

-- ALTER DATABASE [${database-name}] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
-- GO

-- ALTER DATABASE [${database-name}] SET TARGET_RECOVERY_TIME = 60 SECONDS 
-- GO

-- ALTER DATABASE [${database-name}] SET DELAYED_DURABILITY = DISABLED 
-- GO

-- ALTER DATABASE [${database-name}] SET ACCELERATED_DATABASE_RECOVERY = OFF  
-- GO

-- ALTER DATABASE [${database-name}] SET QUERY_STORE = OFF
-- GO

-- ALTER DATABASE [${database-name}] SET  READ_WRITE 
-- GO
