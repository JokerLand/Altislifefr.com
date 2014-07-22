waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["serverrules","General Rules"];
player createDiarySubject ["policerules","Police Procedures/Rules"];
player createDiarySubject ["safezones","Safe Zones (No Killing)"];
//player createDiarySubject ["civrules","Civilian Rules"];
player createDiarySubject ["illegalitems","Illegal Activity"];
//player createDiarySubject ["gangrules","Gang Rules"];
//player createDiarySubject ["terrorrules","Terrorism Rules"];
player createDiarySubject ["controls","Controls"];

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
			"Change Log Altis Life FR",
				"
					ChangeLogs disponibles sur www.altislifefr.com.
				"
		]
	];

		player createDiaryRecord ["serverrules",
		[
			"Exploits", 
				"
				These are considered exploits, and you will not be kicked, but banned.<br/><br/>

				1. Getting out of jail via any method other than paying bail or escaping via helicopter.<br/>
				2. Killing yourself to get out of roleplay. Getting out of being tazed, restrained, arrested, jail, etc. If the log shows you got arrested, then you died, you will be banned. Do not pay bail and kill yourself for an easy ride home. Walk you lazy turd.<br/>
				3. Duping items and/or money. If someone sends you an unobtainable amount of money right at the start of the game, report to an admin IMMEDIATELY and transfer said money to an admin. Do this ASAP or an admin could ban you if they see that much on you without question.<br/>
				4. Using clearly hacked items. If a hacker comes in and spawns unobtainable items, you could be banned for using said items. Report the items to the admins immediately and stay away from them.<br/>
				5. Abusing bugs or game mechanics for gain. Is there a replicating gun somewhere? Report it and leave it alone. If an admin catches you abusing the glitch, ban.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["safezones",
		[
			"Safe Zones",
				"
					If bombing (bombing can be intentionally exploding a vehicle), robbing, or killing occurs around these or in these areas it is punishable by ban.<br/><br/>
					
					Any vehicle spawn (shop or garage)<br/>
					Any weapon shop<br/>
					All Police HQs<br/>
					Rebel Outposts<br/>
					Donator Shops<br/><br/>
				"
		]
	];
					
	
	player createDiaryRecord ["serverrules",
		[
			"Bannable Offenses", 
				"
				Consider this your one and only warning.<br/><br/>
				
				1. Hacking<br/>
				2. Cheating<br/>
				3. Exploiting (See 'Exploits')<br/>
				4. Being kicked 3 or more times.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Cop Interaction", 
				"
				Items on this list may result in your removal from the server and/or ban, based on the admins discretion.<br/><br/>
				
				1. Civilians can be arrested for looking in cops' backpacks/vehicles. Constantly doing this will result in your removal from the server.<br/>
				2. Civilians can be arrested for following cops in game in order to give away their position.<br/>
				3. Civilians or Rebels who take up arms to kill cops in town or elsewhere for no RP reason will be considered RDMing. See RDMing section.<br/>
				4. Following and or harassing cops for long periods of time will be considered griefing and/or spamming, and will result in your removal from the server.<br/>
				5. Actively blocking cops from doing their duties can lead to your arrest. Constantly doing this will result in your removal from the server.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Boats", 
				"
				Items on this list may result in your removal from the server and/or ban, based on the admins discretion.<br/><br/>
				
				1. Repeatedly pushing boats without permission.<br/>
				2. Pushing a boat with the intention of hurting or killing someone. This is not RP, it is just a flaw in the mechanics.<br/>
				3. Purposefully running over swimmers/divers.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Aviation", 
				"
				Items on this list may result in your removal from the server and/or ban, based on the admins discretion.<br/><br/>
				
				1. Purposefully ramming a helicopter into anything. Other helicopters, vehicles, buildings.<br/>
				2. Flying below 150m over the city constantly. Once is illegal, more than that you risk crashing into the city, thus against server rules.<br/>
				3. Stealing helicopters without proper warning and significant time for the driver to lock the vehicle. If they land and run away without locking, fine, if they just get out and you get in before they get a chance to lock it, no no.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Vehicles", 
				"
				Items on this list may result in your removal from the server and/or ban, based on the admins discretion.<br/><br/>
				
				1. Purposefully running people over (VRDM). There are accidents, and then there is going out of your way to run someone over.<br/>
				2. Purposefully throwing yourself in front of vehicles in order to die/get hurt.<br/>
				3. Ramming into other vehicles in order to cause an explosion.<br/>
				4. Constantly trying to enter vehicles that do not belong to you in order to grief the vehicle owner, and not trying to RP.<br/>
				5. Stealing a vehicle just to crash it or otherwise destroy it.<br/>
				6. Purchasing multiple vehicles for the purpose of doing any of the above.<br/>
				7. The only reason for shooting at a vehicle would be to disable it and/or fire warning shots in a role-play scenario.You are not to deliberately destroy enemies vehicles.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Communication Rules", 
				"
				Items on this list may result in your removal from the server and/or ban, based on the admins discretion.<br/><br/>
				
				1. Side Chat may not be used to play music or otherwise micspam.<br/>
				2. Spamming any chat channel will result in your removal.<br/>
				4. Teamspeak channels are split up into areas for a reason. Cops must be in the cop channels at all times.<br/>
				5. Civilians cannot be in any cop channels on teamspeak in order to gather information on their location or movements. Civs caught doing this will be removed the channel. Repeat offenders can be kicked or banned from both the game and teamspeak.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Random Deathmatching (RDM)", 
				"
				Items on this list may result in your removal from the server and/or ban, based on the admins discretion.<br/><br/>
				
				1. Killing anyone without a roleplay cause.<br/>
				2. Declaring a rebellion is not a cause to kill anyone, even cops.<br/>
				3. Cops and civilians/rebels can only commence in a shootout if there are reasons relating to a crime.<br/>
				4. If you are killed in the crossfire of a fight, it is not RDM.<br/>
				5. Killing someone in an attempt to protect yourself or others is not RDMing.<br/>
				6. Shooting a player without giving reasonable time to follow demands is considered RDM.<br/><br/>
				
				These are all judged by admins on a case by case basis.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["serverrules",
		[
			"New Life Rule", 
				"
				The New Life Rule applies to police and civilians.<br/><br/>
				
				Items on this list may result in your removal from the server and/or ban, based on the admins discretion.<br/><br/>

				1. If you are killed you must wait 15 minutes before returning to the scene of your death.<br/>
				2. If you die during roleplay your past crimes are forgotten, but you also cannot seek revenge.<br/>
				3. If you are RDM'd, it is not a new life.<br/>
				4. If you manually respawn, it is not a new life.<br/>
				5. If you purposefully kill yourself to avoid roleplay, it is not a new life.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Don't Be A Dick!", 
				"
				If an admin has to tell you that you are being a dick, you are doing dickish things.<br/>
				Causing others grief, disrupting roleplay, the list goes on.<br/>
				Just don't be a dick okay?<br/>
				This rule may be invoked at an admin's discretion.<br/><br/>
				"
		]
	];
	
// Seal Team Sloth Section

	player createDiaryRecord ["sealteamsloth",
		[
			"Teamspeak",
				"
				ts3.dedizones.com:11009<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["sealteamsloth",
		[
			"Website/Forums",
				"
			    www.altislifefr.com<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["sealteamsloth",
		[
			"Donations",
				"
				En Maintenance !<br/><br/>
				De retour prochainement, veuillez nous en excuser.<br/><br/>
				"
		]
	];
		
	
// Police Section

	player createDiaryRecord ["policerules",
		[
			"Contre résistance",
				"
				1. Toute personne rebelle commettant des actes rebelles sera considéré comme telle.<br/>
				2. Toute personne portant une tenue rebelle autre que la Première et celle du Leader en pleine ville sera considéré comme telle.<br/>
				3. La force létale pourra être utilisé contre les personnes rebelles si elles émettent une menace quelconque ou si il y a délie de fuite(immobilisé le véhicule )<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Braquage de banque",
				"
				1. Si la banque est braquée, tous les gendarmes disponibles doivent êtres prêts à recevoir les ordres des ses supérieurs et à les executer.<br/>
				2. Les officiers de patrouilles doivent immédiatement aller à la banque sous ordre d'un supérieur, les petites infractions/arrestations doivent être laissées au second plan.<br/>
				-La force létale doit être utilisée en toute dernière alternative. Toutes les autres options doivent être prises en considération.<br/>
				-Les gendarmes doit évacuer les civils hors de la banque avant toute intervention sur la banque.<br/>
				-Tous civils bloquant intentionnellement les gendarmes qui pénètre dans l’enceinte de la banque sera arrêté, tazé, ou bien tué.<br/>
				-Aucun véhicule armé pour défendre la banque. (Hunter HMG, …)<br/>
				Les petites infractions/arrestations doivent être laissées au second plan.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Aviation",
				"
				1. Aucun hélicoptère ne doit atterrir dans les limites des villes(Héliport de l'hopital). Sauf, s’il en a reçu l’autorisation par l’un de ses supérieurs. (Les exceptions sont listées si dessous.)<br/>
				-L’héliport peut être fermé sur une courte période de temps à cause d’une opération en cours, mais il ne peut jamais être fermé sur une longue période.<br/>
				-Les hélicoptères sont autorisé à atterrir dans les champs des collines au nord de la tour radio.<br/>
				-Les hélicoptères ne peuvent pas voler en dessous de 200m au dessus des villes.<br/>
				-Les hélicoptères, civils ou gendarmes, ne peuvent en aucun cas faire du vol stationnaire au dessus des villes, hors des opération de gendarme dans les cas des hélicoptères de la gendarmerie.<br/>
				-Tous les hélicoptères ne peuvent atterrir sur une route.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Zones illégales", 
				"
				1. Ne pas entrer dans les zones illégales hors raid (voir raid/camping).<br/>
				2. Si vous poursuivez quelqu’un dans une zone illégale, appelez des renforts. (pour être un minimum de 4).<br/>
				3. Les policiers ne peuvent en aucun cas camper sur une zone illégale plus de 10 minutes par heures.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Patrouilles", 
				"
				1. Un gendarme patrouillant sur les routes de Altis cherche des véhicules abandonnés, des activités criminelles ou des conduites dangereuses.<br/>
				2. Les patrouilles peuvent être effectuées à pied dans les villes et en véhicule en dehors.<br/>
				3. Les patrouilles ne peuvent pas entrer dans les zones illégales.(sauf raid/camping)<br/>
				4. Si la poursuite d’un/des fugitif(s) se terminent dans une zone safe, vous pouvez continuer cette pousuite de ce(s) fugitif(s) à l’intérieur de cette zone. (seulement eux).<br/>
				5.Une patrouille doit être constitué de deux unités, ceci est obligatoire(sauf dans le cas où il y a manque d'effectif, alors il est conseillé de rester dans les villes)<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Barrages", 
				"
				Préambule : La police est vivement encouragée à placer des Barrages dans des endroits stratégiques afin de combattre les activités illégales et rendre les routes sécuritaires.<br/><br/>
				
				1. Un barrage doit être fait de 2 gendarmes ou plus et utiliser deux véhicules ou plus.<br/>
				2. Un barrage ne peut être placé à moins de 500m d’une zone illégales.<br/>
				3. Les barrages ne peuvent se placer que sur une route.<br/>
				4. Les barrages ne doivent pas être marqués sur la carte.<br/><br/>

				Les procédures d’un barrage:<br/>
				1. Demandez au conducteur du véhicule de s’arrêter sur le bas-côté de la route et de couper le moteur.<br/>
				2. Demandez au conducteur et aux passagers s’ils possèdent des armes (si c’est le cas, ne leur passer pas immédiatement les menottes et demander leur simplement de baisser leurs armes).<br/>
				3. Demandez au conducteur et aux passagers de descendre du véhicule.<br/>
				4. Demandez à tout le monde de se mettre sur le bas-côté de la route de manière à sécuriser les lieux par rapport au flux de voiture.<br/>
				5. Demandez si vous pouvez procéder à un contrôle.<br/>
				6. S’ils acceptent, demandez aux occupants du véhicule si vous pouvez leur passer les menottes afin de les contrôler.<br/>
				7. Après le contrôle effectué, demandez à tous les occupants du véhicules de regagner leur voiture.<br/>
				8. Pensez à vérifier la « WANTED LIST », leur destination et la nature de leur activités.<br/>
				9. Dans le cas ou la personne aurait des substances illicites, vous pouvez fouiller leurs sacs à dos et demandez lui de vous donner sa marchandise. Ce point fait, une amende ou arrestation est requise, dépendant du crime commis.<br/>
				10. Vous n’avez en aucun cas le droits de fouiller un sac, si il ne possède de véhicules et tenues rebelles, ou de substances illicites.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Vehicules", 
				"
				1. Les véhicules garés sur le bas-côté de la route ne doivent pas être mis à la fourrière.<br/>
				2. Les véhicules qui semble abandonnés, cassés ou sans conducteur, peuvent être mis à la fourrière.<br/>
				3. Tout véhicules qui n’a pas bougé depuis un certain temps peut être mis à la fourrière.<br/>
				4. Vérifiez si le propriétaire est en ligne ou hors ligne, avant de mettre le véhicule à la fourrière.<br/>
				5. Interdit de mettre un véhicule à la fourrière si l’action n’est pas finit.<br/>
				6. La mise à la fourrière est une part importante de la gendarmerie. Elle permet de nettoyer les rues et de garder le serveur moins laggy. Les véhicules rebelles sont strictement interdits dans les villes. Tout officier de la gendarmerie qui croise ou voit un véhicule rebelle dans ou en dehors des villes doit tenter de l’arrêter.<br/><br/>
				
				Véhicules rebelles :<br/>
				Ifrit<br/>
				Littlebird (Rebelle Modèle)<br/>
				Pick-up (Rebelle Modèle)<br/>
				Pick-up armée<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Arrestation et Contravension",
				"
				Préambule : Les arrestations doivent être faites pour des criminels qui se mettent ou mettent en danger la vie d’autrui.<br/><br/>

				1. Vous pouvez arrêter une personne si son amende s'élève a plus de 30 000 euros<br/>
				2. Vous devez dire à la personne que vous l’arrêtez et les raisons de cette arrestation.<br/>
				3. Si un civil est recherché pour diverses raisons, vous devez l’arrêter et n’utiliser la force létale que si votre vie est en danger ou si la personne tente de fuire(immobilisation du véhicule). Mettre une amende à un civil est considéré comme un avertissement, s’il récidive une arrestation peut être de mise.<br/>
				4. Les amendes doivent correspondre à un prix raisonnable.<br/>
				5. Le montant des amendes se basent sur la nature des crimes commis.<br/>
				6. Le fait de refuser une amende est un motif d’arrestation.<br/><br/>
				"
		]
	];
		
	player createDiaryRecord ["policerules",
		[
			"Armes légal", 
				"
				Un policiers n'est jamais autorisé à donner une arme à un civil. Si constaté vous vous exposez à avoir un blame sur le serveur et être radié des forces de l'ordre.<br/><br/>

				Armes légales avec un port d’arme :<br/>
				Rook<br/>
				PDW 9mm<br/>
				Toute autre arme sera considérée comme illégale.<br/>
				1. Les civils n’ont pas la permission de porter une arme dans l’enceinte des villes, ils doivent l’avoir dans leurs sac.<br/>
				2. Les civils peuvent porter une arme en main en dehors des villes, cependant l’arme doit être baissée (double CTRL).<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Utilisation de la force non létale",
				"
				Préambule : Pour le moment le tazer est la seule forme de force non létale.<br/><br/>

				1. Le tazer ne peut être utilisé que pour immobiliser une personne refusant de coopérer.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Raid/Camp",
				"
				Préambule : Un raid est défini par un squad de 4 gendarmes ou plus, dans le seul but de rentrer dans une zone illégale. Cette démarche a pour intention d’interpeller des suspects pratiquant une activité illégale.<br/><br/>

				1. Tout civil dans la zone peut être fouiller et arrêter.<br/>
				2. Si il n’y a aucun fait illégal de trouver pendant le raid, l’officier doit laisser partir les civils.<br/>
				3. La force létale est autorisée uniquement si la situation ne permet plus aucun autre recours, et afin de mobiliser un véhicule sur zone avant qu’il ne s’enfuit !<br/>
				4. Après la fin d’un raid, tous les officiers doivent quitter la zone dans les 15 minutes qui suivent.<br/>
				5. Il est possible de faire 2 RAID par reboot avec un écart de 60 minutes minimum<br/>
				6. Des renforts peuvent être appelés. Cependant, il est interdit d’appeler des officiers tombés durant le raid (voir les règles de nouvelle vie).Le camping est le fait de rester de façon prolongée dans une zone.<br/>
				7. Les barrages ne sont pas considérés comme du camping<br/>
				8. Faire du camping dans les zones illégales. C’est rester plus que nécessaire après un raid, ou regarder ET prendre des mesures contre les civils qui entrent dans cette zone.<br/>
				9. Il est interdit de camper plus de 15 minutes sur la même zone (légale/illégale).<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Utilisation de la force létale",
				"
				1. La force létale n’est permise que pour la protection de votre vie, de celles des autres gendarmes et des civils, et uniquement si la force non létale n’est pas assez efficace.<br/>
				2. Tirer avec une arme quand vous n’êtes pas en danger et que vous n’êtes pas en entrainement est strictement prohibé. Tout officier découvert à tirer avec une arme dans les cas cités ci-dessus sera suspendu des forces de la police.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Règles TeamSpeak",
				"
				1. Tous les gendarmes doivent se trouver dans le channel qui leur est dédié. Faute de quoi.<br/>
				2. Rejoindre le teamspeak avant de se connecter en policier est obligatoire.<br/><br/>
				"
		]
	];
	
	
	
// Illegal Items Section
	player createDiaryRecord ["illegalitems",
		[
			"Règles Rebelles",
				"
				Préambule : Un rebelle est quelqu’un qui se soulève, en utilisant les armes, contre un gouvernement/gendarmerie. Cependant, en raison du petit effectif de gendarme comparé au nombre possible de rebelles, tous les rebelles doivent attaquer avec une raison spécifique. Etre civil et faire preuve de bon sens rendra l’expérience de jeu plus agréable pour tous.<br/><br/>

				1. La rébellion n’excuse pas le RDM ou FK ( kill random ou free kill ) et faire du RDM peut être suivi d’un ban.<br/>
				2. La rébellion doit être RP, et doit avoir d’autres activités que voler la banque.<br/>
				3. La rébellion n’inclut pas de faire la guerre à la gendarmerie sans revendications préalables.<br/>
				4. Interdit de voler ou dégrader tant que la personne coopère.<br/>
				5. Interdit de camper plus de 15 minutes sur une zone légale/illégale<br/>
				6. Si un groupe rebelle attaque la banque, aucun autre groupe rebelle ne peut être présent sur les lieux.<br/>
				7. Si vous êtes menacé ou poursuivi par la gendarmerie, vous pouvez vous défendre mais seulement dans ces conditions.<br/>

				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Les règles des gangs",
				"
				1. Être dans un gang n’est pas illégal. Sauf si des crimes y sont commis.<br/>
				2. Être dans une zone de gang n’est pas illégal. Sauf en cas d’activités illégales.<br/>
				3. Les gangs peuvent tenir et contrôler des zones de gang. Les autres gangs peuvent les attaquer pour contrôler à leur tour la zone.<br/>
				4. Pour déclarer la guerre à un autre gang, le leader doit en faire l’annonce en chat global et tous les membres des deux gangs doivent en etre notifiés. Pour une guerre totale et à plus long terme une declaration doit être faites sur le forum.<br/>
				5. Les gangs ne doivent pas tuer les civils au même titre que n’importe qui, sauf s'il fait parti d’un autre gang ou qu’il est dans une zone de controle de gang.<br/>
				6. Les gangs ne doivent pas tuer les civils, sauf s'ils sont largement menacés. Tuer des civils non-armés parce qu’ils ne coopèrent pas est considéré comme du FreeKill, mais vous pouvez blesser/handicaper.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Véhicules illegaux",
				"
				Toute personne possédant ou au volant des véhicules suivants est exposée aux conséquences définies dans la loi sur l’interdiction de la possession des véhicules interdits.<br/><br/>


				1. Vehicule Rebelles.<br/>
					-Ifrit<br/>
					-Littlebird avec (Camouflage Rebelle)<br/>
					-Pick-up (Camouflage Rebelle)<br/>
					-Pick-up armée<br/><br/>

				2. Vehicules de police.<br/>
				5. “Speedboat”<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Armes illegales",
				"
				La possession des armes suivantes par un civil est illégale, même avec un port d’arme :<br/><br/>
					1. Toutes armes d'un calibre 5.56 ou supérieur<br/>
					-MX Series...<br/>
					-Katiba Series...(Toutes armes ayant un calibre autre que 9mm, même l'arme donateur)<br/>
					-MK20 Series...<br/>
					-...<br/>
					2. Toutes armes de policier<br/><br/>
					-Silenced P07 (Taser)<br/>
					-SDAR<br/>
					-...<br/><br/>
					3.Tout types d’explosifs<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Objets Illegaux",
				"
				Les objets suivants sont illegaux :<br/><br/>
				1. Tortues<br/>
				2. Héroïne<br/>
				3. Marijuana<br/>
				4. Cocaïne<br/><br/>
				"
		]
	];

	
// Controls Section

	player createDiaryRecord ["controls",
		[
			"",
				"
				Windows Gauche: Touche d'interaction principale, intéragir avec les Voitures & Maisons (Réparer,etc) et intéragir avec les civils pour les policiers. Peut être modifiée ESC->Configurer->Controles->Personnalisé->Touche Utilisateur 10<br/>
				Y: Ouvrir Menu Joueur<br/>
				U: Verouiller/Déverouiller Voiture & Maisons<br/>
				T: Coffre Vehicule<br/>
				H: Main derrière la tête<br/>
				Left Shift + R: Menotter (Si Policier)<br/>
				Left Shift + G: Assomer (Si Civil)<br/>
				Left Shift + L: Gyrophares (Si Medecin ou Policier)<br/>
				F: Sirène Police/Ambulance (Si Medecin ou Policier)<br/>
				"
		]
	];