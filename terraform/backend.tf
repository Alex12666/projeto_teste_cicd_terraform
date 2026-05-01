terraform { 
   backend "s3" { 
     bucket = "s3-buket-s3"  
     key     = "terraform.tfstate" 
     region = "us-east-2" 
   } 
 }
