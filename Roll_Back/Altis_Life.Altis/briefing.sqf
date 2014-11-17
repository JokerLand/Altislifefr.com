waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["serverrules","Règles Générales"];
player createDiarySubject ["safezones","Règles Safe Zone"];
player createDiarySubject ["policerules","Règles Police"];
player createDiarySubject ["rebelrules","Règles Rebelles"];
//player createDiarySubject ["civrules","Civilian Rules"];
player createDiarySubject ["illegalitems","Autres règles"];
//player createDiarySubject ["gangrules","Gang Rules"];
//player createDiarySubject ["terrorrules","Terrorism Rules"];
player createDiarySubject ["controls","Controles/Touches"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	player createDiaryRecord["changelog",
		[
			"Official Change Log",
				"
					The official change log can be found on the BIS forums (search Altis Life RPG)
				"
		]
	];

	player createDiaryRecord["changelog",
		[
			"Change Log ALFR",
				"
					Toutes les infos à propos des mises à jour exlusives à ALFR sont disponibles sur www.altislifefr.com dans la partie 'Annonce' du 'Forum'
				"
		]
	];

		player createDiaryRecord ["serverrules",
		[
			"Règlement général du serveur",
				"

				Article 1 : Le règlement s'appliquent sur l’intégralité de l'île d'Altis<br/><br/>

				Article 2 : Les zones de non-agression de l'île sont représentées par les zone verte (safezone)<br/><br/>

				Article 3 : Les policiers sont autorisés à exercer leurs fonctions sur toute l'île, y compris dans les safezone (zone donateur et camp rebelle exclus sauf raid)<br/><br/>

				Article 4 : L'exploitation de bugs en tout genre pourra être sanctionné par l'équipe du staff.<br/><br/>

				Article 5 : La duplication des items et argent sera sévèrement réprimé.<br/><br/>

				Article 6 : Un ban définitif sera appliqué dans les cas suivants : Hacking, Cheating, Exploit bug, Être Kick/BAN temporaire plus de 3 fois<br/><br/>

				Article 7 : Les points ci-dessous peuvent vous faire Kick/BAN, suivant la décision d’un Admin ou modérateur :<br/><br/>

				1. Les civils peuvent être arrêtés par le simple fait de fouiller dans les sacs ou les véhicules des policiers. Un abus de ce point peut amener un Kick.<br/>
				2. Bloquez un policiers dans l’exercice de ces fonctions de manière intentionnelle peut engendrer un Kick.<br/>
				3. Les civils ou les rebelles utilisant des armes pour tuer des policiers ou d'autres civils sur l'île d'Altis et plus particulièrement en ville de manière non RP seront considérés comme Freekiller (Freekill).<br/>
				4. Harceler les policiers sur une longue période est considéré comme du TROLL. Le trolling peut engendrer un Kick voir un BAN.<br/>
				5. Les civils/rebelles ne peuvent se déconnecter lors d’une altercation (sauf si involontaire [avertir la police]) sous peine de BAN temporaire.<br/>
				6. Les civils ne regardant pas avant de traverser une route pourront se faire arrêter par la police et écoperont d'une amende en conséquence.<br/><br/>

				Article 8 : Interdiction de sortir un véhicule de type rebelle d'un garage quelconque (garage personnel inclus) en ville exceptée sofia.<br/><br/>

				Article 9 : Tout civil qui vient de spawn pourra être arrêté par la police s'il possède des items illégal sur lui.<br/><br/>

				Article 10 : Tout civil ou rebelle présent dans un commissariat sans raison valable sera arrêté en conséquence.<br/><br/>

				Article 11 : Tout hélicoptère qui se pose dans une ville doit être agrée par la police par message et contrôlé lors de l’atterrissage.<br/><br/>

				Article 12 : Tout litige suite à un meurtre ou une action non rp doit se régler sur le TS du serveur<br/><br/>

				Article 13 : Vol de véhicule. Les points ci-dessous peuvent vous faire Kick/BAN, suivant la décision d’un Admin :<br/><br/>

				1. Il est interdit de détruire un véhicule civil volé et il doit être utilisé a des fins RP uniquement.<br/>
				2. Il est interdit de revendre un véhicule d'une valeur de 150 000 euros ou plus.<br/>
				3. Les hélicoptères civils ne se trouvant pas en safezone peuvent être volés, déplacés et utilisés par autrui à des fins RP mais en aucun cas vendus ou détruits. Si l'hélicoptère venait à être détruit, la somme sera prélevé automatiquement par l'état sur le compte bancaire du responsable du vol.<br/>
				4. Il est interdit de voler le véhicule d'une même personne plus d'une fois dans un même reboot.<br/><br/>

				Article 14 :Vol à main armée :<br/><br/>

				1. Quand vous êtes entrain de subir un vol à main armée, il est conseillé de collaborer.<br/>
				2. Si il y a FUITE de la victime, il est autorisée d'immobiliser le véhicule ou si ce n'est pas efficace...la mort.<br/>
				3. Si il y a collaboration de la victime il est interdit de prendre plus de 50% de la marchandise légale (sur tout type de véhicule civil).<br/>
				4. Interdit de voler le véhicule civil si la personne coopère pendant le braquage.<br/>
				5. Interdit de voler un civil qui coopère si il lui reste moins de 50% de marchandise légale.<br/>
				6. Il est interdit de braquer la même personne plus d'une fois par reboot.<br/><br/>

				Article 15 : La Douane<br/><br/>

				1. Si vous apercevez aucun Policier, alors garer votre véhicule a l'extérieur de la Douane, sortez de votre véhicule ensuite en 'Communication Direct' appelez un policier, s'il y a aucune réponse vous êtes autorisé à passer ; même processus pour le retour.<br/>
				2. Tout groupe civil ou rebelle ne doit pas occupé la douane plus de 15 minutes d'affilées entre chaque reboot.<br/>
				3. En cas de tentative de reprise de douane de la part des forces de l'ordre, les policiers et les rebelles/civils armés ne sont pas autorisés à revenir sur zone après un décès.<br/>
				4. Les portes nord/sud ne doivent pas être occupées simultanément par un même groupe rebelle sous peine de sanction.<br/><br/>

				Article 16 : Les attaques de banques. Les points ci-dessous peuvent vous faire Kick/BAN, suivant la décision d’un Admin :<br/><br/>

				1. Avoir au moins 8 policiers de connectés pour pouvoir faire une attaque de banque.<br/>
				2. N’oubliez pas que la police peut investir le bâtiment et vous éliminer (Si il n’y a pas de revendication ou otage de la part des criminels)<br/>
				3. 1 seule attaque de banque peut être faite toutes les 4 heures (1 par reboot).<br/>
				4. Il est interdit pour les policiers de mettre en fourrière les véhicule des assaillants de la banque au cours du braquage.<br/>
				5. Par soucis de réalisme, les policiers décédés peuvent revenir sur zone après une attente de 5 minutes dans leur commissariat (principe de renfort de police). Pour les rebelles, le délai d'attente sur point de spawn (tout point de spawn confondu) pour cette action rp s'élève à 10 minutes. Une fois le délai écoulé, le rebelle peut retourner sur zone. Chaque rebelle et policier dispose d'un retour sur zone (donc 2 vies). Si la banque est sous-contrôle de la police et sécurisée, les retours sur zone sont automatiquement annulés car l'action rp est considérée comme terminée.<br/><br/>

				Article 17 :Les prises d’otages. Elles ne seront pas prise en compte si les conditions suivantes ne sont pas respectés :<br/><br/>

				1. Envoyer les coordonnés ou lieu.<br/>
				2. Il est interdit d’avoir de faux otages et assurez-vous qu’ils ont le temps nécessaire devant eux pour jouer l’otage.<br/>
				3. Avoir au moins 8 policiers de connectés pour pouvoir faire une prise d'otage<br/>
				4. Interdit d’annoncer un faux nombre d’otage (Ex:annoncer 5, réalité 1)<br/><br/>

				Article 18 : Règles d’une nouvelle vie. Les points non respectés ci-dessous peuvent vous faire Kick/BAN, suivant la décision d’un Admin :<br/><br/>

				1. Si vous êtes tués ou mort accidentellement vous serez retiré de la 'WANTED LIST' (sauf si vous vous tué intentionnellement)<br/>
				2. Si vous mourez, vous ne pourrez pas faire vengeance vous même.<br/>
				3. Si vous êtes tués par un FreeKill, ce n’est pas une nouvelle vie.<br/>
				4. Si vous cliquez sur réapparition et ce, peu importe la raison, ce n’est pas une nouvelle vie.<br/>
				5. Si vous êtes poursuivis par des personnes qui veulent vous nuire et que vous mourez dans un accident, ceci est considéré comme une nouvelle vie.<br/>
				6. Vous ne pouvez pas retourner sur le lieu de votre mort (excepté pour la banque)<br/><br/>

				Article 19 : FreeKill. Les points ci-dessous peuvent vous faire Kick/BAN, suivant la décision d’un Admin :<br/><br/>

				1. Tuer quelqu’un sans raison RP.<br/>
				2. Déclarer une rébellion n’est pas une raison pour tuer tout le monde, même si cela concerne la police.<br/>
				3. Une fusillade sans raison relative au RP, démarrée par des policiers ou civils/rebelles sera considérée comme du FK(=FreeKill).<br/>
				4. Si vous vous retrouvez dans une zone de conflit, quittez la zone au plus vite pour préserver votre vie<br/>
				5. Tuer quelqu’un pour se protéger soi-même ou quelqu’un d’autre n’est pas du FreeKill<br/><br/>

				Article 20 : Véhicules. Les points ci-dessous peuvent vous faire Kick/BAN, suivant la décision d’un Admin :<br/><br/>

				1. Écraser des gens sans raison valable. Des accidents peuvent néanmoins arriver, la police sera là pour vérifier.<br/>
				2. Se mettre volontairement devant des véhicules pour se faire tuer.<br/>
				3. Percuter d’autre véhicules pour les endommager et les exploser sauf raison RP.<br/>
				4. Essayer d’entrer dans un véhicule qui ne vous appartient pas pour NUIRE à son propriétaire.<br/>
				5. Voler un véhicule pour le DÉTRUIRE ou le mettre à l’eau.<br/><br/>

				Article 21 : Aviation. Les points ci-dessous peuvent vous faire Kick/BAN, suivant la décision d’un Admin :<br/><br/>

				1. Crasher un hélicoptère dans quoi que ce soit (buildings, autres véhicules,etc).<br/>
				2. Voler au dessus des villes à moins 300 m est illégal.<br/>
				3. Voler un hélico de manière non RP ou si le propriétaire l'a déverrouillé depuis moins de 60 sec.<br/>
				4. Le survol des zones urbaines est interdit sauf autorisation express et individuelle de la police, une réponse négative équivaut à un refus d'atterrissage.<br/>
				5. Tout hélicoptère qui ne se pose pas suite à l'activation des sirènes de police subira des tirs.<br/><br/>

				Article 22 : Les bateaux. Les points ci-dessous peuvent vous faire Kick/BAN, suivant la décision d’un Admin :<br/><br/>
				1. Voler un bateau<br/>
				2. Percuter des nageurs.<br/><br/>

				Article 23 : Les armes légales sont au nombre de 4 : Le roock, le zbur, la pdw, la vermin. Tout autre arme vendue sur l'île d'Altis sera illégale<br/><br/>

				Article 24 : Tout individu portant une tenue rebelle en ville pourra être contrôlé par les forces de l'ordre et devra s'en séparer. Or agglomération importante, seule la guilli est illégale.<br/><br/>

				Article 25 : Le « side channel » ne doit pas être utilisé pour transmettre des informations compromettant le RP de l'île. De plus, ce canal ne doit être utilisé uniquement par écrit, pas par oral. Tout manquement à cet article pourra être sanctionné par le staff du serveur.<br/><br/>

				Article 26 : L'allure doit toujours être en adéquation avec votre environnement, les vitesses ci-dessous représentent les vitesses maximales suivant les différentes zones. Les limitations de vitesse sont de 50 km/H en ville, 70 km/h dans un rayon de 2 km autour des villes. La vitesse maximale sur les autres routes est de 130 km/h.<br/><br/>

				Article 27 : Immunité totale pour les médecins, interdiction de les prendre en otage ni de les braquer. Leur principale utilité est de sauver des vies, pas d'y nuire.<br/><br/>

				Article 28 : Le vol de véhicules de médecin est interdit en tout lieu sous peine de sanction punitive.<br/><br/>

				Article 29 : La vente d'arme de police est illégale, la possession d'équipement policier dans une maison civile est interdite sous peine d'expulsion définitive de l'île.<br/><br/>

				Article 30 : Tous les véhicules dont le moteur est immergé dans l'eau (exemple: zone de l’archéologie) seront automatiquement mis en fourrière par la police par soucis de bon sens RP.<br/><br/>

				Article 31 : Tout véhicule rebelle présent sur Altis peut être détruit ou utilisé par autrui de manière RP excepté les véhicules présents en safezone. Aucun remboursement concernant les véhicules rebelles ne sera pris en compte par l'état suite à l'application de cette nouvelle loi. Si un véhicule rebelle appartenant à une team rebelle lambda tombe entre les mains d'une autre team rebelle ou celles de la police (par la force ou non), les nouveaux possesseurs ont le droit de procéder à la destruction du véhicule ou utiliser celui ci (les forces de l'ordre ont obligation de le détruire). Je vais énumérer la liste des véhicules concernés par cette règle: pick up rebelle armé ou non, hummingbird rebelle, orca rebelle, tous les types de tempest, ifrit armé ou non.<br/><br/>

				Article 32 : Vous n'avez plus aucun moyen de communication (TS , Channel Groupe ...) à partir du moment où vous êtes arrêté ( Règle implicite mais il faut la mettre noir sur blanc car certains ne le voient pas ainsi ).<br/>

				"
		]
	];

// Safezone
	player createDiaryRecord["safezones",
		[
			"Réglement des Safe Zones",
				"
					1. Interdiction de voler les véhicules même si le propriétaire l'a laissé ouvert sous peine de sanctions punitives.<br/><br/>

					2. Interdiction d'agresser et dérober les individus dans ces zones.<br/><br/>

					3. Interdiction d'avoir son arme en main et de l'utiliser sauf en cas de légitime défense.<br/><br/>

					4. Interdiction d'utiliser son véhicule à des fins meurtrières.<br/><br/>

					5. Les policiers sont autorisés à exercer leurs fonctions dans ces zones (zone donateur et camp rebelle exclus sauf raid)<br/>
				"
		]
	];

// Police Section
	player createDiaryRecord ["policerules",
		[
			"Réglement police",
				"
				1. Si un véhicule lambda récidive lors d'un refus d'obtempérer (2 passages minimums devant les forces de l'ordre sans s’arrêter suite à la demande de ces premiers), les forces de l'ordre sont autorisés à ouvrir le feu à l'arme létale uniquement sur les roues du véhicule dans le but de neutraliser l'individu. Tout décès non souhaité suite à une tentative de neutralisation ne pourra être retenu contre les forces de l'ordre.<br/><br/>
				2. Si le nombre de policiers en service est inférieur à 10, les policiers en permission ont obligation de quitter leur vie civile et de se connecter en policier.<br/><br/>
				3. Les policiers ont obligation de faire passer en priorité leur RP policier avant tout autre RP du serveur et ont donc obligation de prendre leur service en cas de demande de renfort de la part des hauts-gradés.<br/><br/>
				4. Les véhicules contenant de la drogue doivent être détruit OU si l'officier en charge le décide et si l'individu consent à payer une amende conséquente (à fixer en interne avec ses collègues), le véhicule sera mise en fourrière. L'individu doit être envoyé en prison.<br/><br/>
				5. Les policiers ne sont pas autorisés à sortir des véhicules aux garages civils.<br/><br/>
				6. Les policiers se doivent de répondre à toute demande d’atterrissage en ville en indiquant un lieu précis pour le contrôle.<br/><br/>
				7. Les hélicos de police ont le droit de décoller pour surveiller le mur de la douane mais pas plus de 5 min toutes les 30 minutes.<br/><br/>
				8. Toujours se référer au plus haut gradé en service avant de prendre une quelconque décision entraînant la responsabilité de la police ou le matériel mis à leur disposition.<br/><br/>
				9. L'utilisation du canal groupe doit être occasionnel et seulement pour transmettre des informations utiles. Pour toute autre discussion, utiliser le TS.<br/><br/>
				10. Tout véhicules rebelles de type ifrit, pick up armé, hélicoptère et tempest doivent être interceptés et détruits<br/><br/>
				11. Tout raid sur telle ou telle habitation doit être effectué avec un effectif de 4 policiers minimum et encadré par un haut-gradé (à partir de major). il est autorisé d'effectuer un raid seulement s'il y a de fortes présomptions sur le propriétaire.<br/><br/>
				12. Tout raid effectué sur un lieu illégal ou une zone sensible doit compter un effectif minimum de 4 policiers dont un haut-gradé, excepté le dealer de drogue de Kavala (patrouille ordinaire et intervention sur zone autorisée)<br/><br/>
				13.Les médecins peuvent être réquisitionné pour une intervention de police et seront équipés en conséquence d'un gilet par balle fournis par les force de l'ordre, gilet qui sera restitué par la suite aux forces de l'ordre.<br/><br/>
				14. Les policiers ne sont pas autorisés à se rendre au camp rebelle en dehors de raid organisé. Les rebelles seront prévenus au préalable.<br/><br/>
				15. Les policiers n'ont aucunement le droit de faire des retours sur zone sauf pour les attaques de banque (attendre 5min au poste avant de revenir).<br/><br/>
				16. Toute personne recherchée par Interpole pour un montant supérieur ou égal à 30 000 (et non pas par rapport à l'amende dressée par le policier) doit être expédiée en prison par les forces de l'ordre.<br/><br/>
				17. Lorsqu'un individu refuse la fouille de son sac lors d'un contrôle de routine de la part des forces de l'ordre, les policiers ont la possibilité de ramener l'individu au commissariat pour une fouille approfondie. Si celui ci persiste dans son refus, l'officier est dans son droit de mettre l'individu en prison pour un refus d’obtempérer. Cette décision ne peut être prise qu'à partir du grade de brigadier.<br/><br/>
				18. La Murcielago de Police est une voiture unique il est donc interdit d'en sortir plusieurs en même temps. C'est également un véhicule d’exception. (Tout abus sera sanctionné par une augmentation du prix et pour finir le retrait de la voiture)<br/>
				"
		]
	];

// Rebel Section
	player createDiaryRecord ["rebelrules",
		[
			"Réglement Rebelles",
				"
				Un rebelle est quelqu’un qui se soulève, en utilisant les armes, contre un gouvernement/police. Cependant, en raison du petit effectif de police comparé au nombre possible de rebelles, tous les rebelles doivent attaquer avec une raison spécifique. Etre civil et faire preuve de bon sens rendra l’expérience de jeu plus agréable pour tous.<br/><br/><br/>

				1. La rébellion n’excuse pas le RDM ou FK ( kill random ou free kill ) et faire du RDM peut être suivi d’un ban.<br/><br/>
				2. La rébellion doit être RP, et doit différer de l'attaque répétitive de banque.<br/><br/>
				3. Le rébellion n’inclut pas de faire la guerre à la police sans revendications préalables.<br/><br/>
				4. Interdit de voler ou dégrader le véhicule civil tant que la personne coopère.<br/><br/>
				5. Interdit de camper plus de 15 minutes sur une zone légale/illégale<br/><br/>
				6. Si un groupe rebelle attaque la banque, aucun autre groupe rebelle ne peut être présent sur les lieux.<br/><br/>
				7. Si vous êtes menacé ou poursuivi par la police, vous pouvez vous défendre mais seulement dans ces conditions et premièrement par une sommation.<br/><br/>
				8. Votre vie est ce qui vous est le plus chère ! Il vaut mieux vivre que mourir même si l'on doit passer par la case 'prison' Jouez le jeu ! Soyez Fairplay.<br/><br/>
				9. Les events organisés par les civils n'incluant pas la présence des forces de l'ordre ne doivent pas être dérangés par un quelconque groupe rebelle ou civil armé.<br/><br/>
				10. Le pick up rebelle non armé et l’hélicoptère rebelle sont autorisés sur les routes d'Altis excepté en ville, sofia à part.<br/><br/>
				10bis. Les voitures blindés non-camouflées sont légales.<br/><br/>
				11. Les véhicules rebelles armés ou de type Ifrit et Tempest (de tout type) sont illégaux sur toute l'île et seront détruit par les forces de l'ordre.<br/><br/>
				12. Tout ouverture de feu sur policiers, civils ou autres rebelles sur l'île d'Altis se doit d'être accompagnée d'une raison RP valable, le meurtre par plaisir ou caprice n'est pas autorisé.<br/><br/>
				13. Tout groupe rebelle prévoyant une quelconque action ne doit pas dépasser un effectif de 10 personnes si le nombre de policiers en service est supérieur à 8 et un effectif de 7 personnes si le nombre de policiers en service est inférieur à 8.<br/><br/>
				14. Le camp rebelle est une safezone, aucun tir ni vol ne sera toléré dans cette zone sous peine de ban.<br/><br/>
				15. Les policiers ne sont pas autorisés à se rendre au camp rebelle excepté en dehors de raid organisé. Les rebelles seront prévenus au préalable.<br/><br/>
				16. Aucun rebelle d'Altis n'est autorisé à revenir sur zone suite à son décès excepté dans le cadre des braquages de banque. Le délai d'attente sur point de spawn (tout point de spawn confondu) pour cette action rp s'élève à 10 minutes. Une fois le délai écoulé, le rebelle peut retourner sur zone. Chaque rebelle dispose d'un retour sur zone (donc 2 vies). Si la banque est sous-contrôle de la police et sécurisée, les retours sur zone sont automatiquement annulés car l'action rp est considérée comme terminée.<br/><br/>
				17. Toutes alliances entre divers groupes rebelles doivent être supprimées à partir d'aujourd'hui. Chaque groupe rebelle est donc livré à lui même. Je vais clarifier ce point ici même. Lors d'une action rp, il n'y a donc plus la possibilité d'appeler à l'aide une autre team rebelle ni de collaborer pour une action commune engageant un échange de coups de feu contre les forces de l'ordre ou contre une team rebelle lambda. Seuls les pactes de non-agression sont autorisés (Un pacte de non-agression est un traité entre deux ou plusieurs groupes rebelles dans le but d'éviter un conflit armé entre eux et de résoudre leurs problèmes par des négociations diplomatiques)<br/><br/>
				18. Tout véhicule rebelle présent sur Altis peut être détruit ou utilisé par autrui de manière RP excepté les véhicules présents en safezone. Aucun remboursement concernant les véhicules rebelles ne sera pris en compte par l'état suite à l'application de cette nouvelle loi. Si un véhicule rebelle appartenant à une team rebelle lambda tombe entre les mains d'une autre team rebelle ou celles de la police (par la force ou non), les nouveaux possesseurs ont le droit de procéder à la destruction du véhicule ou utiliser celui ci (les forces de l'ordre ont obligation de le détruire). Je vais énumérer la liste des véhicules concernés par cette règle: pick up rebelle armé ou non, hummingbird rebelle, orca rebelle, tous les types de tempest, ifrit armé ou non.<br/><br/><br/><br/>

				'Rappel' (Règles générales Article 14) Vol à main armée :<br/><br/>
				1. Quand vous êtes entrain de subir un vol à main armée, il est conseillé de collaborer.<br/>
				2. Si il y a FUITE de la victime, il est autorisée d'immobiliser le véhicule ou si ce n'est pas efficace...la mort.<br/>
				3. Si il y a collaboration de la victime il est interdit de prendre plus de 50% de la marchandise légale (sur tout type de véhicule civil).<br/>
				4. Interdit de voler le véhicule civil si la personne coopère pendant le braquage.<br/>
				5. Interdit de voler un civil qui coopère si il lui reste moins de 50% de marchandise légale.<br/>
				6. Il est interdit de braquer la même personne plus d'une fois par reboot.<br/>
				"
		]
	];

// Illegal Items Section
	player createDiaryRecord ["illegalitems",
		[
			"Autres Règles",
				"
				D'autres règles plus spécifiques à certains aspect du jeu sont disponible sur www.altislifefr.com dans la partie 'Règles' du Forum.<br/>
				Merci de les consulter également.<br/>

				Nous vous souhaitons une bonne continuation sur les serveurs www.altislifefr.com.
				"
		]
	];


// Controls Section

	player createDiaryRecord ["controls",
		[
			"Controles/Touches",
				"
				Windows Gauche: Touche d'interaction principale, intéragir avec les Ressources/Voitures/Maisons/Etc.. (Farmer,Réparer,etc) et intéragir avec les Civils pour les policiers. Peut être modifiée ESC->Configurer->Controles->Personnalisé->Touche Utilisateur 10<br/>
				Y: Ouvrir Menu Joueur<br/>
				U: Verouiller/Déverouiller Voitures/Maisons/Etc..<br/>
				T: Coffre Vehicule<br/>
				H: Main derrière la tête<br/>
				Shift + F: Ranger Arme<br/>
				Shift + G: Assomer (Si Civil)<br/>
				Shift + R: Menotter (Si Policier)<br/>
				Shift + L: Gyrophares (Si Medecin ou Policier)<br/>
				F: Sirène Police/Ambulance (Si Medecin ou Policier)<br/>
				"
		]
	];