let notaadmin=document.getElementById("notaadmin");
notaadmin.addEventListener("click",()=>{
    document.getElementById("adminregister").style.display="block";
    document.getElementById("notaadmin").style.display="none";
    document.getElementById("adminlogin").style.display="none";
})

let adminsubmit2 = document.getElementById("adminsumbit2");
submit1.addEventListener("click",()=>{
    document.getElementById("adminlogin").style.display="block";
    document.getElementById("adminregister").style.display="none";
    document.getElementById("notaadmin").style.display="block";

})

let confirmpassword = document.getElementById("adminconfirmpassword");
confirmpassword.addEventListener("focusout",()=>{
    let password = document.getElementById("adminpassword").value;
    if(password!=confirmpassword.value){
        document.getElementById("adminspan2").textContent="Password and Not Password not match"
    }
})
