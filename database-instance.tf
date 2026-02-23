resource "google_sql_database_instance" "instance" {
    name ="mysql-db"
    region ="us-central1"
    database_version = "MYSQL_8_0" 
    settings {
        tier = "db-custom-1-3840"
      
    }
  

    deletion_protection = false
}

resource "google_sql_database_instance" "mysql_instance_two" {
  name             = "mysql-db-2"
  region           = "us-east1"          
  database_version = "MYSQL_8_0"

  settings {
    tier = "db-custom-1-3840"
  }

  deletion_protection = false
}

resource "google_sql_database_instance" "postgres_instance" {
  name             = "postgres-db"
  region           = "europe-west1"
  database_version = "POSTGRES_15"

  settings {
    tier = "db-custom-1-3840"
  }

  deletion_protection = false
}