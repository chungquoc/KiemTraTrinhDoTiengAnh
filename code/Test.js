
$(document).ready(function() {
	var clock = document.querySelector('.overlay');
	var nutBamGio = document.querySelector('.nut-h');
		var x = 15;
        function demNguoc(){
            
            if(x>-1){
            	clock.innerHTML = x--;
            	setTimeout(demNguoc, 1000);
            }
        }
        demNguoc();
        clock.addClass('show');
})