<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<html lang="esS">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css"/>
 

<title>Formato Rai</title>
<style>
	.modal-header, h4, .close {
		background-color: #286090;
		color: white !important;
		text-align: center;
		font-size: 20px;
	}
	.help-block{
	 color: red;
	}
	
	.form-group.has-error .form-control-label {
	  color: red;
	}
	
	.form-group.has-error .form-control {
	  border: 1px solid red;
	  box-shadow: 0 0 0 0.2rem rgba(250, 16, 0, 0.18);
	}
	
	
	.dataTables_length{
	 display: none;
	}
	.dataTables_filter{
		text-align: right;
	}
	.dataTables_info{
	 display: none;
	}
	.dataTables_paginate{
		cursor: pointer;
	}
</style> 
</head>
<body>


<c:if test="${sessionScope.MENSAJE!=null}">
<div class="alert alert-warning alert-dismissible fade show" role="alert" id="success-alert">
  <strong>Sistema:</strong> ${sessionScope.MENSAJE}
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
</c:if>
<c:remove var="MENSAJE"/>

<!-- The Modal -->
  <div class="modal fade" id="myModal" data-backdrop="static">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Sistema</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
        	Seguro de eliminar formato? 
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <form action="deleteFormato" method="post" name="myForm">	
		  	  <input type="hidden" id="idNumero" name="codigo">
	             <button type="submit" class="btn btn-primary">SI</button>
	             <button type="button" class="btn btn-secondary" data-dismiss="modal">NO</button>
            </form>
        </div>
        
      </div>
    </div>
  </div>



	<div class="container">
		<h3 align="center">Lista de Formato RAI</h3>
		<button type="button" data-toggle='modal'  data-target="#idModalRegistra" id="idNuevo"
				class='btn btn-primary' >Nuevo Formato RAI</button><br>&nbsp;<br>
				
				
				
		<div id="divEmpleado">
		 								<table id="idTable" class="table table-striped table-bordered" style="width:100%">
												<thead>
														<tr>
															<th>Codigo</th>
															<th>Descripcion</th>
															<th>Fuentes</th>
															<th>Contenido</th>	
															<th>Area de Plan de Trabajo</th>
															<th>Apellido del Usuario</th>
														</tr>
												</thead>
												<tbody>
												</tbody>
											</table>	

			</div>	
	
	
<!-- INICIO DIV NUEVO -->
<div class="modal fade bd-example-modal-lg" id="idModalRegistra" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
				<!-- Modal content-->
				<div class="modal-content">
				<div class="modal-header" style="padding: 5px 20px">
					Registro de Formato RAI<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          				
       				   </button>
				</div>
				<div class="modal-body" style="padding: 20px 20px;">
					<form id="idRegistra" accept-charset="UTF-8" action="saveFormato" 
													class="form-horizontal" method="post" 
													data-toggle="validator" role="form">						
		                                	<div class="form-group">
			                                   	<label for="staticEmail">Descripcion</label>
												<input class="form-control" id="idNombre" name="formato.descip" placeholder="Ingrese  Nombres"/>
			                                </div>    
		                                    <div class="form-row">
			                                    <div class="form-group col-md-6">
			                                        <label for="staticEmail">Fuentes</label>
														<input class="form-control" id="idFuentes" name="formato.fuentes" placeholder="Ingrese Apellidos"/>
			                                    </div>
			                                    <div class="form-group col-md-6">
			                                        <label for="staticEmail">Contenido</label>
														<input class="form-control" id="idContenido" name="formato.contenido" placeholder="Ingrese Edad"/>
			                                    </div>
			                                	<div class="form-group col-md-6">
														<input class="form-control" id="idCodUsr" value="1" name="formato.codUsr" type="hidden" placeholder="Ingrese Edad"/>
			                                    </div>
			                                </div>   
		                                    <div class="form-group">
		                                        <label for="staticEmail">Tipo</label>
													<select id="idFormato" name="formato.codPlanT" class='form-control'>
							                                 <option value=" " >[SELECCIONE]</option>
							                         </select>
		                                    </div>
		    
                        				<div class="modal-footer">
									        <button type="button" class="btn btn-secondary" data-dismiss="modal" id="btnCerrar">Cerrar</button>
									        <button type="submit" class="btn btn-primary">Guardar</button>
									    </div>

		            </form>      
				</div>
			</div>
		</div>
  </div>
  
  
</div>
  
<!-- FIN DIV NUEVO -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

<script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>

<script>
$(document).ready(function() {
	llenarTipos();
	llenarMercaderias();
});
</script>

<script type="text/javascript">
//variable global
var codTipo=0;

function llenarMercaderias(){
	$.getJSON("listAllPlan",{},function (response){
				$.each(response.listaPlan,function(index,item){
					$("#idFormato").append("<option value='"+item.codigo+"'>"+item.area+"</option>");
				})	
	})
}
function llenarTipos(){
	$.getJSON("listAllFormato",{},function (response){
				$.each(response.listaFormato,function(index,item){
					var editar="<button type='button' class='btn btn-secondary' data-toggle='modal'  id='idEditar' data-target='#idModalRegistra'>Editar</button>";
					var eliminar="<button type='button' class='btn btn-danger' data-toggle='modal' "+
					 "data-target='#myModal' id='idEliminar'>Eliminar</button>";
					$("#idTable").append("<tr><td>"+item.codigo+"</td><td>"+item.descip+"</td><td>"+item.fuentes+ 
							 "</td><td>"+item.contenido+"</td><td>"+item.area+"</td><td>"+item.apellidos+"</td><td>"+eliminar+"</td><td>"+editar+"</td></tr>");
								 
				})	
				
				$("#idTable").DataTable();
				
	})
}

$("#success-alert").fadeTo(3000,1, function(){	
    $("#success-alert").slideUp(500);

});

$(document).on('click', '#idEliminar', function(){
    var id = $(this).parents("tr").find("td")[0].innerHTML;
    $("#idNumero").val(id);
})


$(document).on('click', '#idEditar', function(){
	
})
$(document).on('click', '#btnCerrar', function(){
	$('#idRegistra').data('bootstrapValidator').resetForm(true);
    $('#idRegistra').trigger("reset");
	$("#idCodigo").val(0); 
})




</script>

<script type="text/javascript">    
    $(document).ready(function(){     
        $('#idRegistra').bootstrapValidator({      
        	 fields:{
        		 
        		 Nombre: {
     	    		selector:'#idNombre',   
                    validators: {    
                        notEmpty: {    
                            message: 'Ingrese nombre'    
                        },      
                        regexp: {    
                            regexp: /^[a-zA-Z\s]+$/,    
                            message: 'campo nombres solo letras'    
                        },
                        notEmpty: {    
                            message: 'El minimo es 3 caracteres'    
                        },
                    	 stringLength: {
                    		 min: 3,
                             max: 30,
                             message: 'El maximo es 45 caracteres'
                         }, 
                    }    
                },   
                
                Stock: {
     	    		selector:'#idStock',   
                    validators: {  
                    	integer: {
                        message: 'Solo acepta valores Enteros'
                    },
                    }    
                },     
                
                Precio: {
     	    		selector:'#idPrecio',      
                    validators: {    
                        notEmpty: {    
                            message: 'Ingrese precio'    
                        },
                        regexp: {    
                            regexp: /^[0-9]{1,10}[.][0-9][0-9]{1,2}$/,    
                            message: 'Campo n�mero de precio invalido Ejem: 200.00'    
                        },   
                    }    
                },      				
                Distrito: {
     	    		selector:'#idTipo',   
                    validators: {    
                        notEmpty: {    
                            message: 'Seleccione Distrito'    
                        },					
                    }    
                } 
        	 }
        });   
			
    });    
</script>   


</body>
</html>












