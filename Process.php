<?php
include 'db_connect.php';
 
					//Delete from Trash
				  if(isset($_GET['del'])) {
				  	$id = $_GET['del'];

				  	mysqli_query($conn, "DELETE FROM employee WHERE Employee_ID=$id");
				  	alert("Employee successfully deleted!");
				  	header("refresh:1; url=Employee.php?");
				  }
				  //Remove from Employee
				  if(isset($_GET['rem'])) {
				  	$id = $_GET['rem'];

				  	mysqli_query($conn, "UPDATE employee SET Employee_Status='Inactive' WHERE Employee_ID=$id");
				  	alert("Employee successfully remove!");
				  	header("refresh:1; url=Employee.php?");
				  }
				  //Restore from Trash
				  if(isset($_GET['res'])) {
				  	$id = $_GET['res'];

				  	mysqli_query($conn, "UPDATE employee SET Employee_Status='Active' WHERE Employee_ID=$id");
				  	alert("Employee successfully restore!");
				  	header("refresh:1; url=Employee.php?");
				  }



				//Department....  


				if(isset($_POST['add1'])){

					$depcat=$_POST['depcat'];  
					$status = "Active";
					
					
					$sql="INSERT INTO supplier(dep_category,status)
						VALUES('$depcat','$status')";
						$query=mysqli_query($conn,$sql);
            		alert("Department successfully added!");
					header("refresh:1; url=Department.php?"); 
				} 

				
				  if(isset($_GET['del5'])) {
				  	$id = $_GET['del5'];

				  	mysqli_query($conn, "DELETE FROM supplier WHERE dep_id=$id");
				  	alert("Department successfully deleted!");
				  	header("refresh:1; url=Department.php?");

				  }
				  
				
				//employee add
				if(isset($_POST['empadd'])){

					$fname=$_POST['EmployeeFirstName']; 
					$lname=$_POST['EmployeeLastName'];  
					$user=$_POST['EmployeeUsername'];  
					$email=$_POST['EmployeeEmail'];
					$age=$_POST['EmployeeAge'];
					$contactnumber=$_POST['EmployeeContactNo'];
					$address=$_POST['EmployeeAddress'];
					$department=$_POST['EmployeeDepartment'];
					

					$sql="INSERT INTO employee (Employee_Firstname, Employee_Lastname, Employee_Username, Employee_Email, Employee_Age, Employee_ContactNumber, Employee_Address, Employee_Department,Employee_Status)
						values('$fname','$lname','$user','$email','$age','$contactnumber','$address','$department','Active')";
						$query=mysqli_query($conn,$sql);
            		alert("Employee successfully added!");
					header("refresh:1; url=Employee.php?"); 
				}

			

				  

function alert($msg) {
    echo "<script type='text/javascript'>alert('$msg');</script>";
}
			?>