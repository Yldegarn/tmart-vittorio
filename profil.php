<?php 

include('base.php');
session_start();

$sql = "select * from cadeau";
$result = mysqli_query($connection, $sql);

$sql2 = "select * from souhait";
$result2 = mysqli_query($connection, $sql2);
$row2=mysqli_fetch_assoc($result2);

$sql1 = "select bonPoints from enfant where IdEnfant='%s' ";
$sql1=sprintf($sql1,$_SESSION['IdEnfant']);
$result1 = mysqli_query($connection, $sql1);
$row1 = mysqli_fetch_assoc($result1);


 ?>
<!DOCTYPE html>
<html lang="en">
  <head>
 <title> Acceuil</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

  </head>
  <body>

<div class="container-fluid" style="background-image: url('image/fnd.jpg');">
      <!-- menu -->

    <div class="col-md-12 bg">


        <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-dangerous border-bottom shadow-sm">
  <h5 class="my-0 mr-md-auto font-weight-normal">Bienvenu à vous,nous vous avons attribué : <?php echo $row1['bonPoints'] ;?> points.</h5>
  <nav class="my-2 my-md-0 mr-md-3">
   <a class="btn btn-outline-info" href="profil.php">Home</a>
   <a class="btn btn-outline-info" href="liste_souhait.php">Liste souhait</a>
    <a class="btn btn-outline-info" href="logout.php">Deconnecter</a>
  </nav>
</div>
    </div>  





      <!-- fin menu -->

      <!-- anatiny -->

    <div class="col-md-12">
      <img src="image/arriere_plan.jpg" class="img-fluid" alt="Responsive image">
    </div>  

 <div class="col-md-12">
<div class="row">

       <?php while ($row = mysqli_fetch_assoc($result)) { ?> 
         
                              <div class="col-md-3 col-sm-6 ">
                                        <div class="card" style="width: 18rem;">
                                                  <img src="image/<?php echo $row['image']; ?>" class="card-img-top" alt="..." height="200">
                                                  <div class="card-body">
                                                    <h5 class="card-title">Nom Cadeau:<?php echo $row['NomCadeau']; ?></h5>
                                                        <p class="card-text">Categorie:<?php echo $row['Categories']; ?></p>
                                                        <p class="card-text">points:<?php echo $row['Points']; ?></p>
                                  <form action="ajout_souhait.php?IdCadeau=<?php echo $row['IdCadeau'] ?>" method="post">

                                                        <p class="card-text">Quantite: 
                                                                                <select name="cmd">
                                                                                    <option value="1">1</option>
                                                                                    <option value="2">2</option>
                                                                                    <option value="3">3</option>
                                                                                </select>
                                                                                
                                                        </p>
                                                        <?php if($row1['bonPoints']>$row['Points']) {?>
                                                             <button type="submit" class="btn btn-primary">Ajouter souhait</button>
                                                         <?php } ?> 


                                  </form>
                                                       
                                                  </div>
                                        </div>
                              </div>
        <?php } ?> 



</div>
</div>



      <!--end anatiny -->





 
          <div class="row">
                  
                  <div class="col-md-12" style="background-image: url('image/fond2.jpg');">
                   
                   
                    
                      <div><h1 style="color: black;text-align: center;" ><img src="image/pn.jpg" width="90" height="90" style="border-radius: 30px;">Joyeux Noel</h1></div>
                  
                  </div>
                      <div class="col-md-12">
                                  
                      </div>

          </div>
    
       



</body>
</html>
