<head >			<!------memanggil showUserLogin saat load body-------->	

        <link rel="stylesheet" href="css/css.css">
        <link rel="stylesheet" href="css/dash.css">
        <script type="text/javascript" src="js/popup.js"></script>
        <script>

/*            var itotal=5;
            var ipartin=0;
            var ipartout=0;
            var itulis=0;*/
//            
//	function auto_complete_search(text) {
//
//                if (text == "") {
//                    document.getElementById("autosearch").value = "";                    
//                } else {
//                    if (window.XMLHttpRequest){
//                        xmlhttp = new XMLHttpRequest();				
//                    } else {
//                        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");	
//                    }
//                    
//                    xmlhttp.onreadystatechange = function(){
//                        if (xmlhttp.readyState==4 && xmlhttp.status == 200)	{
//                            //alert(xmlhttp.responseText);
//                            var s = xmlhttp.responseText;
//                            var n = s.indexOf("\n");
//                            document.getElementById("autosearch").value = "";
//                            
//                            while (n != -1) {
//                                //Ambil satu data komentar
//                                var username = s.substring(0,n);
//                                s = s.substring(n+1);
//                                n = s.indexOf("\n");
//     
//                                //Tampilkan datanya
//                                var tambah = username+" ";
//                                document.getElementById("autosearch").value += tambah+"\n";
//                            }
//                        }
//                    }
//                    
//                    params = "assignee="+escape(text);
//                    //alert(params);
//                    xmlhttp.open("POST","auto_complete_search.php",true);
//                    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
//                    xmlhttp.send(params);
//                }
//            }//end autocomplete
//			
//	function showUserLogin(){							/*-----------menampilkan user pada local storage-------------- */
//				var waktuLogin = Math.round(localStorage.tglLogin/(1000*60*60*24)); 
//				var waktuSkrg = Math.round(new Date().getTime()/(1000*60*60*24));
//				var selisihHari = waktuSkrg-waktuLogin;	 	//new Date().getTime() akan menampilkan selisih waktu milisecond antara midnight 1 januari 1970 dengan saat method dipanggil 
////				alert(selisihHari);				
//				
//				if(selisihHari<30){							
//					document.getElementById("showLoginHeader").innerHTML="Welcome "+localStorage.userLogin;	
//														
//				}else{										//jika sudah 30 hari, user harus login lagi
//					window.location="index.php";	
//				}
//			}
//			
//    function hapusUserLogin(){							/*-----------menghapus user dan waktu pada local storage-------*/
//        sessionStorage.removeAttribute("userLoginSession");
//
//    }
///*			
//            function taskawal(itotal){
//                for(var i=0;i<itotal;i++){
//                var para=document.createElement("p");
//                if(i===0){
//                    var node=document.createTextNode("TUBES 1" + " " + (11+(i*4)) + " AGUSTUS2013"  +" KAP");   
//                }else if(i===1){
//                    var node=document.createTextNode("TUBES 2" + " " + ((i*6)-1) + "OKTOBER2013"  +" MSDI");   
//                }else if(i===2){
//                    var node=document.createTextNode("TUBES 3" + " " + ((i*6)-1) + "OKTOBER2013"  +" MSDI");   
//                }else if(i===3){
//                    var node=document.createTextNode("TUBES 4" + " " + ((i*6)-1) + "OKTOBER2013"  +" MSDI");   
//                }else if(i===4){
//                    var node=document.createTextNode("TUBES 5" + " " + ((i*4)-4) + "APRIL2013"  +" PROGIN" );   
//                }else if(i===5){
//                    var node=document.createTextNode("TUBES 6" + " " + ((i*4)-4) + "APRIL2013"  +" PROGIN" );   
//                }
//                para.appendChild(node);
//                para.id="listtask";
//                
//                var element=document.getElementById("div1");
//                element.appendChild(para);
//                ipartout = itotal;
//                }
//            }
//            function addTask(ipartin){                
//                for(var i=0;i<ipartin;i++){
//                var para=document.createElement("p");
//                if(ipartin === 1){
//                    var node=document.createTextNode("TUBES " + (i+1) + " " + (11+(i*4)) + "AGUSTUS2013"  +" KAP");
//                } else if(ipartin === 2){
//                    var node=document.createTextNode("TUBES " + (i+5) + " " + (12+(i*4)) + "APRIL2013"  +" PROGIN" );
//                } else if(ipartin === 3){    
//                    var node=document.createTextNode("TUBES " + (i+2) + " " + (5+(i*6)) + "OKTOBER2013"  +" MSDI");
//                }
//                
//                para.appendChild(node);
//                para.id="listtask";
//                
//                var element=document.getElementById("div1");
//                element.appendChild(para);
//                }
//                
//                ipartout=ipartin;
//                itulis=ipartin;
//            }
//            
//            function removeTask(){
//                for(var i=0;i<ipartout;i++){
//                var parent=document.getElementById("div1");
//                var child=document.getElementById("listtask");
//                parent.removeChild(child);
//                }
//            }
//            
//            
//            function showTask(){
//                document.getElementById("addtask").style.visibility="visible";
//            }
//            
//            function hideAddTask(){
//                document.getElementById("addtask").style.visibility="hidden";
//            }
//*/			
//			
//<!------------------------------------------------ buat search------------------------------------------>			
//	  function tampilSearch(){
////			if(	window.location==window.location.href.substring(0,window.location.href.lastIndexOf("/")) + "/searchresult.php"){							
//			    var xyz = document.getElementById("cari").value;
//				var xyz2 = document.getElementById("searchFilter").value;
//				if (window.XMLHttpRequest){
//					xmlhttp = new XMLHttpRequest();				
//				}else{
//					xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");	
//				}
//
//				xmlhttp.onreadystatechange = function(){
//					if (xmlhttp.readyState==4 && xmlhttp.status==200)	{				
//
//						document.getElementById("divTugas").innerHTML=xmlhttp.responseText;
//					}
//				}
//					
//				xmlhttp.open("GET","search.php?tugas="+xyz+"&filter="+xyz2,true);
//				xmlhttp.send();
////			}//end if searchresult.php
////			else{
//
////				window.location="searchresult.php";
//				
////			}// end else
//		}
//			
//			
//			
//<!-------------------------------------------------dashboard------------------------------->			
//			            function showAddTask(){<!--SIGIT-->
//                document.getElementById("addtask").style.visibility="visible";
//                document.getElementById("addtask").disabled = false;
//            }
//            
//            function hideAddTask(){
//                document.getElementById("addtask").style.visibility="hidden";
//            }
//			
//			function ubahStatus(nomor) {
//				var xmlhttp;
//				if (window.XMLHttpRequest){
//					xmlhttp = new XMLHttpRequest();				
//				}else{
//					xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");	
//				}
//				
//				xmlhttp.onreadystatechange = function(){
//					//alert(xmlhttp.readyState+" "+xmlhttp.status);
//					
//					if (xmlhttp.readyState==4 && xmlhttp.status==200){				
//						//alert(xmlhttp.responseText);
//						//document.getElementById("category").innerHTML=xmlhttp.responseText;
//					}
//				}
//								
//				xmlhttp.open("GET","ubahstatus.php?id_tugas="+nomor,true);
//				xmlhttp.send();				
//			}
//            
//			function getCat(){<!--SIGIT-->
//				var xmlhttp;
//				if (window.XMLHttpRequest){
//					xmlhttp = new XMLHttpRequest();				
//				}else{
//					xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");	
//				}
//				
//				xmlhttp.onreadystatechange = function(){
//					//alert(xmlhttp.readyState+" "+xmlhttp.status);
//					
//					if (xmlhttp.readyState==4 && xmlhttp.status==200){				
//						//alert(xmlhttp.responseText);
//						document.getElementById("category").innerHTML=xmlhttp.responseText;					
//					}
//				}
//								
//				xmlhttp.open("GET","getCat.php",true);
//				xmlhttp.send();
//				//alert(xmlhttp.responseText);
//				//alert(xmlhttp.status);
//			}
//			
//			function getTask(){<!--SIGIT-->
//				var xmlhttp;
//				if (window.XMLHttpRequest){
//					xmlhttp = new XMLHttpRequest();				
//				}else{
//					xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");	
//				}
//				
//				xmlhttp.onreadystatechange = function(){
//					//alert(xmlhttp.readyState+" "+xmlhttp.status);
//					
//					if (xmlhttp.readyState==4 && xmlhttp.status==200){				
//						//alert(xmlhttp.responseText);
//						document.getElementById("category2").innerHTML=xmlhttp.responseText;					
//					}
//				}
//					
//				xmlhttp.open("GET","getTask.php?user="+localStorage.userLogin,true);
//				xmlhttp.send();
//				//alert(xmlhttp.responseText);
//				//alert(xmlhttp.status);
//			}
//			function catTask(n){<!--SIGIT-->
//				var xmlhttp;
//				if (window.XMLHttpRequest){
//					xmlhttp = new XMLHttpRequest();				
//				}else{
//					xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");	
//				}
//				
//				xmlhttp.onreadystatechange = function(){
//					//alert(xmlhttp.readyState+" "+xmlhttp.status);
//					
//					if (xmlhttp.readyState==4 && xmlhttp.status==200){				
//						//alert(xmlhttp.responseText);
//						document.getElementById("category2").innerHTML=xmlhttp.responseText;					
//					}
//				}
//                
//				xmlhttp.open("GET","catTask.php?id="+n+"&user="+localStorage.userLogin,true);
//				xmlhttp.send();
//				document.getElementById("kirim").action = "buattask.php?id_kategori="+n;
//                //alert(xmlhttp.responseText);
//				//alert(xmlhttp.status);
//			}
//			
//
			
        </script>			
            
        </script>
                     <div class="header">
			<div id="logo">
			    <a hreg="dashboard.php">
			    <img src="pict/logo.png">
			    </a>
			</div>
			<div id="border">
			    
			</div>
			<div id="dashboard">
			    <a href="dashboard.php">DASHBOARD</a>
			</div>
			<div id="profile">
			    <a href="profile.php">PROFILE</a>
			</div>
			<div id="search">
            
	            	<form action="searchresult.php" method="post">
					    <section class="searchform cf">
						    <input id="cari" class="searchbox" type="search" name="search" placeholder="Search.." required>		
<!--                                                           onkeyup=auto_complete_search(this.value.substring(this.value.lastIndexOf("/")+1)) 
-->
                                                           				
                                            </section>                        
                            <select name="searchFilter" class="dropdownJo" id="searchFilter"> 	<!-------dropdown filter-->
                            <option value="semua">Semua</option>
                            <option value="username">Username</option>
                            <option value="email">Email</option>
                            <option value="namalengkap">Nama Lengkap</option>
                            <option value="birthdate">Birthdate</option>
                            <option value="kategori">Kategori</option>
                            <option value="tugas">Tugas</option>
                            <option value="tag">Tag</option>                            
                            <option value="komentar">Komentar</option>                            
                            </select>
                        <input type="submit" class="searchbuttonbox cf" >
                        						
                    </form>					
				</div>	<!--end div search-->
                                
<!--udah-->                                            
			<div id="showLoginHeader">
<%
                            out.println("Welcome "+session.getAttribute("userLoginSession"));       
%>
                        </div>	
            
            <div id="showAvatarHeader">

			</div>	
            				    
<!--udah-->            
            <div id="logout" onClick="<%session.removeAttribute("userLoginSession");%>">		<!---------hapus user login dan waktunya ketika logout ---------->
			    <a href="index.jsp">LOGOUT</a>

                
    	    </div>
                    

		
		  </div>
          
<input id="autosearch" disabled></input>  <!--autocomplete box-->

        
    </head>

