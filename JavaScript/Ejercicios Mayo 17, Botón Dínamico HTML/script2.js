popupWhatsapp=()=>{
    /** función con asignación en parentesis*/
    let btnclosepopup=document.querySelector('.closePopup');
    let openpopup=document.querySelector('.whatsapp-button');
    let popup=document.querySelector('.popup-whatsapp');
    let sendbtn=document.getElementById('send-btn');

    btnclosepopup.addEventListener("click", ()=>{
        popup.classList.toggle('is-active-whatsapp-popup')
    });
    openpopup.addEventListener('click', ()=>{
        popup.classList.toggle('is-active-whatsapp-popup')
        popup.style.animation="fadeIn .6s 0.0s both"
    });
    sendbtn.addEventListener("click", ()=>{
        let msg=document.getElementById('whats-in').value;
        let relmsg=msg.replace(/ /g,"%20");
        window.open('https://wa.me/+573133189354?text='+relmsg, '_blank');
    });
    setTimeout(() =>{
        popup.classList.toggle('is-active-whatsapp-popup')
    }, 3000);
}
    popupWhatsapp();

