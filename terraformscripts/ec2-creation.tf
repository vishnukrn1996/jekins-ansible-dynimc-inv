provider "aws"{
   region  = "ap-south-1" 
   
}

resource "aws_instance" "AWSEC2Instance"{
     count   = 1
     ami     =  "ami-05c8ca4485f8b138a"
     instance_type = "t2.micro"
     security_groups = ["launch-wizard-43"]
     key_name        = "recentkeypair"
     tags = {
        Name = "hostserver1"
     }
}

