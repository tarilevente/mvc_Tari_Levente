<?php
// declare the show() method for Views -- could be imported in the Views, but now I'll just leave here
class View {
    function show($v){
        require('Views/'.$v.'.php');
    }
}
?>