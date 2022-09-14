var positionx=null;
var positiony=null;
var quellesection=null;
var quellesectionavant=null;
var upordown=null;
var number=1;
function getNumber() {
return number;
}
function position(e)
/*On trouve la position du curseur*/
	{
	x = (navigator.appName.substring(0,3) == "Net") ? e.pageX : event.x+document.body.scrollLeft;
	y = (navigator.appName.substring(0,3) == "Net") ? e.pageY : event.y+document.body.scrollTop;
positionx=x;positiony=y;
	}
if(navigator.appName.substring(0,3) == "Net")
	document.captureEvents(Event.MOUSEMOVE);
document.onmousemove = position;

function knowleftright() {

/*Lors que le curseur est sur la roulette, on trouve dans quelle section (haut, bas, gauche, droite) de la roulette le curseur se trouve*/

if((positiony<=230)&&(positionx>=60))
{quellesection='DroiteHaut';}
else if((positiony>=230)&&(positionx<=60))
{quellesection='GaucheBas';}
else if((positiony>=230)&&(positionx>=60))
{quellesection='DroiteBas';}
else if((positiony<=230)&&(positionx<=60))
{quellesection='GaucheHaut';}
else
{quellesection='Hors';}

/*On fonction des résultats trouvés et de la précédente zone survolé si le menu doit monté, descendre ou (s'il n'a pas changé de zone) ne pas bougé. On attribut cela à la variable upordown*/
/*On trouve si c'est haut*/
if((quellesection=='GaucheHaut')&&(quellesectionavant=='GaucheBas'))
{upordown='Up';}
else if((quellesection=='DroiteHaut')&&(quellesectionavant=='GaucheHaut'))
{upordown='Up';}
if((quellesection=='DroiteBas')&&(quellesectionavant=='DroiteHaut'))
{upordown='Up';}
if((quellesection=='GaucheBas')&&(quellesectionavant=='DroiteBas'))
{upordown='Up';}
/*On trouve si ça ne change pas*/

else if(quellesection==quellesectionavant)
{upordown='No Change';}
/*On trouve si ça descend*/

else if((quellesection=='GaucheBas')&&(quellesectionavant=='GaucheHaut'))
{upordown='Down';}
else if((quellesection=='GaucheHaut')&&(quellesectionavant=='DroiteHaut'))
{upordown='Down';}
if((quellesection=='DroiteHaut')&&(quellesectionavant=='DroiteBas'))
{upordown='Down';}
if((quellesection=='DroiteBas')&&(quellesectionavant=='GaucheBas'))
{upordown='Down';}
/*Puis, si cela monte et que la valeur de number est moins de 5, le menu montera à l'élément qui aura comme fin d'ID la valeur de number et comme début d'ID "elementmain".*/

if((upordown=='Up')&&(number<5))
{document.getElementById('elementmain'+number).className="element";number++;document.getElementById('elementmain'+number).className="elementfocus";}
/*On fait la même chose si ça descend mais là, la valeur de number doit être supérieure à 1*/
else if((upordown=='Down')&&(number>1))
{document.getElementById('elementmain'+number).className="element";number--;document.getElementById('elementmain'+number).className="elementfocus";}
else 
{}
quellesectionavant=quellesection;
}