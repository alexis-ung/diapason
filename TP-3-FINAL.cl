;REGLES

;JEUX D'ESSAIS

(setq *base_faits* '((musique) (son acoustique) (nbInstruments) (instruments piano) (melodie) (orchestre) (rythme) (danse) (genre) (bruit) (effets) (langue) (voix non) (sous-genre) 
	(drop) (tonalite) (important sentiment) (langue) (basse) (club) (paroles) (style) (savante oui) (ambiance) (tempo)
                        )
)

;taper (diapason) et selectionner la recherche voulue
;R3 -> R11 -> R14

(setq *base_faits* '((musique) (son electronique) (nbInstruments) (instruments) (melodie) (orchestre) (rythme) (danse oui) (genre) (bruit) (effets) (langue) (voix oui) (sous-genre) 
	(drop oui) (tonalite) (important beat) (langue) (basse) (club oui) (paroles chantees) (style) (savante) (ambiance) (tempo)
                        )
)

;R1 -> R4 -> R22

(setq *base_faits* '((musique) (son acoustique) (nbInstruments) (instruments trompette saxophone batterie contrebasse) (melodie) (orchestre) (rythme syncope) (danse) (genre) (bruit) (effets) (langue) (voix) (sous-genre) 
	(drop) (tonalite) (important) (langue) (basse) (club) (paroles) (style) (savante) (ambiance) (tempo 4)
                        )
)
;R2 -> R8

(setq R1 '( ((nbInstruments peu) (son electronique)) (musique electronique)))
(setq R2 '( ((nbInstruments normal) (son acoustique)) (musique acoustique)))
(setq R3 '( ((nbInstruments solo) (son acoustique)) (musique acoustique)))
(setq R4 '( ((musique electronique) (club oui) (important beat) (danse oui)) (style danse)))
(setq R5 '( ((musique electronique) (club non)) (style ecoute)))
(setq R6 '( ((musique acoustique) (voix oui) (paroles chantees) (tempo '> 5) (instruments guitare_electrique guitare_basse guitare_acoustique batterie) 
	) (genre rock)))
(setq R7 '( ((genre rock) (effets saturation) (bruit cris) (tempo '> 7)) (sous-genre heavy_metal)))
(setq R8 '( ((musique acoustique) (instruments piano trompette saxophone batterie synthe contrebasse guitare_basse clap) 
 	(rythme syncope) (tempo '< 7))(genre jazz)))
(setq R9 '( ((genre jazz) (voix oui) (paroles chantees) (instruments piano trompette saxophone batterie synthe contrebasse guitare_basse harmonica)) 
	(sous-genre blues)))
(setq R10 '( ((genre jazz) (voix oui) (paroles chantees) (important voix) (instruments piano trompette saxophone batterie synthe contrebasse guitare_basse clap))
	(sous-genre soul)))
(setq R11 '( ((musique acoustique)(instruments piano violon violoncelle alto flute hautbois clarinette trompette trombone vibraphone grosse_caisse cymbales)
	(voix non) (savante oui)) (genre classique)))
(setq R12 '( ((genre classique) (tonalite non)) (sous-genre moderne)))
(setq R13 '( ((genre classique) (instruments clavecin) (sous-genre baroque))))
(setq R14 '( ((genre classique) (important sentiment)) (sous-genre romantique)))
(setq R15 '( ((orchestre oui)) (instruments violon violoncelle alto flute hautbois clarinette trompette trombone vibraphone grosse_caisse cymbales)))
(setq R16 '( ((style ecoute) (voix non) (bruit 8-bit)) (genre chiptune)))
(setq R17 '( ((style ecoute) (voix non) (drop non) (ambiance calme) (bruit sourd)) (genre ambient)))
(setq R18 '( ((style ecoute) (voix oui) (ambiance calme) (bruit sourd)) (genre chill)))
(setq R19 '( ((style ecoute) (voix oui) (paroles parlees)) (genre rap)))
(setq R20 '( ((style danse) (tempo '> 8) (basse forte) (bruit sourd)) (genre drumNbass)))
(setq R21 '( ((style danse) (rythme brouille) (drop oui) (melodie inexistante) (voix non) (tempo '> 7)) (genre dubstep)))
(setq R22 '( ((style danse) (important beat) (drop oui) (voix oui) (paroles chantees)) (genre EDM)))
(setq R23 '( ((orchestre oui)) (nbInstruments normal)))


(setq *regles* '(R1 R2 R3 R4 R5 R6 R7 R8 R9 R10 R11 R12 R13 R14 R15 R16 R17 R18 R19 R20 R21 R22 R23))


;CONSTANTES
(setq son '(acoustique electronique))
(setq musique '(acoustique electronique))
(setq important '(beat voix sentiment))
(setq tonalite '(oui non))
(setq drop '(oui non))
(setq nbInstruments '(peu normal solo))
(setq instruments '(guitare_acoustique violon mandoline banjo 		;ORCHESTRE OUI ??
	harmonica guitare_basse castagnettes clap cajon batterie guitare_electrique tambour_congo melodica
	vent percussions saxophone trompette contrebasse violoncelle clarinette hautbois 
	trombone vibraphone grosse_caisse cymbales clavecin alto piano chorale synthe flute)
	)
(setq basse '(forte repetitive)) 
(setq paroles '(religieux parlees chantees))
(setq melodie '(inexistante repetitive))
(setq orchestre '(oui non))
(setq rythme '(brouille syncope triolet))
(setq danse '(oui non))
(setq genre '(ambient gregorien country flamenco rock heavy_metal reggae funk jazz classique baroque rap chiptune drumNbass dubstep blues))
(setq sous-genre '(heavy_metal blues soul moderne baroque romantique))
(setq bruit '(8-bit sourd cris))
(setq effets '(wahwah saturation distortion trilles))
(setq voix '(oui non))
(setq langue '(Coreen Chinois Japonais))
(setq gSousgenres '(classique jazz rock))
(setq ambiance '(calme))
(setq club '(oui non))
(setq savante '(oui non))
(setq tempo '(1 2 3 4 5 6 7 8 9 10))

(setq liste_rythme NIL) (setq liste_effets NIL) (setq liste_son NIL) (setq liste_instruments NIL) (setq liste_basse NIL) (setq liste_paroles NIL)
(setq liste_bruits NIL) (setq liste_danse NIL) (setq liste_voix NIL) (setq liste_langue NIL) (setq liste_drop NIL)(setq liste_tonalite NIL)
(setq liste_important NIL) (setq liste_club NIL) (setq liste_melodie NIL)(setq liste_ambiance NIL) (setq liste_orchestre NIL) (setq liste_savante NIL)
(setq liste_tempo NIL)


;BASE DE QUESTIONS

(setq Q1 '(("Quel(s) type(s) de son entendez-vous ? ~& -Electronique ~& -Acoustique")(son)(liste_son)))
(setq Q2 '(("Quels sont les instruments que vous entendez ?")(instruments)(liste_instruments)))
(setq Q3 '(("Sur une echelle de 1 a 10, quel est le tempo de la musique ? ") (tempo)(liste_tempo)))
(setq Q4 '(("Comment est la basse ? ~& -Forte ~& -Repetitive ~&") (basse) (liste_basse)))
(setq Q5 '(("Comment sont les paroles ? ~& -Religieux ~& -Parlees ~& -Chantees ~& -Cris") (paroles) (liste_paroles)))
(setq Q6 '(("Y a-t-il des bruits particuliers ? ~& -Sourd ~& -8-bit ~& -Cris")(bruit) (liste_bruits)))
(setq Q7 '(("La musique est-elle dansante ? ~& -Oui ~& -Non") (danse) (liste_danse)))
(setq Q8 '(("Comment est le rythme de la musique ? ~& -Syncope ~& -Brouille ~& -Triolet ") (rythme) (liste_rythme)))
(setq Q9 '(("Remarquez-vous des effets particuliers ? ~& -Wahwah ~& -saturation ~& -Distortion ~& -Ornements ") (effets) (liste_effets))) 
(setq Q10 '(("Y a-t-il des voix dans la musique ? ~& -Oui ~& -Non") (voix) (liste_voix)))
(setq Q11 '(("La langue chantee est-elle differente du francais ou de l'anglais ? ~& -Coreen ~& -Chinois ~& -Japonais") (langue) (liste_langue)))
(setq Q12 '(("Y a-t-il un drop pendant la musique ? ~& -Oui ~& -Non") (drop) (liste_drop)))
(setq Q13 '(("Peut-on déterminer une tonalite au morceau ? ~& -Oui ~& -Non") (tonalite) (liste_tonalite)))
(setq Q14 '(("Y a-t-il un élément remarquable dans la musique ? ~& -Beat ~& -Voix ~& -Sentiment") (important) (liste_important)))
(setq Q15 '(("Est-ce que la musique est une musique de club ? ~& -Oui ~& -Non")(club)(liste_club)))
(setq Q16 '(("Est-ce que la melodie est tres repetitive ou inexistante ? ~& -Repetitive ~& -Inexistante")(melodie)(liste_melodie)))
(setq Q17 '(("Quelle est l'ambiance de la musique ? ~& -Calme")(ambiance)(liste_ambiance)))
(setq Q18 '(("Est-ce qu'un orchestre joue ? ~& -Oui ~& -Non")(orchestre)(liste_orchestre)))
(setq Q19 '(("Est-ce que la musique est savante ? ~& -Oui ~& -Non")(savante)(liste_savante)))


(setq *base_faits* '((musique) (son) (nbInstruments) (instruments) (melodie) (orchestre) (rythme) (danse) (genre) (bruit) (effets) (langue) (voix) (sous-genre) 
	(drop) (tonalite) (important) (langue) (basse) (club) (paroles) (style) (savante) (ambiance) (tempo)
                        )
)


(defun question(Q faits)
	(let ((saisie))
		(format t (caar Q))
		(format t "~& Entrez Q pour sortir")
		(loop
				(print "Saisie :")
				(setq saisie (read))
				(cond
					((OR(equal saisie 'q) (equal saisie 'Q)) (return-from NIL (caddr Q)))
					(t
						(if (member saisie (eval (caadr Q))) (setf (caddr Q) (append (caddr Q) (list saisie)))
							(print "error")
							)
						)
					)
				)
			)
		(setf (cdr (assoc (caadr Q) faits)) (cdaddr Q))
	)



(defun nbr_instruments(*faits*)
    (if (< (list-length (cdr (assoc 'instruments *faits*))) 3)
        (if (= (list-length (cdr (assoc 'instruments *faits*))) 1)
        	(setf (cdr (assoc 'nbInstruments *faits*)) (list 'solo))
        	(setf (cdr (assoc 'nbInstruments *faits*)) (list 'peu))
        	)
        (setf (cdr (assoc 'nbInstruments *faits*)) (list 'normal))
    )
)




(defun diapason()
	(let ((saisie_utilisateur nil) (bf *base_faits*))
		(logo)
		(dotimes (x 60)
			(format t "=")
			(sleep 0.1)				
			) 
		(loop
			(format t "~% ~%")
		
			
			(format t "~%~%")
			(format t "~%~%         SE : DIAPASON ~% ~%")
			(format t "=============================================~&~&")
			(format t "1. Type de son : ~a ~&" (cdr (assoc 'son bf))) 
			(format t "2. Instruments entendus : ~a ~&" (cdr (assoc 'instruments bf)))
			(format t "3. Tempo : ~a ~&" (cdr (assoc 'tempo bf)))
			(format t "4. Basse : ~a ~&" (cdr (assoc 'basse bf)))
			(format t "5. Bruit : ~a ~&" (cdr (assoc 'bruit bf)))
			(format t "6. Danse : ~a ~&" (cdr (assoc 'danse bf)))
			(format t "7. Rythme : ~a ~&" (cdr (assoc 'rythme bf)))
			(format t "8. Effets  : ~a ~&" (cdr (assoc 'effets bf)))
			(format t "9. Voix  : ~a ~&" (cdr (assoc 'voix bf)))
			(format t "10. Langue  : ~a ~&" (cdr (assoc 'langue bf)))
			(format t "11. Drop  : ~a ~&" (cdr (assoc 'drop bf)))
			(format t "12. Tonalite  : ~a ~&" (cdr (assoc 'tonalite bf)))
			(format t "13. Elements importants  : ~a ~&" (cdr (assoc 'important bf)))
			(format t "14. Club : ~a ~&" (cdr (assoc 'club bf)))
			(format t "15. Melodie : ~a ~&" (cdr (assoc 'melodie bf)))
			(format t "16. Ambiance : ~a ~&" (cdr (assoc 'ambiance bf)))
			(format t "17. Orchestre : ~a ~&" (cdr (assoc 'orchestre bf)))
			(format t "18. Savante : ~a ~&" (cdr (assoc 'savante bf)))
			(format t "19. Recherche en largeur~&")
			(format t "20. Recherche en profondeur~&")
			(format t "Pour quitter tapez Q ~&" )

			(format t "===============================================~&~&")
			

			(setq saisie_utilisateur (read-line))
			(cond 
				((equal saisie_utilisateur "1") (question Q1 bf))
				((equal saisie_utilisateur "2") (question Q2 bf))
				((equal saisie_utilisateur "3") (question Q3 bf))
				((equal saisie_utilisateur "4") (question Q4 bf))
				((equal saisie_utilisateur "5") (question Q6 bf))
				((equal saisie_utilisateur "6") (question Q7 bf))
				((equal saisie_utilisateur "7") (question Q8 bf))
				((equal saisie_utilisateur "8") (question Q9 bf))
				((equal saisie_utilisateur "9") (progn
					(question Q10 bf)
					(if (equal (cadr (assoc 'voix bf)) 'oui)
						(question Q5 bf)
					)
					)
				)
				((equal saisie_utilisateur "10") (question Q11 bf))
				((equal saisie_utilisateur "11") (question Q12 bf))
				((equal saisie_utilisateur "12") (question Q13 bf))
				((equal saisie_utilisateur "13") (question Q14 bf))
				((equal saisie_utilisateur "14") (question Q15 bf))
				((equal saisie_utilisateur "15") (question Q16 bf))
				((equal saisie_utilisateur "16") (question Q17 bf))
				((equal saisie_utilisateur "17") (question Q18 bf))
				((equal saisie_utilisateur "18") (question Q19 bf))				
				((equal saisie_utilisateur "19") (progn
					(nbr_instruments bf)
					(return-from diapason (moteur_avant_largeur *regles* bf))
					)
				)
				((equal saisie_utilisateur "20") (progn
					(nbr_instruments bf)
					(return-from diapason (moteur_avant_profondeur *regles* bf))
					)
				)

				((OR (equal saisie_utilisateur "Q") (equal saisie_utilisateur "q")) (return-from NIL)) ;RETURN FROM NIL QUOIIIII
				(T (print "ERREUR : Recommencez") (diapason))
			)
		)
	)
)

(defun but (regle)
	(cdadr regle)
	)

(defun enonce_but (regle) 
	(caadr regle)
	)


(defun tempo_value(*faits*)
	(caaddr (assoc 'tempo *faits*))
)

(defun applicable(regle base_faits)
	(let ((ok t))
		(dolist (x (car regle) ok)
			(if (equal (car x) 'instruments) 
					(dolist (y (cdr (assoc 'instruments base_faits)))
						(if (not (member y x)) (setq ok nil))
							)
					(if (equal 'tempo (car x))
						(cond
							((equal (cadr x) '<) (if (> (tempo_value *faits*) (caaddr x)) (setq ok NIL)))
							((equal (cadr x) '>) (if (< (tempo_value *faits*) (caaddr x)) (setq ok NIL)))
						)
						(if (not (member x base_faits :test #'equal)) (setq ok NIL))
					)
			)
		)
		ok
	)
) 



(defun moteur_avant_largeur(*regles* *faits*) 	;largeur
	(let ((bf *faits*) (br *regles*) (ok NIL))
		(while (null (cdr (assoc 'genre bf))) 
			(setq ok NIL)
			(dolist (r br)
				(if (applicable (eval r) *faits*)
					(progn
						(setq ok t)
						(setf (cdr (assoc (enonce_but (eval r)) bf)) (but (eval r)))   
						(setq br (remove r br))  	;supprimer regle de br 
						)
					)
				)
			(if (equal ok NIL) (return-from moteur_avant_largeur (format t "Le moteur n'a pas pu trouver de genre correspondant dans la base de donnees~&~&")))
		)

		(if (member (cadr (assoc 'genre bf)) gSousgenres)
			(if (not (null (cdr (assoc 'sous-genre *faits*))))
				(return-from moteur_avant_largeur (format t "~& ~& Le sous-genre de la musique est : ~a ~& ~& ~&"(cadr (assoc 'sous-genre *faits*))))
				(dolist (r br)
					(if (and (applicable (eval r) *faits* ) (member (assoc 'genre bf) (car (eval r)) :test #'equal))
						(progn
							(setf (cdr (assoc (enonce_but (eval r)) bf)) (but (eval r)))
							(return-from moteur_avant_profondeur (format t "~& ~& Le sous-genre de la musique est : ~a ~& ~& ~&"(car (but (eval r)))))
						)
					)
				)
			)
		)
		(format t "~& ~& Le genre de la musique est : ~a ~& ~& ~&"(cadr (assoc 'genre bf)))
	)
)


(defun moteur_avant_profondeur(*regles* *faits*)	;profondeur
	(let ((bf *faits*) (br *regles*) (ok NIL) (result NIL))
		(while (null (cdr (assoc 'genre bf))) 
			(setq ok NIL)
			(dolist (r br)
				(if (applicable (eval r) *faits*)
					(progn
						(setq ok t)
						(setf (cdr (assoc (enonce_but (eval r)) bf)) (but (eval r)))   
						(setq br (remove r br))  	;supprimer regle de br
						(return-from moteur_avant_profondeur (moteur_avant_profondeur br bf))
						)
					)
				)
			(if (equal ok NIL) (return-from moteur_avant_profondeur (format t "Le moteur n'a pas pu trouver de genre correspondant dans la base de donnees~&~&")))
		)

		(if (member (cadr (assoc 'genre bf)) gSousgenres)
			(dolist (r br )				(if (and (applicable (eval r) *faits* ) (member (assoc 'genre bf) (car (eval r)) :test #'equal))
					(progn
						(setf (cdr (assoc (enonce_but (eval r)) bf)) (but (eval r)))
						(return-from moteur_avant_profondeur (format t "~& ~& Le sous-genre de la musique est : ~a ~& ~& ~&"(car (but (eval r)))))
						)
				)
			)
		)
		(format t "~& ~& Le genre de la musique est : ~a ~& ~& ~&"(cadr (assoc 'genre bf)))
	)
)


(defun logo ()
    (format t "                   _________/--------|__________
                  /#0***  **  [****] **diapason#/|
                 ///////////////////////////////
                /-----------------------------/
                         '    ||    /
                           '\ /  '\ /                          DIAPASON, 
                            | |  / '\
                              |/'\   |                          Reconnaissance de genre musical
                            / |  '\/
                          /  /  /  '\
                        /    '\  '\**'\ '\
                             []    /
    	")
  )