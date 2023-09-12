
      //MenuToggle
      let toggle = document.querySelector(".toggle");
      let navigation = document.querySelector(".navigation");
      let main = document.querySelector(".main");

      toggle.onclick = function () {
        navigation.classList.toggle("active");
        main.classList.toggle('active');
        document.getElementById('main');
        
        if (main.classList.contains('active')) {
            main.style.width = 'calc(100%  - 300px)';
            main.style.marginLeft = '300px'
        } else {
            main.style.width = 'calc(100%  - 80px)';
            main.style.marginLeft = '80px'; 
        }
      };

      //add hovered class in selected list
      let list = document.querySelector(".navigation li");
      function activelink() {
        list.forEach((item) => item.classList.remove("hovered"));
        this.classList.add("hovered");
      }
      list.forEach((item) => list.addEventListener("mouseover", activelink));

      function toggleNavigation() {
      const navigation = document.querySelector(".navigation");
      navigation.classList.toggle("active");
    }
