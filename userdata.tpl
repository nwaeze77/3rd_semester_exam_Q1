#! usr/bin/bash
sudo apt update -y
sudo apt upgrade -y
sudo apt install nginx -y
sudo systemctl enable nginx.service
sudo systemctl start nginx.service
echo "<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Uchenwanne.live</title>
<style>

    body {
      background-color: #faf2e4;
      margin: 0 20%;
      font-family: sans-serif;
      }
    
    h1 {
      text-align: center;
      font-family: serif;
      font-weight: normal;
      text-transform: uppercase;
      border-bottom: 1px solid #dca557;
      margin-top: 20px;
    }

    p {
        text-align: center;
      font-family: serif;
      font-weight: normal;
      text-transform: uppercase;
      border-bottom: 1px solid #dca757;
      margin-top: 20px;
    }
    
    h2 {
      color: #7d3cd1;
      font-size: 1em;
    }      

    h3 {
        color:#8e57dc;
        font-size: small;
    }
    p {
        font-size: small;

    }
</style>
</head>
<body>
<h1><img src="Uchenwanne.jpg" alt="Uchenwanne"><br><Uchenwanne class="live"></Uchenwanne></h1>
<h1>Uchenna Onuorah</h1>
<p>Welcome to my world.!!! I am an up coming Cloud Engineer.</p>

<h2>Skills</h2>
<p>I have Skill in the following</p>
    <ol>
        <li>Ansible</li>
        <li>Terraform</li>
        <li>Docker</li>
        <li>Kubernetics</li>
      </ol>

<h3>My Domain name is Uchenwanne.live</h3>
<p>kinldy click on the links below to view</p>
<p><a href="http://www.Uchenwanne.live/">Domain name</a></p>
<p><a href="http://github.com/nwaeze77">Github</a></p>
</body>
</html>" > /var/www/html/index.html