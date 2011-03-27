// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
var dayNames = new Array("воскресенья", "понедельника", "вторника",
                             "среды", "четверга", "пятницы", "субботы");
    var now = new Date();
    var happy = "";
    switch(now.getDay()){
      case 0:
        happy = "Удачного ";
        break;
      case 1:
        happy = "Удачного ";
        break;
      case 2:
        happy = "Удачного ";
        break;
      case 3:
        happy = "Удачной ";
        break;
      case 4:
        happy = "Удачного ";
        break;
      case 5:
        happy = "Удачной ";
        break;
      case 6:
        happy = "Удачной ";
        break;
    }
