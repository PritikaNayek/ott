<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>OTT login page</title>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <style>
        * {
            margin:0;
            padding:0;
            box-sizing: border-box;
            font-family: "Poppins", sans-serif;
        }
        body{
            display:flex;
            justify-content:center;
            align-items:center;
            min-height:100vh;
            background: url('background.jpeg') no-repeat;
            background-size:cover;
            background-position: center;
        }
        .wrapper{
            width:420px;
            color: #fff;
            background-color:rgb(0,0,0,0.5) ;
            border-radius: 10px;
            padding:30px 40px;
        }
        .wrapper h1{
            font-size: 36px;
            text-align:center;
        }
        .wrapper .input-box{
            width:100%;
            height:50px;
            background:rgb(195, 164, 217);
            position: relative;
            margin: 30px 0;
        }
        .input-box input{
            width: 100%;
            height: 100%;
            background: transparent;
            border:none;
            outline:none;
            border:2px solid rgba(255,255,255, 0.2);
            border-radius:40px;
            font-size : 16px;
            color:#9a5555;
            padding:20px 45px 20px 20px;
        }
        .input-box input::placeholder {
            color:#360606;
        }
        .input-box i {
            position:absolute;
            right:20px;
            top:50%;
            transform : translateY(-50%);
            font-size:20px;
        }
        .wrapper .remember-forgot{
            display:flex;
            justify-content:space-between;
            font-size:14.5px;
            margin:-15px 0 15px;
        }
        .remember-forgot label input{
            accent-color:#fff;
            margin-right: 3px;
        }
        .remember-forgot a{
            color:#a8af80;
            text-decoration:none;
        }
        .remember-forgot a:hover{
            text-decoration: underline;
        }
        .wrapper .btn{
            width: 100%;
            height: 45px;
            background: transparent;
            border:none;
            outline:none;
            border:0 0 10px rgba(0,0,0, 0.2);
            cursor:pointer;
            font-size:16px;
            color:#333;
            font-weight:600;
        }
        .wrapper .register-link{
            font-size:14.5px;
            text-align:center;
            margin:20px 0 15px;
        }
        .register-link p a{
            color:#fff;
            text-decoration: none;
            font-weight:600;
        }
        .btn btn-primary{
            width: 50%;
            height: 50%;
            border: black;
            color:#6e5959;
    
        }
        .btn btn-primary :hover{
            
            color:#98ab58;
    
        }


    </style>
    </head>
    <body>
        <div class="wrapper">
            <form action="loginproc">
                <h1>Login</h1>
                <h3>${msg}</h3>
                <div class="input-box">
                    <input type="text" placeholder="Email" name="uemail" required>
                </div>
                <div class="input-box">
                    <input type="password" placeholder="Password" name="upass" required>
                    <i class='bx bxs-lock-alt'></i>
                    
                </div>
                
                
                <section>
                <div class="remember-forgot">
                    <label><input type="checkbox">Remember me</label>
                    <a href="#">Forgot password?</a>
                </div>

                <div class="register-link">
                    <p>Don't have an account?<a href="signup">Register</a></p>
                </div>
                <div>
                    <input type="submit" value="Login">
                </div>
                </section>
            </form>
        </div>
    </body>
</html>