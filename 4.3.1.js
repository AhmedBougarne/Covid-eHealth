
function sendEmail() {
  Email.send({
  Host: "smtp.gmail.com",
  Username : "covidehealth@gmail.com",
  Password : "covid100",
  To : 'queenkhaoula88@gmail.com',
  From : "covidehealth@gmail.com",
  Subject : "Traitement du covid19 à domicile",
  Body : "vous etes en etat stable .vueillez rester confiné et prendre son traitement joints dans ce courriel",
  Attachments : [
  	{
  		name : "trait.pdf",
  		path:""
  	}]
  }).then(
  	message => alert("mail sent successfully")
  );
}