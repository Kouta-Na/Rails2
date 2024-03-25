document.addEventListener('turbolinks:load', function(){
  const dropdown = document.getElementById('dropdown'); 
  const dropdown_menu = document.getElementById('dropdown_menu');

  if(dropdown){
    dropdown.addEventListener('click', function(){
      dropdown_menu.classList.toggle('hidden');
    });
  }
});


