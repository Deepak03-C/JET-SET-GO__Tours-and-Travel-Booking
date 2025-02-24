let notauser=document.getElementById("notauser");
notauser.addEventListener("click",()=>{
    document.getElementById("userregister").style.display="block";
    document.getElementById("notauser").style.display="none";
    document.getElementById("userlogin").style.display="none";
})
let usersubmit2 = document.getElementById("usersumbit2");
usersubmit1.addEventListener("click",()=>{
    document.getElementById("userlogin").style.display="block";
    document.getElementById("userregister").style.display="none";
    document.getElementById("notauser").style.display="block";
})

let confirmpassword = document.getElementById("userconfirmpassword");
confirmpassword.addEventListener("focusout",()=>{
    let password = document.getElementById("userpassword").value;
    if(password!=confirmpassword.value){
        document.getElementById("userspan2").textContent="Password and Not Password not match"
    }
})