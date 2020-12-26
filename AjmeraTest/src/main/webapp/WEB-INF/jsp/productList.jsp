<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script src=" https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
   <script src=" https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
 
<meta charset="UTF-8">
<title>Product Management</title>
</head>
<body>
    <div>
    	<label>Search</label>
    	<input type="text" name="search" id="search"/>
    </div>
	<div align="center">
	
		<section class="content">
      <div class="row">
        <div class="col-sm-12">
          <div class="box">
            <div class="box-header with-border">
              <h3 class="box-title">Product List</h3>
            </div>
              <!-- /.box-header -->
              <div class="box-body">
                <table id="itemTable" class="table table-bordered table-striped">
                  <thead>
                    <tr>
                      <th style="display: none;">id</th>
                       <th>Product Image</th>
                      <th>Product Name</th>
                        <th>Category Name</th>
                      <th>Vendor Name</th>
                        <th>Cost Price</th>
                      <th>Retail Price</th>
                        <th>Inventory</th>
                      <th>Created Date</th>
                        <th>Updated Date</th>
                     
                    
                    </tr>
                  </thead>
                  <tbody>
                    <c:forEach items="${productList}" var="itemBean">
                      <tr>
                        <td >
                          <c:out value="${itemBean.img}"></c:out>
                        </td>
                        <td>
                          <c:out value="${itemBean.name}"></c:out>
                        </td>
                        <td>
                           <button  type="button" class="btn btn-info " data-toggle="modal" data-target="#myModal" id="category"> view category </button> 
                        
                        		<div class="modal fade" id="myModal" role="dialog">  
							    <div class="modal-dialog">  
							      
							      <!-- Modal content-->  
							      <div class="modal-content">  
								        <div class="modal-header">  
								          <h4 class="modal-title">Category Details</h4>  
								        </div>  
								        <div class="modal-body">  
								        
								         	 <table id="itemCategory" class="table table-bordered table-striped">
							                  <thead>
							                    <tr>                     
							                       <th>Id</th>                     
							                        <th>Category Name</th>
							                     
							                        <th>Category Description</th>                    
							                    
							                    </tr>
							                  </thead>
							                   <tbody>
							                    <c:forEach items="${itemBean.category}" var="categoryBean">
							                      <tr>
							                        <td >
							                          <c:out value="${categoryBean.id}"></c:out>
							                        </td>
							                        <td>
							                          <c:out value="${categoryBean.categoryName}"></c:out>
							                        </td>
							                         <td>
							                          <c:out value="${categoryBean.categotyDescription}"></c:out>
							                        </td>  
							                        </tr>
							                        </c:forEach>
							                        </tbody>
							                                        
							                </table>	        
								        </div>  
								        <div class="modal-footer">  
								          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>  
								        </div>  
							      </div>  							        
							    </div>    
							    </div>                     
                        </td>
                        <td>
                          <c:out value="${itemBean.vendor.vendorName}"></c:out>
                        </td>
                         <td>
                          <c:out value="${itemBean.costPrice}"></c:out>
                        </td>    
                         <td>
                          <c:out value="${itemBean.retailPrice}"></c:out>
                        </td>   
                         <td>
                          <button  type="button" class="btn btn-info " data-toggle="modal" data-target="#myInventoryModal" id="category"> view inventory </button> 
                        
                        		<div class="modal fade" id="myInventoryModal" role="dialog">  
							    <div class="modal-dialog">  
							      
							      <!-- Modal content-->  
							      <div class="modal-content">  
								        <div class="modal-header">  
								          <h4 class="modal-title">Inventory Details</h4>  
								        </div>  
								        <div class="modal-body">  
								        
								         	 <table id="itemCategory" class="table table-bordered table-striped">
							                  <thead>
							                    <tr>                     
							                       <th>Id</th>                     
							                      <th>Vendor Name</th>
							                     
							                        <th>Inventory Stock</th>  
							                         <th>Cost Price</th>                    
							                    
							                    </tr>
							                  </thead>
							                   <tbody>
							                    <c:forEach items="${itemBean.vendor.inventory}" var="inventoryBean">
							                      <tr>
							                        <td >
							                          <c:out value="${inventoryBean.id}"></c:out>
							                        </td>
							                         <td >
							                          <c:out value="${itemBean.vendor.vendorName}"></c:out>
							                        </td>
							                        <td>
							                          <c:out value="${inventoryBean.inventory}"></c:out>
							                        </td>
							                         <td>
							                          <c:out value="${inventoryBean.costPrice}"></c:out>
							                        </td>  
							                        </tr>
							                        </c:forEach>
							                        </tbody>
							                                        
							                </table>	        
								        </div>  
								        <div class="modal-footer">  
								          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>  
								        </div>  
							      </div>  							        
							    </div>    
							    </div>  
                        </td>
                        <td>
                          <c:out value="${itemBean.createdDate}"></c:out>
                        </td>
                         <td>
                          <c:out value="${itemBean.updatedDate}"></c:out>
                        </td>                           
                       
                      </tr>
                    </c:forEach>
                  </tbody>
                </table>
              </div>
              <!-- /.box-body -->
            </div>
            <!-- /.box -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
    </section>
		 
	    
	  
	</div>
	<script>
	$("#search").keyup(function(){
		
		let textData = $("#search").val()
		 debugger;
		$.ajax({
			  url: "search",
			  type: "get", //send it through get method
			  data: { 
			  text:textData
			  },
			  success: function(response) {
				  debugger;
			    //Do Something
			  },
			  error: function(xhr) {
				  debugger;
			    //Do Something to handle error
			  }
			});
		/* $.getJSON("search",  function(data) {
          
        }); */
	});
	$(document).ready(function () {			
		 $("#itemTable").DataTable();  
	});
	
  
</script>
</body>
</html>