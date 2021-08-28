provider "aws" {
	region = "ca-central-1"
}

resource "aws_instance" "web" {
	ami = "ami-02f84cf47c23f1769"
	instance_type = "t2.micro"
	vpc_security_group_ids = [aws_security_group.web.id]
	user_data = <<EOF
#!bin/bash
yum -y update
yum -y install httpd
MYIP=`curl http://169.254.169.254/latest/meta-data/instance-id`
echo "<h2> $MYIP <h2>" > /var/www/html/index.html
service httpd start
chkconfig httpd on
EOF
  tags = {
	Name = "Webserver"
	}
  }


resource "aws_security_group" "web" {
	name = "webserver"
	description = "allow ssh and http"

	ingress { 
				from_port = 80
                to_port = 80
                protocol = "tcp"
                cidr_blocks = ["0.0.0.0/0"]
	}
	ingress {
                from_port = 443
                to_port = 443
                protocol = "tcp"
                cidr_blocks = ["0.0.0.0/0"]
        }
	egress {
		from_port = 0
		to_port = 0
		protocol = "-1"
                cidr_blocks = ["0.0.0.0/0"]
	}
}
	
