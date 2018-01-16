algorithme allumette

//BUT: cette algorithme crée un jeu d'allumettes
//ENTRER : le nombre d'allumette à retirer
//SORTIE : le nombre d'allumette restante et le nom du joueur qui à gagnier
const
	total <-21
	base <-0
	ordi <- ordinateur

var j1, j2, win : CHAINE
	cmenu, tas, choix, l1, l2, l3, l4, l5, l6, choixligne : ENTIER

DEBUT
	REPETER
		ECRIRE "jeu allumette"
        ECRIRE "1:regles"
        ECRIRE "2:joueur vs joueur"
        ECRIRE "3:joueur contre IA"
        ECRIRE "4:joueur contre IA2"
        ECRIRE "0:Quitter"
        ECRIRE "Entrez votre choix"
        LIRE (cmenu);
        CAS cmenu PARMIS

        	1 :  //règles
        		ECRIRE "les joueurs choissisent le nombre d'allumettes à retirer (de 1 à 3)."
        		ECRIRE "le joueur retirant la dèrnière allumette à perdu"

			2 :	//joueur 1 contre joueur 2 															  //jeu d'essai
				tas<-total																			  //le tas est de 21
				ECRIRE "ecrire le nom des joueur"													  //l'utilisateur écrit joueur 1 et joueur 2
				LIRE j1, j2
				REPETER
					choix <-base																	  //le choix est de 0
					ECRIRE j1&"combien d'allumettes retirez vous?" //tour du joueur 1                 //joueur 1 retire 2 allumettes
					LIRE choix
					SI choix>=1 ET choix<=3 ALORS  //vérification du nombre d'allumettes			  //le choix est correcte
						ECRIRE "vous avez choisi "&choix&" allumettes"								  //vous avez choisie 2 allumettes
						tas<- (tas-choix)															  //21-2 = 19
						ECRIRE "il reste "&tas&" allumettes"  										  // le tas est de 19
						win <- j2 																	  //le gagniant passe au joueur 2
					FINSI
					ECRIRE J2&"combien d'allumettes retirez vous?" 									  //joueur 1 retire 3 allumettes
					LIRE choix 																		  //le choix est de 3
					SI choix>=1 ET choix<=3 ALORS	//vérification du nombre d'allumettes		  	  //entre dans la condition
						ECRIRE "vous avez choisi "&choix&" allumettes"
						tas<- (tas-choix) 															  //le tas est de 15 allumettes
						ECRIRE "il reste "&tas&" allumettes"
					SINON ECRIRE "entrez un nombre valide"
					win <-j1									  
					FINSI
						win <-j1
				JUSQU A tas <=1																		  //quand le tas est égale à 1 la partie s'arrete
				ECRIRE "le joueur qui à gangier est "&win    										  //définie le joueur vanqueur


			3 : //joueur contre IA 															//jeu d'essai
				tas <-total 																//le tas est de 21
				ECRIRE "ecrire le nom des joueur"											//l'utilisateur écrit joueur 1
				LIRE j1																	
				REPETER
					choix <-base															//le choix est de 0															
					ECRIRE "combien d'allumettes retirez vous?"  //tour du joueurs 			//l'utilisateur choisis de retirer 3 allumettes
					LIRE choix
					SI choix>0 ET choix<4 ALORS    //Vérification du nombre d'allumettes	//le choix est correcte
						ECRIRE "vous avez choisi "&choix&" allumettes"						//vous avez choisie 3 allummettes			
						tas<- (tas-choix)													//21-3 = 18
						ECRIRE "il reste "&tas&" allumettes"								//il reste 18 allumettes
					SINON ECRIRE "entrez un nombre valide"	
					win <-ordi
					FINSI
					SI tas>1 ALORS      //tour de L'IA
						aléatoire (1 A 3)													//2
						ECRIRE "l'ordinateur enlève "&aléatoire&" allumettes"				//l'ordinateur enlève 2 allumettes
						tas <- (tas-aléatoire)												//18-2 = 16
						ECRIRE "il reste "&tas&" allumettes"								//il reste 16 alumettes
					win <-j1
					FINSI
				JUSQU A tas <=1																//quand le tas est égale à 1 la partie s'arrete
				ECRIRE "le vanqueur est"&win												//définie le vanqueur

			4 : //joueur contre IA par ligne  
				// NON TERMINER
				tas <-total
				l1 <-1
				l2 <-2
				l3 <-3
				l4 <-4
				l5 <-5
				l6 <-6
				REPETER
					choix <-0
					ECRIRE "quel ligne voulez vous choisir?"
					LIRE choixligne
					CAS choixligne PARMIS
						1 :
						DEBUT
							ECRIRE "cette ligne à"&l1&" allumettes"
							ECRIRE "combien d'allumettes voulez vous retirer?"
							LIRE choix
							SI l1 < choix ALORS
								ECRIRE "il n'y à pas asser d'allumettes"
							SINON 
								l1<- (l1-choix)
							FINSI
							tas <- (tas-choix)
						FIN
						2 :
						DEBUT
							ECRIRE "cette ligne à"&l2&" allumettes"
							ECRIRE "combien d'allumettes voulez vous retirer?"
							LIRE choix
							SI l2 < choix ALORS
								ECRIRE "il n'y à pas asser d'allumettes"
							SINON 
								l2<- (l2-choix)
							FINSI
							tas <- (tas-choix)
						FIN
						3 :
						DEBUT
							ECRIRE "cette ligne à"&l3&" allumettes"
							ECRIRE "combien d'allumettes voulez vous retirer?"
							LIRE choix
							SI l3 < choix ALORS
								ECRIRE "il n'y à pas asser d'allumettes"
							SINON 
								l3<- (l3-choix)
							FINSI
							tas <- (tas-choix)
						FIN
						4 :
						DEBUT
							ECRIRE "cette ligne à"&l4&" allumettes"
							ECRIRE "combien d'allumettes voulez vous retirer?"
							LIRE choix
							SI l4 < choix ALORS
								ECRIRE "il n'y à pas asser d'allumettes"
							SINON 
								l4<- (l4-choix)
							FINSI
							tas <- (tas-choix)
						FIN
						5 :
						DEBUT
							ECRIRE "cette ligne à"&l5&" allumettes"
							ECRIRE "combien d'allumettes voulez vous retirer?"
							LIRE choix
							SI l5 < choix ALORS
								ECRIRE "il n'y à pas asser d'allumettes"
							SINON 
								l5<- (l5-choix)
							FINSI
							tas <- (tas-choix)
						FIN
						DEBUT
						6 :
							ECRIRE "cette ligne à"&l6&" allumettes"
							ECRIRE "combien d'allumettes voulez vous retirer?"
							LIRE choix
							SI l6 < choix ALORS
								ECRIRE "il n'y à pas asser d'allumettes"
							SINON 
								l6<- (l6-choix)
							FINSI
							tas <- (tas-choix)
						FIN
					SINON
						ECRIRE "choix incorrecte"
					FINCASPARMIS
				JUSQU A tas = 1

			0 :
				ECRIRE "Quitter"
			SINON
				ECRIRE "choix incorrecte"
		FINCASPARMIS
	JUSQU A cmenu = 0
FIN



