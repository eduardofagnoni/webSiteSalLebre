        <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>        -->
        <script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
        <script src="js/jquery.animateSprite.min.js"></script>        
        <script src="js/konami.js" async defer></script>
        <script src="js/custom.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="administrador/vendors/js/mascaras.js"></script>


        <!--<script src="js/popexit.min.js" async defer></script>-->

        <script>
        
            /*******************************************************************
            Menu Hamburguer
            *******************************************************************/
            (function() {

            "use strict";

            var toggles = document.querySelectorAll(".c-hamburger");

            for (var i = toggles.length - 1; i >= 0; i--) {
            var toggle = toggles[i];
            toggleHandler(toggle);
            };

            function toggleHandler(toggle) {
            toggle.addEventListener( "click", function(e) {
                e.preventDefault();
                (this.classList.contains("is-active") === true) ? this.classList.remove("is-active") : this.classList.add("is-active");
                (this.classList.contains("is-active") === true) ? abreMenu() : fechaMenu();        
            });
            }
            })();
            /*******************************************************************
            Menu Hamburguer //
            *******************************************************************/


            /*******************************************************************
            Funções abre e fecha telas de Menu
            *******************************************************************/    
            function abreMenu() {     
                $(".menu-principal").animate({opacity:"show" }, 100); 
                $(".conteudo-menu-principal").animate({opacity:"show" }, 400);
                $(".menu-principal li").addClass("wow bounceInDown animated");
            }

            function fechaMenu() {        
                $(".conteudo-menu-principal").animate({opacity:"hide" }, 400);
                $(".menu-principal li").removeClass("wow bounceInDown animated");
            }
            /*******************************************************************
            Funções abre e fecha telas de Menu //
            *******************************************************************/ 

           /*
           jQuery(document).ready(function($) { 
                $(".scroll").click(function(event){        
                    event.preventDefault();
                    $('html,body').animate({scrollTop:$(this.hash).offset().top}, 8000);
                });
            });
            */




            var frm = $('#idFrmExitPopup');

            frm.submit(function (e) {

                e.preventDefault();

                $.ajax({
                    type: frm.attr('method'),
                    url: frm.attr('action'),
                    data: frm.serialize(),
                    success: function (data) {
                        //console.log('Submission was successful.');
                        //console.log(data);
                        $('#idFrmExitPopup input, #idFrmExitPopup button, #idFrmExitPopup .imgTit, #idFrmExitPopup p').css({'display':'none'});
                        $('.popObrigado').css({'display':'block'});
                    },
                    error: function (data) {
                        console.log('An error occurred.');
                        console.log(data);
                    },
                });
            });

        
        </script>

        <script>
            new WOW().init();
        </script>

        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->         
    </body>
</html>