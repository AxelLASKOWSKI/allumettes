program Allumette;

uses crt;

const
	TOTAL =21;
	BASE =0;

var 
	j1, j2, win : string;
	cmenu, tas, choix, l1, l2, l3, l4, l5, l6, choixligne : INTEGER;

BEGIN
	clrscr;
	repeat
		writeln  ('jeu allumette');
		writeln  ('1:regles');
		writeln  ('2:joueur vs joueur');
		writeln  ('3:joueur contre IA');
		writeln  ('4:joueur contre IA2');
		writeln  ('0:Quitter');
		writeln  ('Entrez votre choix');
		readln (cmenu);
		case cmenu of
			1 :  //règles
				begin
				writeln ('les joueurs choissisent le nombre d''allumettes à retirer (de 1 à 3).');
				writeln ('le joueur retirant la dèrnière allumette à perdu');
				end;
			2 :	//joueur 1 contre joueur 2 
				begin
				tas:=total;																			  
				writeln ('ecrire le nom du joueur 1');												  
				readln (j1);
				writeln ('ecrire le nom du joueur 2');
				readln (j1);
				repeat
					choix :=base;
					writeln (j1,'combien d''allumettes retirez vous?'); //tour du joueur 1 
					readln (choix);
					if ((choix>=1) and (choix<=3)) then
					begin
						writeln ('vous avez choisi',choix,'allumettes');
						tas:= (tas-choix);
						writeln ('il reste',tas,'allumettes');
						win :=j2;
					end;
					else
					begin 
						writeln ('entrez un nombre valide');
					end;
					writeln (j2,'combien d''allumettes retirez vous?');
					readln (choix);

					if ((choix>=1) and (choix<=3)) then
					begin
						writeln ('vous avez choisi',choix,'allumettes');
						tas:= (tas-choix);
						writeln ('il reste',tas,'allumettes');
						win :=j1;
					end;
					else
					begin
						writeln ('entrez un nombre valide');
					end;
				until tas <=1;
				writeln ('le vanqueur est',win);
				readln;
				end;

			3 : //joueur contre IA 														
				begin
					randomize
					tas :=total;																
					writeln ('ecrire le nom des joueur');
					readln (j1);																	
					repeat
						choix :=base;																														
						writeln ('combien d''allumettes retirez vous?');  //tour du joueurs 			
						readln (choix);
						if ((choix>0) and (choix<4)) then    //Vérification du nombre d'allumettes	
							writeln ('vous avez choisi ',choix,'allumettes');									
							tas:= (tas-choix);												
							writeln ('il reste ',tas,' allumettes');								
						else writeln ('entrez un nombre valide');	
						win := ordi;
						if (tas>1) then      //tour de L'IA
							random (1 to 3);													
							writeln ('l''ordinateur enlève ',aléatoire,' allumettes');				
							tas := (tas-aléatoire);												
							writeln ('il reste ',tas,' allumettes');								
						win :=j1;

					until tas <=1															
					writeln ('le vanqueur est',win);
					readln;
					end;
				0 :
					begin
					writeln ('Quitter');
				else
					writeln ('choix incorrecte');
			end;
		until cmenu =0;
END.


			