<%String video=request.getParameter("msg"); %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css">
    <title>Video Streaming Page</title>
  </head>
  <style>
    #header{
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 20px 80px;
    background: #E3E6F3;
    box-shadow: 0 5px 15px rgba(0,0,0,0.06);
}

#navbar {
    display: flex;
    align-items : center;
    justify-content: center;
}

#navbar li{
    list-style: none;
    padding: 0 20px;
}
    body {
  background: #eddddd !important;
}

    body .card-body{
        max-width: 1100px;
    }
    
  </style>

<body class="container">
  <section id="header">
    <a href="#"><img src="ott_mainlogo.jpg" width="100" height="50" class="logo" alt=""></a>

    <div>
        <ul id="navbar">
            <li><a href="index2">Home</a></li>
            <li><a href="movielistafter"> Movies </a></li>
            
        </ul>
    </div>

        
    <!-- <div class="card-body">
        <h3 class="card-title">GODFATHER</h3>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti nemo corporis quia ullam neque soluta ea voluptatum optio, quis nihil perferendis repellendus repellat perspiciatis delectus sint molestias totam. Quis, ratione.
      </div> 
      <div class="course-col">
        <h3>Intermediate</h3>
        <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eius pariatpsum dolor sit, amet consectetur
            adipisicing elit. Eius pariatur recusandaur recusandae</p> -->
        
    
  </section>
  <div>
    <video width="90%" height ="500px" controls autoplay>
        <source src=<%="videos/"+video%> type="video/mp4">
    </video>
    </div>
    </body>
</body>