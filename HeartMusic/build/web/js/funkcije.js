function preuzmi(id){
	var p = document.getElementById(id);
	if(p){
		return p;
	}else{
		return false;
	}
};

function validacija_ime(tekst){
	preuzmi("ime").innerHTML = "";
	if(tekst == ""){
		preuzmi("validacija_ime").innerHTML = "Unesite ime";
	}else{
		return true;
	}
};

function validacija_prezime(tekst){
	preuzmi("prezime").innerHTML = "";
	if(tekst != ""){
		return true;
	}else{
		preuzmi("validacija_prezime").innerHTML = "Unesite prezime";
	}
};

function validacija_datumRodjenja(tekst){
	preuzmi("validacija_datumRodjenja").innerHTML = "";
	if(tekst == ""){
		preuzmi("validacija_datumRodjenja").innerHTML = "Unesite datum rođenja";
	}else{
		return true;
	}
};

function validacija_grad(tekst){
	preuzmi("grad").innerHTML = "";
	if(tekst == ""){
		preuzmi("validacija_grad").innerHTML = "Unesite naziv grada";
	}else{
		return true;
	}
};

function validacija_drzava(tekst){
	preuzmi("drzava").innerHTML = "";
	if(tekst == ""){
		preuzmi("validacija_drzava").innerHTML = "Unesite naziv države";
	}else{
		return true;
	}
};

function validacija_forme(){
	var val1 = validacija_ime(preuzmi("ime").value);
	var val2 = validacija_prezime(preuzmi("prezime").value);
	var val3 = validacija_datumRodjenja(preuzmi("datumRodjenja").value);
	var val4 = validacija_grad(preuzmi("grad").value);
	var val5 = validacija_drzava(preuzmi("drzava").value);
	
	if(val1 && val2 && val3 && val4 && val5){
		return true;
	}else{
		return false;
	}
};

function dodajClana(){
    
	if(validacija_forme()){
            
		var uslovi = preuzmi("uslovi").checked;
		
		if(uslovi !== true){
                    alert("Žao nam je! Da biste postali član udruženja morate prihvatiti uslove članstva!");
                    return false;
		}
			
		else{
                    
                    alert("Čestitamo! Postali ste član udruženja Heart Music Company!");
                    return true;
                 
		}
		
	}
        
        else {
            return false;
        }
        
        document.getElementById('prijava').reset();
};

function validacija_maila(){
	var val1 = preuzmi("Mime").value;
	var val2 = preuzmi("Mprezime").value;
	var val3 = preuzmi("Mmail").value;
	var val4 = preuzmi("Mporuka").value;
	
	if(val1 != "" && val2 != "" && val3 != "" && val4 != ""){
		return true;
	}else{
                alert("Potrebno je unijeti sve podatke!");
		return false;
	}
};