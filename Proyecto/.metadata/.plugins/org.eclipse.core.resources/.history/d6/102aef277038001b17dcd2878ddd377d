<jsp:include page="menu.jsp"/>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<html lang="esS">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css"/>
 

<title>Medicamento</title>
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
        	Seguro de eliminar medicamento? 
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <form action="deleteMedicamento" method="post" name="myForm">	
		  	  <input type="hidden" id="idNumero" name="codigo">
	             <button type="submit" class="btn btn-primary">SI</button>
	             <button type="button" class="btn btn-secondary" data-dismiss="modal">NO</button>
            </form>
        </div>
        
      </div>
    </div>
  </div>


<!-- The Modal Mensaje-->
  <div class="modal fade" id="myModalMensaje" data-backdrop="static">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Sistema</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
        	<p id="idMen"></p>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
           <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
	    </div>
        
      </div>
    </div>
  </div>

<!-- The Modal FOTO-->
  <div class="modal fade" id="myModalFoto" data-backdrop="static">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Sistema</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <form action="updateFoto" method="post" name="myForm" enctype="multipart/form-data">	
	        <!-- Modal body -->
	        <div class="modal-body">
	        	<input type="text" id="idNumeroFoto" name="medicamento.idMedicamento">
			  	<img id="idFoto">
			  	<div class="form-group">
		              <label for="staticEmail">Foto</label>
						<input type="file" class="form-control" name="medicamento.archivo"/>
		        </div>
			  	
	        </div>
	        
	        <!-- Modal footer -->
	        <div class="modal-footer">
	          <button type="submit" class="btn btn-primary">Actualizar</button>
		      <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
	
	        </div>
        </form>
      </div>
    </div>
  </div>


	<div class="container">
		<h3 align="center">Lista de Medicamentos</h3>
		<button type="button" data-toggle='modal'  data-target="#idModalRegistra" id="idNuevo"
				class='btn btn-primary' >Nuevo Medicamento</button><br>&nbsp;<br>
				
				
				
		<div id="divEmpleado">
		 								<table id="idTable" class="table table-striped table-bordered" style="width:100%">
												<thead>
														<tr>
															<th>Codigo</th>
															<th>Nombre</th>
															<th>Descripción</th>
															<th>Stock</th>
															<th>Precio</th>
															<th>Fecha</th>
															<th></th>
															<th></th>
															<th></th>
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
					Registro de Medicamento<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          				
       				   </button>
				</div>
				<div class="modal-body" style="padding: 20px 20px;">
					<form id="idRegistra" accept-charset="UTF-8" action="saveMedicamento" 
													class="form-horizontal" method="post" 
													data-toggle="validator" role="form"
													enctype="multipart/form-data">						
		                   				<input type="hidden" id="idCodigo" name="medicamento.idMedicamento" value="0">
		                                	<div class="form-group">
			                                   	<label for="staticEmail">Nombre</label>
												<input class="form-control" id="idNombre" name="medicamento.nombre" placeholder="Ingrese el Nombre"/>
			                                </div>    
		                                    <div class="form-group">
		                                       <label for="staticEmail">Descripción</label>
											   <textarea class="form-control" id="idDescripcion" name="medicamento.descripcion" rows="3" cols="10" placeholder="Ingrese Descripción"></textarea>
		                                    </div>
		                                    <div class="form-row">
			                                    <div class="form-group col-md-6">
			                                        <label for="staticEmail">Stock</label>
														<input class="form-control" id="idStock" name="medicamento.stock" placeholder="Ingrese Stock"/>
			                                    </div>
			                                    <div class="form-group col-md-6">
			                                        <label for="staticEmail">Precio</label>
														<input class="form-control" id="idPrecio" name="medicamento.precio" placeholder="Ingrese Precio"/>
			                                    </div>
			                                </div>    
		                                    <div class="form-group">
		                                        <label for="staticEmail">Fecha Fabricación</label>
													<input class="form-control" id="idFecha" name="medicamento.fechaFabricacion" placeholder="Ingrese Fecha Fabricación"/>
		                                    </div>
		                                    <div class="form-group">
		                                        <label for="staticEmail">Laboratorio</label>
													<select id="idLaboratorio" name="medicamento.idLaboratorio" class='form-control'>
							                                 <option value=" " >[SELECCIONE]</option>
							                         </select>
		                                    </div>
		                                    <div class="form-group">
		                                        <label for="staticEmail">Tipo</label>
													<select id="idTipo" name="medicamento.codigoTipo" class='form-control'>
							                                 <option value=" " >[SELECCIONE]</option>
							                         </select>
		                                    </div>
		                                    <div class="form-group">
		                                        <label for="staticEmail">Foto</label>
													<input type="file" class="form-control" name="medicamento.archivo"/>
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
	llenarLaboratorios();
	llenarMedicamentos();
});
</script>

<script type="text/javascript">
//variable global
var codTipo=0;

function llenarLaboratorios(){
	$.getJSON("listaLaboratorio",{},
			function (data){
				$.each(data.listaLaboratorios,function(index,item){
					$("#idLaboratorio").append("<option value='"+item.idLaboratorio+"'>"+item.nombre+"</option>");
				})	
	})
}
function llenarMedicamentos(){
	$.getJSON("listAllMedicamentos",{},
			function (data){
				$.each(data.listaMedicamentos,function(index,item){
					var buscar="<button type='button' class='btn btn-secondary' data-toggle='modal'  id='idEditar' data-target='#idModalRegistra'>Editar</button>";
					var eliminar="<button type='button' class='btn btn-danger' data-toggle='modal' "+
								 "data-target='#myModal' id='idEliminar'>Eliminar</button>";
					var foto="<button type='button' class='btn btn-danger' data-toggle='modal' "+
								 "data-target='#myModalFoto' id='btnFoto'>Foto</button>";			 
					$("#idTable").append("<tr><td>"+item.idMedicamento+"</td><td>"+item.nombre+"</td><td>"+item.descripcion+ 
										 "</td><td>"+item.stock+"</td><td>"+item.precio+"</td><td>"+item.fechaFabricacion+
										 "</td><td>"+buscar+"</td><td>"+eliminar+"</td><td>"+foto+"</td></tr>");
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
    var id = $(this).parents("tr").find("td")[0].innerHTML;
    $.getJSON("findMedicamento",{codigo:id},function (response){
		$("#idCodigo").val(id); 
		$("#idNombre").val(response.medicamento.nombre);
		$("#idDescripcion").val(response.medicamento.descripcion);
		$("#idStock").val(response.medicamento.stock);
		$("#idPrecio").val(response.medicamento.precio);
		$("#idFecha").val(response.medicamento.fechaFabricacion);
		$("#idLaboratorio").val(response.medicamento.idLaboratorio);
		//alacenar el valor de tipo de medicamento en la variable global codTipo
		codTipo=response.medicamento.codigoTipo;
		//invocar al evento change del select idLaboratorio
		$("#idLaboratorio").trigger("change");
    })  
})
$(document).on('click', '#btnCerrar', function(){
	$('#idRegistra').data('bootstrapValidator').resetForm(true);
    $('#idRegistra').trigger("reset");
	$("#idCodigo").val(0); 
})
$(document).on('click', '#btnFoto', function(){
	 var id = $(this).parents("tr").find("td")[0].innerHTML;
	 $("#idNumeroFoto").val(id);
	 
	 $.getJSON("findFotoMedicamento",{codigo:id},function (response){
		 if(response.baseFoto!=null)
		 	$("#idFoto").attr("src","data:image/jpg;base64,"+response.baseFoto);
		 else
			 $("#idFoto").attr("src","img/image-not-found.png");
	 })
})

//asignar evento change al select "idLaboratorio"
$("#idLaboratorio").change(function(){
	//obtner el id del laboratorio seleccionado
	var idLab;
	idLab=$(this).val();
	$.getJSON("listaTipo",{idLaboratorio:idLab},function (response){
		//limpiar select idTipo
		$("#idTipo").empty().append("<option value=''>[Seleccione Tipo]</option>")
		$.each(response.listaTipos,function(index,item){
			//validar 
			if(codTipo==item.codigoTipo)
				$("#idTipo").append("<option value='"+item.codigoTipo+"' selected>"+item.nombre+"</option>");
			else
				$("#idTipo").append("<option value='"+item.codigoTipo+"'>"+item.nombre+"</option>");
			
			
		})
	})
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
                            message: 'The username can only consist of alphabetical, number, dot and underscore'    
                        },    
                    }    
                },   
                Descripcion: {
     	    		selector:'#idDescripcion',       
                    validators: {    
                        notEmpty: {    
                            message: 'Ingrese Descrpción'    
                        }   
                    }    
                },    
                Stock: {
     	    		selector:'#idStock',      
                    validators: {    
                        notEmpty: {    
                            message: 'Ingrese Stock'    
                        },       
                    }    
                },    
                Precio: {
     	    		selector:'#idPrecio',     
                    validators: {    
                        notEmpty: {    
                            message: 'Ingrese Precio'    
                        },       
                    }    
                }, 
                Fecha: {
     	    		selector:'#idFecha',   
                    validators: {    
                        notEmpty: {    
                            message: 'Ingrese Fecha'    
                        },					
                    }    
                },   				
                Laboratorio: {
     	    		selector:'#idLaboratorio',   
                    validators: {    
                        notEmpty: {    
                            message: 'Seleccione Laboratorio'    
                        },					
                    }    
                } 
        	 }
        });   
			
    });    
</script>   


</body>
</html>












