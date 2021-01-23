<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap 4 Website Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="https://smtpjs.com/v3/smtp.js"></script>
	<script src="4.3.1.js"></script>

</head>
<body>

<div class="jumbotron text-center" style="margin-bottom:0">
  <img src="img1/logo.jpeg" class="rounded float-left" alt="photo patient">
  <h1>Covid-eHealth</h1>
  <p><i>Le formulaire de traitement à domicile du patient</i></p> 
</div>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <a class="navbar-brand" href="#">home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="#">identification</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Gravité</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Impression</a>
      </li>    
    </ul>
  </div>  
</nav>

<div class="container" style="margin-top:30px">
  <div class="row">
      <div class="col-sm-2">
           <img src="img1/pat1.jpg" class="rounded float-left" alt="photo patient">
      </div>
    <div class="col-sm-3">
      <h2><a href="4.3.1traitementM.php?view">Données du patient</a></h2>
      <h5>Photo du patient</h5>
      
       
      <br>
      
         <?php 
               // Geting data from table
               session_start();
               $conn = mysqli_connect("localhost", "root", "","covid-ehealth");
               if(isset($_GET['view'])){
               $idPatient=$_SESSION["idM"];
               $sql = "SELECT * FROM patient WHERE ID='$idPatient'";
               $run_query = mysqli_query($conn,$sql);
               while($row=mysqli_fetch_array($run_query)){
                       $nom = $row['nom'];
                       $prenom = $row['prenom'];
                       $cni = $row['CNI'];
                       $dateInscrip = $row['dateInscription'];
                       $tele = $row['telephone'];
                       $mail = $row['email'];
                       echo "
                       <ul>
                            <li> ID patient : $idPatient</li>
                            <li> nom : $nom</li>
                            <li> prenom : $prenom</li>
                            <li>CNI : $cni</li>
                            <li>date d'inscription : $dateInscrip</li>
                            <li> téléphone : $tele</li>
                            <li > email : $mail</li>
                     
                       </ul>
                       ";
              
             }
             }
         ?>
      
      
    </div>
    <div class="col-sm-7">
      <h2>Le traitement à domicile pour un patient stable  :</h2>
      <br>
      <p>
        <ul>
           <li>
            <b>1//</b>Azix 500mg comprimé
             <dl>
                *1 cp  1er jour
                *1/2 cp pendant 6 jours
             </dl>
             <dl>
                *1/2 cp pendant 6 jours
             </dl>
           </li>
           <li>
            <b>2//</b> vitamin c  100g
             <dl>
                1 cp/jour le matin 
             </dl>
             
           </li>
           <li>
            <b>3//</b> Zinauki
             <dl>
                1 cp/jour le soir
             </dl> 
           </li>
           <li>
            <b>4//</b> Doliprane 1g
             <dl>
                1 cp*3/jour
             </dl> 
           </li>
           <li>
            <b>5//</b> Plaquenil 200
             <dl>
                1 cp*3/ jour   pdt 10jrs
             </dl> 
           </li>
        </ul>
        <br>
          </p>
          <form method="post">
            <input type="button"  class="btn btn-success btn-lg" value="Envoi d'email au patient " onclick="sendEmail()"/>
            <button href="#" class="btn btn-primary btn-lg" onclick="window.print()">Impression du traitement</button>
          </form>  
          
          
    </div>
</div> 
</div>
<script src="4.3.1.js"></script>
</body>
<br>
<br>
<footer class="page-footer font-small unique-color-dark">

    <div style="background-color:#212529;">
      <div class="container">
  
        <!-- Grid row-->
        <div class="row py-4 d-flex align-items-center">
  
          <!-- Grid column -->
          <div class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0">
            <h5 class="mb-0">Get connected with us on social networks!</h5>
          </div>
          <!-- Grid column -->
  
          <!-- Grid column -->
          <div class="col-md-6 col-lg-7 text-center text-md-right">
  
            <!-- Facebook -->
            <a class="fb-ic">
              <i class="fab fa-facebook-f white-text mr-4"> </i>
            </a>
            <!-- Twitter -->
            <a class="tw-ic">
              <i class="fab fa-twitter white-text mr-4"> </i>
            </a>
            <!-- Google +-->
            <a class="gplus-ic">
              <i class="fab fa-google-plus-g white-text mr-4"> </i>
            </a>
            <!--Linkedin -->
            <a class="li-ic">
              <i class="fab fa-linkedin-in white-text mr-4"> </i>
            </a>
            <!--Instagram-->
            <a class="ins-ic">
              <i class="fab fa-instagram white-text"> </i>
            </a>
  
          </div>
          <!-- Grid column -->
  
        </div>
        <!-- Grid row-->
  
      </div>
    </div>
  
    <!-- Footer Links -->
    <div class="container text-center text-md-left mt-5">
  
      <!-- Grid row -->
      <div class="row mt-3">
  
        <!-- Grid column -->
        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
  
          <!-- Content -->
          <h6 class="text-uppercase font-weight-bold">App goal</h6>
          <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
          <p>l'application <b> Covid-eHealth</b> vise à gestionner les patients atteints par le covid 19 au sein d'un hopital  </p>
  
        </div>
        <!-- Grid column -->
  
        <!-- Grid column -->
        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
  
          <!-- Links -->
          <h6 class="text-uppercase font-weight-bold">Products</h6>
          <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
          <p>
            <a href="#!">MDBootstrap</a>
          </p>
          <p>
            <a href="#!">MDWordPress</a>
          </p>
          <p>
            <a href="#!">BrandFlow</a>
          </p>
          <p>
            <a href="#!">Bootstrap Angular</a>
          </p>
  
        </div>
        <!-- Grid column -->
  
        <!-- Grid column -->
        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
  
          <!-- Links -->
          <h6 class="text-uppercase font-weight-bold">Useful links</h6>
          <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
          <p>
            <a href="#!">Your Account</a>
          </p>
          <p>
            <a href="#!">Become an Affiliate</a>
          </p>
          <p>
            <a href="#!">Shipping Rates</a>
          </p>
          <p>
            <a href="#!">Help</a>
          </p>
  
        </div>
        <!-- Grid column -->
  
        <!-- Grid column -->
        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
  
          <!-- Links -->
          <h6 class="text-uppercase font-weight-bold">Contact</h6>
          <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
          <p>
            <i class="fas fa-home mr-3"></i> 32, Angle Avenue Oqba et Fal ouled oumeir, Rabat</p>
          <p>
            <i class="fas fa-envelope mr-3"></i> Covid-eHealth@gmail.com</p>
          <p>
            <i class="fas fa-phone mr-3"></i> 06 61 45 76 23</p>
          <p>
            
        </div>
        <!-- Grid column -->
  
      </div>
      <!-- Grid row -->
  
    </div>
    <!-- Footer Links -->
  
    
  
  </footer>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</html>
</html>