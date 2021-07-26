#!/bin/bash
#
# # # AustinWay/Python-Flask-Project-Template-Generator.git
#
#TODO : 1. Convert this bash file to python 2. Extend to allow specification of pages to be generated 3. Extend to allow selection of "normal" or "hamburger" menu

echo "Enter in name of Flask App: "
read flask_app_name
echo "Creating $flask_app_name"

# creating folders
echo "Creating Folders"
mkdir $flask_app_name
cd $flask_app_name
mkdir templates 
mkdir static
cd static
mkdir css
mkdir images 
mkdir js 

# creating Static files 
echo "Creating Static files"
cd css 
touch style.css 
cat > style.css << EOF
/* Add custom CSS to this file. This CSS template is from Bootstrap Starter Template 5.0.2 */

.icon-list {
  padding-left: 0;
  list-style: none;
}
.icon-list li {
  display: flex;
  align-items: flex-start;
  margin-bottom: .25rem;
}
.icon-list li::before {
  display: block;
  flex-shrink: 0;
  width: 1.5em;
  height: 1.5em;
  margin-right: .5rem;
  content: "";
  background: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='%23212529' viewBox='0 0 16 16'%3E%3Cpath d='M8 0a8 8 0 1 1 0 16A8 8 0 0 1 8 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z'/%3E%3C/svg%3E") no-repeat center center / 100% auto;
}

EOF

cd ..
cd js 

touch script.js 
cat > script.js << EOF
// Add custom JavaScript to this file

// Get year for footer
document.getElementById("year").innerHTML = new Date().getFullYear();

EOF

cd ..
cd ..
cd templates 
echo "Creating Template Files"

touch layout.html
cat > layout.html << EOF

<!doctype html>
  <html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.84.0">
    <title>{% block title %}{% endblock %}</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/starter-template/">

    
    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
    .bd-placeholder-img {
      font-size: 1.125rem;
      text-anchor: middle;
      -webkit-user-select: none;
      -moz-user-select: none;
      user-select: none;
    }

    @media (min-width: 768px) {
      .bd-placeholder-img-lg {
        font-size: 3.5rem;
      }
    }
  </style>

  
  <!-- Custom styles for this template -->
  <link href="starter-template.css" rel="stylesheet">
  <link rel="stylesheet" href="{{ url_for('static', filename='css/style.css') }}" />
</head>

<!-- Body -->

<body>

  <!-- Navbar -->

  <header>
    <nav class="navbar navbar-light bg-light">
      <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#Toggler" 
        aria-controls="Toggler" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <a class="navbar-brand" href="#">DGL</a>
      <div class="collapse navbar-collapse" id="Toggler">
        <ul class="nav navbar-nav">
          <li><a href="index.html">Home</a></li>
          <li><a href="about.html">About</a></li>
          <li><a href="contact.html">Contact</a></li>
        </ul>
      </div>
    </div>
  </nav>
</header>


<div class="col-lg-8 mx-auto p-3 py-md-5">
  <header class="d-flex align-items-center pb-3 mb-5 border-bottom">
    <a href="/" class="d-flex align-items-center text-dark text-decoration-none">
      <svg xmlns="http://www.w3.org/2000/svg" width="40" height="32" class="me-2" viewBox="0 0 118 94" role="img"><title>Bootstrap</title><path fill-rule="evenodd" clip-rule="evenodd" d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z" fill="currentColor"></path></svg>
      <span class="fs-4">Starter template</span>
    </a>
  </header>
  
  <!-- Main -->
  <main>
    <!-- Flask Body Block -->
    <div class="container-fluid">

      {% block body %} {% endblock %}
      
    </div>
    <h1>Get started with Bootstrap</h1>
    <p class="fs-5 col-md-8">Quickly and easily get started with Bootstrap's compiled, production-ready files with this barebones example featuring some basic HTML and helpful links. Download all our examples to get started.</p>

    <div class="mb-5">
      <a href="../examples/" class="btn btn-primary btn-lg px-4">Download examples</a>
    </div>

    <hr class="col-3 col-md-2 mb-5">

    <div class="row g-5">
      <div class="col-md-6">
        <h2>Starter projects</h2>
        <p>Ready to beyond the starter template? Check out these open source projects that you can quickly duplicate to a new GitHub repository.</p>
        <ul class="icon-list">
          <li><a href="https://github.com/twbs/bootstrap-npm-starter" rel="noopener" target="_blank">Bootstrap npm starter</a></li>
          <li class="text-muted">Bootstrap Parcel starter (coming soon!)</li>
        </ul>
      </div>

      <div class="col-md-6">
        <h2>Guides</h2>
        <p>Read more detailed instructions and documentation on using or contributing to Bootstrap.</p>
        <ul class="icon-list">
          <li><a href="../getting-started/introduction/">Bootstrap quick start guide</a></li>
          <li><a href="../getting-started/webpack/">Bootstrap Webpack guide</a></li>
          <li><a href="../getting-started/parcel/">Bootstrap Parcel guide</a></li>
          <li><a href="../getting-started/build-tools/">Contributing to Bootstrap</a></li>
        </ul>
      </div>
    </div>
  </main>

  <!-- Footer -->

  <footer class="border-top footer text-muted">
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm text-center">
          Dunaway Group LLC © <span id="year"></span>
        </div>
      </div>
    </div>
  </footer>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="{{ url_for('static', filename='js/script.js') }}"></script>

</body>
</html>

EOF

touch index.html
cat > index.html << EOF

{% extends 'layout.html' %}

{% block title %}Home{% endblock %}

{% block body %}
<h1 class="display-2 text-center">Welcome</h1>
<p class="text-center">Flask Template was generated by a script created by Austin Way</p> 

<div class="container">
  <div class="row">
    <div class="col text-center">
      <a class="btn btn-primary" href="https://flask.palletsprojects.com/en/1.1.x/" target="_blank" role="button">Learn Flask</a>
      <a class="btn btn-primary" href="https://v5.getbootstrap.com/docs/5.0/getting-started/introduction/" target="_blank" role="button">Learn Bootstrap 5</a>
    </div>
  </div>
</div>

{% endblock %}

EOF

cd ..

touch app.py 
cat > app.py << EOF

#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy
app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

EOF

echo "Running Flask App"
flask run
