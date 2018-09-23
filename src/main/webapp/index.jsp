<!DOCTYPE html>
<html>
  <head>
    <title>ImcJsp</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="assets/bootstrap.min.css">
    <link rel="stylesheet" href="assets/style.css">
  </head>
      <body>
        <div class="container-fluid" > 
        <div class="col-md-3 col-md-offset-4">
          <div class="panel panel-default">
          <div id="inner">
            <div class="panel-heading" align="center">
            <h1>Calculo de IMC</h1>
            </div>
            <div class="panel-body">  
              <form action="imc.jsp" >
                <label for="peso">Peso</label>
                <div class="form-group">
                  <input type="text" name ="peso" class="form-control" placeholder="Digite seu peso"/>  <br>
                </div> 
                <label for="altura">Altura</label>
                <div class="form-group">
                  <input type="text" name ="altura"   class="form-control" placeholder="Digite sua Altura"/> <br>
                </div>
                <label for="sexo">Sexo</label>
                <div class="form-group">
                <select name="sexo" id="select">
                    <option value="fem">Feminino</option>
                    <option value="mas">Masculino</option>
                </select>
                </div>
                <div class="form-group">
                  <input type="submit" value ="Calcular" class ="btn btn-success" />
                </div> 
              </form>  
            </div>
          </div>
          </div>
        </div>
        </div>
     </body>
</html>