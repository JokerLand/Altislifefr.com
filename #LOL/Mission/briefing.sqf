waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};
 
player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["serverrules","Règles Générales"];
player createDiarySubject ["policerules","Règles/Procédure Gendarmerie"];
player createDiarySubject ["safezones","Safe Zones"];
//player createDiarySubject ["civrules","Règles Civils"];
player createDiarySubject ["illegalitems","Activités Illégales"];
//player createDiarySubject ["gangrules","Règles Gangs"];
//player createDiarySubject ["terrorrules","Règles Terrorisme"];
player createDiarySubject ["controls","Controles"];
 
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
                        "Change Log Officiels",
                                "
                                        Les Change Logs officiels se trouvent sur le forum de BIS (chercher Altis Life RPG)
                                "
                ]
        ];
       
        player createDiaryRecord["changelog",
                [
                        "Altis Life: Evolution - Changelog",
                                "
                                        v1.0.0.0 - Lancement
                                "
                ]
        ];
 
                player createDiaryRecord ["serverrules",
                [
                        "Exploits/Glitchs",
                                "
                                Les points suivants seront considérés comme exploit/glitch, vous ne serez pas kick, mais ban.<br/><br/>
 
                                1. Sortir de la prison par tout autre moyen que de payer la caution ou de sortir par hélicoptère.<br/>
                                2. Vous suicider pour éviter une action. Par exemple se faire tazé, arrêté, mis en prison, etc. Si les logs prouvent que vous vous êtes fait arrêté, et que vous êtes mort, vous serez banni. Ne vous suicidez pas après avoir payé la caution pour revenir plus rapidement chez vous. Faites le trajet de manière RP.<br/>
                                3. Duplication d'item et/ou d'argent. Si quelqu'un vous envoie un montant exorbitant d'argent sur votre compte en début de jeu, merci de report ce joueur à un admin IMMEDIATEMENT et de transférer cet argent à un admin. Faites le dès que possible, ou un admin pourrait vous bannir si il vous voit avec une tel somme sur vous.<br/>
                                4. Utiliser des items provenant d'un hack. Si un hacker vient à faire spawn des items que vous ne pouvez obtenir normalement en jeu, vous pourrez vous faire bannir pour les avoir utilisés. Merci de report le hacker, ainsi que ces dits-items à un admin et de vous éloigner de ceux-ci.<br/>
                                5. Abuser de bugs et/ou de mécaniques de jeu pour gagner.<br/><br/>
                                "
                ]
        ];
       
        player createDiaryRecord["safezones",
                [
                        "Safe Zones",
                                "
                                        Si vous explosez de manière intentionnelle un véhicules, volez quelqu'un, ou tuez quelqu'un dans ou autour des safe-zones, vous êtes passible d'un ban.<br/><br/>
                                       
                                        Tous les points de spawn de véhicules (concesionnaires ou garages)<br/>
                                        Armureries<br/>
                                        Tous les commissariats<br/>
                                        Campement Rebelle<br/>
                                        Magasins Donateur<br/><br/>
                                "
                ]
        ];
                                       
       
        player createDiaryRecord ["serverrules",
                [
                        "Actions menant à un ban",
                                "
                                Considérez ceci comme votre premier et votre dernier avertissement.<br/><br/>
                               
                                1. Hacking<br/>
                                2. Cheating<br/>
                                3. Exploit/Use bug (voir Exploits/Glitchs)<br/>
                                4. Vous faire kick 3 fois ou plus.<br/><br/>
                                "
                ]
        ];
       
        player createDiaryRecord ["serverrules",
                [
                        "Interactions avec la Gendarmerie",
                                "
                                Les points suivants peuvent être passible d'une suppression de votre personnage sur le serveur ou d'un ban, variable selon la décision de l'admin.<br/><br/>
                               
                                1. Un civil peut être arrêté pour avoir ouvert le sac d'un gendarme ou le coffre de son véhicule. Répéter cet action plusieurs fois peut entraîner un kick/ban.<br/>
                                2. Un civil peut être arrêté pour avoir suivi un gendarme trop longtemps dans le but de donner sa position aux autres joueurs.<br/>
                                3. Le meurtre d'un gendarme par un civil ou rebelle armé en ville ou dans tout autre endroit sans raison RP sera considéré comme du freekill. Voir la section Freekill.<br/>
                                4. Suivre et/ou harcelé un/des gendarmes peut être considéré comme du troll/spam, et peut résulter en un kick.<br/>
                                5. Empêcher sciemment les gendarmes d'exercer leur devoir peut résulter par votre arrestation. Le faire de manière abusive et répétée peut résulter en un kick.<br/><br/>
                                "
                ]
        ];
       
        player createDiaryRecord ["serverrules",
                [
                        "Bâteaux",
                                "
                                Les points suivants peuvent être passible d'une suppression de votre personnage sur le serveur ou d'un ban, variable selon la décision de l'admin.<br/><br/>
                               
                                1. Pousser les bâteaux de manière répétée sans permission.<br/>
                                2. Pousser un bâteau dans l'intention de blesser/de tuer quelqu'un n'est pas RP.<br/>
                                3. Sciemment circuler au dessus des plongeurs/nageurs. Cette action est considéré comme du car-kill.<br/><br/>
                                "
                ]
        ];
       
        player createDiaryRecord ["serverrules",
                [
                        "Aviation",
                                "
                                Les points suivants peuvent être passible d'une suppression de votre personnage sur le serveur ou d'un ban, variable selon la décision de l'admin.<br/><br/>
                               
                                1. Faire exprès d'écraser son hélicoptère dans quelque chose. Que ce soit d'autres hélicoptères, véhicules, ou bâtiments.<br/>
                                2. Voler constamment en dessous de 150 mètres au dessus d'une ville. Une fois c'est illégal, mais si cela se reproduit vous risquez de vous crasher en ville, ce qui est interdit par le point précédent.<br/>
                                3. Voler un hélicoptère sans que son pilote ai eu le temps de verrouiller son véhicule. Si l'hélicoptère se pose et que son pilote part en courant sans le verrouiller, très bien. Si il déverouille son hélicoptère pour descendre et que vous montez en pilote sans lui laisser le temps de le verouiller, non.<br/><br/>
                                "
                ]
        ];
       
        player createDiaryRecord ["serverrules",
                [
                        "Véhicules",
                                "
                                Les points suivants peuvent être passible d'une suppression de votre personnage sur le serveur ou d'un ban, variable selon la décision de l'admin.<br/><br/>
                               
                                1. Faire exprès d'écraser quelqu'un (Carkill). Il y a des accidents, et il y a sortir de la route pour écraser quelqu'un.<br/>
                                2. Se jeter sous les roues d'un véhicules pour se faire blesser/tuer.<br/>
                                3. Foncer dans les autres véhicules pour les faire exploser. Vous pouvez rammener les autres véhicules pour les neutraliser, mais faites attention à ne pas l'exploser, sinon cela se retournera contre vous.<br/>
                                4. Constamment essayer d'enter dans des véhicules qui ne vous appartiennent pour troller son propriétaire.<br/>
                                5. Voler un véhicule juste pour le planter ou encore le détruire.<br/>
                                6. Acheter/louer des véhicules dans le but de faire une des actions listées ci-dessus.<br/>
                                7. La seule raison pour ouvrir le feu sur un véhicule est pour le neutraliser et/ou pour faire un tir de sommation dans un contexte RP. Vous ne pouvez pas déliberrement faire feu sur les véhicules sans raisons.<br/><br/>
                                "
                ]
        ];
       
        player createDiaryRecord ["serverrules",
                [
                        "Règles de communication",
                                "
                                Les points suivants peuvent être passible d'une suppression de votre personnage sur le serveur ou d'un ban, variable selon la décision de l'admin.<br/><br/>
                               
                                1. Le Side-Chat n'est pas un salon de thé. Toute communication orale sur le side-chat résultera d'un kick.<br/>
                                2. Flooder n'importe quel canal de communication résultera d'un kick/ban.<br/>
                                4. Les channels TeamSpeak sont séparées en plusieurs catégories pour de bonnes raisons. Ne vous mélangez pas pour éviter les débordements non-RP.<br/>
                                5. Un civil se trouvant dans le channel TeamSpeak de la gendarmerie pour les espionner/collecter des informations sur leurs agissements se verra kick du TS dans un premier lieu, puis ensuite ban du TS et du serveur.<br/><br/>
                                "
                ]
        ];
       
        player createDiaryRecord ["serverrules",
                [
                        "Freekill",
                                "
                                Les points suivants peuvent être passible d'une suppression de votre personnage sur le serveur ou d'un ban, variable selon la décision de l'admin.<br/><br/>
                               
                                1. Tuer quelqu'un sans aucune raison Roleplay.<br/>
                                2. Faire partie des rebelles ne veut pas dire tuer les gens à vue, même les gendarmes.<br/>
                                3. Les gendarmes et civils/rebelles sont en droit de se tirer dessus si le conflit tourne autour d'un crime, roleplay parlant.<br/>
                                4. Si vous vous balladez au milieu d'une fusillade et que vous êtes tué, ce n'est pas du Freekill.<br/>
                                5. Tuer quelqu'un dans le but de vous protéger ou de protéger les autres n'est pas du Freekill. Cependant, réfléchissez avant de tirer.<br/>
                                6. Tuer un joueur sans lui laisser le temps de se soumettre aux sommations est considéré comme du Freekill.<br/><br/>
                               
                                Les conflits relatant du freekill seront jugés par les admins au cas-par-cas.<br/><br/>
                                "
                ]
        ];
        player createDiaryRecord ["serverrules",
                [
                        "Règle de la nouvelle vie",
                                "
                                La règle de la nouvelle vie s'applique à tout le monde, même aux gendarmes.<br/><br/>
                               
                                Les points suivants peuvent être passible d'une suppression de votre personnage sur le serveur ou d'un ban, variable selon la décision de l'admin.<br/><br/>
 
                                1. Si vous êtes morts lors d'une action RP/fusillade, vous devrez attendre 20 minutes avant de revenir sur les lieux. (excepté gendarmerie, délai de 15mn en braquage de banque)<br/>
                                2. Si vous mourrez, vos crimes précédents seront oubliés. Cependant, vous ne pouvez pas chercher vengeance non plus. C'est une NOUVELLE VIE.<br/>
                                3. Si vous vous êtes fait freekill, ce n'est PAS une nouvelle vie.<br/>
                                4. Si vous respawnez manuellement (lobby, déco/reco, etc.), ce n'est pas une nouvelle vie.<br/>
                                5. Si vous vous suicidez exprès pour éviter une action RP, ce n'est pas une nouvelle vie.<br/><br/>
                                "
                ]
        ];
 
        player createDiaryRecord ["serverrules",
                [
                        "Arrête d'être con !",
                                "
                                Si un admin vous dit que vous enfreignez les règles, alors vous faites probablement de la merde.<br/>
                                Troller les autres, manquer de Roleplay, et la liste est longue.<br/>
                                Arrêtez simplement de faire n'importe quoi, ok ?<br/>
                                Cette règle peut être invoquée par un admin selon sa décision.<br/><br/>
                                "
                ]
        ];
       
// Police Section
        player createDiaryRecord ["policerules",
                [
                        "Gestion de crise",
                                "
                                Une gestion de crise (prise d'otage, etc.) doit être gérée par un Lieutenant. Si aucun Lieutenant n'est disponible, la personne la plus haut gradée doit gérer la situation.<br/><br/>
                                "
                ]
        ];
        player createDiaryRecord ["policerules",
                [
                        "La Banque Nationale",
                                "
                                1. Il est illégal pour les civils d'entrer dans la Banque Nationale, sauf autorisation par les forces de l'ordre. Si un civil entre dans la zone, il sera escorté vers l'extérieur, puis arrêté si il persiste.
                                2. Les hélicoptères survolant la Banque Nationale seront sommés de partir de la zone, puis neutralisés si ils persistent/refusent.<br/>
                                2. Lors d'un braquage de la Banque Nationale, il est recommandé que toutes les forces de Gendarmerie en service se rendent sur les lieux pour empêcher le braquage.<br/>
                                3. Tout gendarme proche de la Banque Nationale lors d'un braquage doit se rendre sur place.<br/>
                                4. La force létale peut être utilisée sur les braqueurs si aucune alternative n'est disponible. Taser et arrêter les suspects reste la priorité numéro 1.<br/>
                                5. Les forces de l'ordre ne peuvent pas tirer à l'aveuglette dans le bâtiment de la Banque Nationale.<br/>
                                6. Les forces de l'ordre doivent évacuer les civils présent à la Banque Nationale durant un braquage, pour la sécurité de tous.<br/>
                                7. Tout civil empêchant les forces de l'ordre d'entrer dans le bâtiment de la Banque Nationale durant un braquage pourra être considéré comme complice, et donc arrêté.<br/>
                                8. Les officiers supérieurs peuvent engager une entreprise ou un groupe pour sécuriser/monter la garde à la Banque Nationale. Voir la section 'Contrat' pour + d'informations.<br/><br/>
                                "
                ]
        ];
        player createDiaryRecord ["policerules",
                [
                        "Aviation",
                                "
                                1. Aucun hélicoptère n'est autorisé à se poser en ville sans autorisation d'un officier de Gendarmerie.<br/>
                                Liste des hélipads/terrain d'atterrissage pour hélicoptères:<br/>
                                Kavala: L'hélipad de l'hôpital (SAMU PRIORITAIRE) (037129) ou les docks (031128).<br/>
                                Athira: Le terrain de football (138185) ou dérrière la préfecture (140188).<br/>
                                Pyrgos: Les champs au Nord/Est de la préfecture (170127)<br/>
                                Sofia: A l'opposé du Concessionnaire (258214) ou les champs au Sud-Est du garage (257212)<br/>
                                Petits villages: Un terrain d'atterrissage approprié doit être choisi par le pilote. Seul les officiers de Gendarmerie pourront en juger.<br/><br/>
                               
                                2. Interdiction pour un hélicoptère de se poser sur la route.<br/>
                                3. La gendarmerie peut verrouiller l'espace aérien d'une ville, seulement pendant une durée limitée.<br/>
                                4. Les hélicoptères ne doivent pas voler en dessous de 150 mètres sans autorisation.<br/>
                                5. Aucun hélicoptère ne devra voler en auto-stationnaire au dessus d'une ville. Seuls les pilotes de Gendarmerie pourront le faire dans le cadre d'une opération de Gendarmerie/d'ordre d'un supérieur.<br/><br/>
 
                                "
                ]
        ];
       
        player createDiaryRecord ["policerules",
                [
                        "Zones illégales",
                                "
                                1. Les campements des gangs ne sont pas considérés illégaux. Un gendarme pourra y entrer sans effectuer un raid, mais ne pourra pas arrêter/menotté quelqu'un sans motif.<br/>
                                2. Interdiction d'entrer dans une zone illégal sauf si un raid est en cours. Voir la section 'Raid/Camping'.<br/>
                                3. Si vous poursuivez quelqu'un dans une zone illégal, appelez des renforts.<br/>
                                4. Un gendarme ne pourra pas camper sur une zone illégal sous aucune circonstance.<br/><br/>
                                "
                ]
        ];
       
        player createDiaryRecord ["policerules",
                [
                        "Patrouilles",
                                "
                                1. La Gendarmerie peut patrouiller sur les routes et dans les villes de l'île à la recherche de véhicules abandonnés et d'activités criminelles.<br/>
                                2. Les patrouilles peuvent être effectuées à pied en ville, et en véhicule à l'extérieur.<br/>
                                3. Les patrouilles n'incluent pas les zones illégales. Voir la section 'Raid/Camping'.<br/><br/>
                                "
                ]
        ];
       
        player createDiaryRecord ["policerules",
                [
                        "Points de contrôles",
                                "
                                Les gendarmes sont encouragés à placer des points de contrôles à des endroits stratégiques pour aider à combattre les activités illégales et améliorer la sécurité sur la route.<br/><br/>
                               
                                1. Un point de contrôle pourra être placé par 3 gendarmes minimum ou plus, avec l'utilisation de 2 véhicules ou plus. Le quad ne peut pas être utilisé.<br/>
                                2. Un point de contrôle ne pourra prendre place a moins de 300m d'une zone illégale. Vous ne pourrez donc pas créer un point de contrôle sur une zone illégale.<br/>
                                3. Les gendarmes ne peuvent pas établir un point de contrôle sur un carrefour ou un croisement.<br/>
                                4. Les points de contrôle n'ont pas à être marqués sur la carte.<br/><br/>
 
 
                                Procédure de contrôle sur les points de contrôle :<br/>
                                1. Demandez à la personne de s'arrêter sur le bas-côté et demandez lui d'éteindre son moteur.<br/>
                                2. Demandez au conducteur et aux passagers si ils possèdent des armes sur eux.<br/>
                                3. Demandez au conducteur et passagers de descendre du véhicule. S'ils possèdent une/des armes, ne les menottez pas immédiatement lorsqu'ils sortent, demandez leur de baisser leurs armes, et laissez leur le temps de coopérer.<br/>
                                4. Demandez leur ou ils se dirigent, et d'où ils viennent.<br/>
                                5. Vérifiez dans la base de données (liste des criminels) si ils sont recherchés ou non.<br/>
                                6. Demandez la permission aux personnes pour procéder à une fouille et à un contrôle des permis.<br/>
                                7. Si vous avez leur permission, vous pouvez les menotter (Shift+R) et procéder à une fouille corporel et vérifier leurs permis/licenses.<br/>
                                8. Si vous n'avez PAS leur permission, vous devez les laisser partir, c'est leur droit. Sauf si ils possèdent une arme rebelle, tenue rebelle, ils sont recherchés, etc.<br/>
                                9. Après la fouille et le contrôle terminé, vous pouvez les laisser remonter dans leur véhicule et les laisser partir.<br/>
                                "
                ]
        ];
       
        player createDiaryRecord ["policerules",
                [
                        "Véhicules",
                                "
                                1. Les véhicules correctement garés sur des places de parking ou à-cheval sur un trottoir (ne gênant pas la circulation) peuvent stationner 30 minutes maximum.<br/>
                                2. Les véhicules qui ont l'air abandonnés, cassés, sans conducteur, peuvent être mis en fourrière.<br/>
                                3. Les bateaux doivent accostés correctement sur le quai, sans gêner le départ/l'arrivée d'autres bâteaux.<br/>
                                4. N'importe quel véhicule gênant la circulation/abandonné qui ne s'est pas déplacé dans un temps significatif peut être mis en fourrière.<br/>
                                5. La mise en fourrière est une fonction essentielle d'un gendarme, cela permet de nettoyer les rues et d'améliorer la qualité de jeu du serveur.<br/>
                                6. En cas de doute, fouillez toujours le véhicule et relevez la plaque d'immatriculation (recherche propriétaire) avant de le mettre en fourrière.<br/>
                                7. Des voitures à hayon sport de gendarmerie ainsi que les Hunter HMG peuvent être utilisés pour aider à appréhender les criminels. Le canon ou votre arme ne seront utilisés sur un véhicule seulement pour neutraliser un véhicule en fuite/illégal (crever les pneus, etc.) sans le faire exploser.<br/><br/>
                                "
                ]
        ];
 
        player createDiaryRecord ["policerules",
                [
                        "Vitesses",
                                "
                                La gendarmerie doit faire respecter les limites de vitesse sur toute route pour la sécurité des citoyens d'Altis.<br/><br/>
                                Villes: Intérieur<br/>
                                Petites routes : 30km/h<br/>
                                Routes principales : 50km/h<br/>
                                Ville: Extérieur<br/>
                                Petites routes : 90km/h<br/>
                                Routes Principales : 120km/h<br/><br/>
                                "
                ]
        ];
       
        player createDiaryRecord ["policerules",
                [
                        "Patrouilles en ville",
                                "
                                1. Avant de patrouiller, demandez une affectation à l'officier qui s'occupe du dispatch. Vous ne pouvez pas patrouiller seul, et sans en avoir eu la permission par votre supérieur.<br/>
                                2. Les gendarmes peuvent patrouiller dans toutes les villes majeures - Kavala, Athira, Pyrgos et Sofia -, ainsi que dans les petits villages.<br/>
                                3. Les gendarmes peuvent s'arrêter en passant devant le concessionnaire pour s'assurer qu'il n'y ai aucune voiture qui nécessite une mise en fourrière.<br/>
                                4. Lors de vos patrouilles en ville, ne traînez pas que du côté du centre-ville. Elargissez votre périmètre de patrouille à toute la ville, en passant par les petites routes et la périphérie dans certains cas.<br/>
                                5. Il est illégal pour les civils d'entrer dans le commissariat et/ou dans les bâtiments des commissariats sans autorisation. Cependant, il n'est PAS illégal pour un civil de traîner devant l'entrée de ceux-ci, tant qu'il ne cause aucune nuisance.<br/><br/>
                                "
                ]
        ];
       
        player createDiaryRecord ["policerules",
                [
                        "Arrestations et amandes",
                                "
                                Un civil doit être arrêté si il représente un danger pour lui même/les autres.<br/><br/>
 
                                1. Vous ne pouvez pas arrêter quelqu'un à qui vous avez donné une amande et qu'il a payé.<br/>
                                2. Vous devez dire au suspect le motif de l'arrestation avant de procéder à l'arrestation.<br/>
                                3. Si un civil est recherché, vous pouvez l'arrêter. Ne le tuez pas, à moins que la situation fasse appel à la section 'Utilisation des forces létales'.<br/><br/>
 
 
                                Une amande est considéré comme un avertissement. S'ils violent une loi mais ne représente cependant pas une menace pour lui/les autres, vous pouvez lui infliger une amande.<br/><br/>
 
                                1. Les amandes doivent correspondre avec le tableau des amandes (disponible sur TeamSpeak, section Gendarmerie).<br/>
                                2. Le montant d'une amande doit être basé sur le/les crime(s) commis.<br/>
                                3. Un civil refusant de payer une amande pourra se faire arrêter.<br/>
                                4. Infliger une amande excessive, comme 100 000€ pour excès de vitesse, etc. est INTERDIT et vous vous verrez exclu de la police.<br/><br/>
                               
                                Une liste de tous les crimes avec leurs sanctions doit être donnée aux gendarmes en formation. Si vous avez un doute, ou si vous n'avez pas connaissance de cette liste, demandez à un supérieur ou reportez vous au tableau des amandes sur TeamSpeak.<br/>
                               
                                La liste est disponible sur le forum dans la catégorie GENDARMERIE, ainsi que sur Teamspeak, dans la même catégorie.<br/><br/>
                                "
                ]
        ];
               
        player createDiaryRecord ["policerules",
                [
                        "Armes",
                                "
                                Un gendarme ne doit EN AUCUN CAS fournir une arme à un civil, ceci entraînera un ban du serveur et/ou une exclusion de la gendarmerie.<br/><br/>
 
                                Armes légales (sous résèrve de permis de port d'arme):<br/>
                                1. P07<br/>
                                2. Rook<br/>
                                3. ACP-C2<br/>
                                4. Zubr<br/>
                                5. 4-five .45<br/>
                                6. PDW2000<br/>
                                7. Vermin SMG .45 ACP<br/><br/>
 
                                Toutes les autres armes sont illégales.<br/><br/>
 
                                1. Les civils ne sont pas autorisés à avoir leur arme sortie en ville. Ils doivent la ranger soit dans le coffre de leur véhicule, soit dans leur sac à dos.<br/>
                                2. Les civils peuvent avoir leur arme en main à l'extérieur d'une ville. Cependant, ils doivent se soumettre à une vérifiacation du permis de port d'arme si ils sont confrontés à un gendarme et doivent baisser leur arme (Deux fois CTRL).<br/><br/>
                                "
                ]
        ];
       
        player createDiaryRecord ["policerules",
                [
                        "Utilisation des forces non-létales",
                                "
                                Pour le moment, le taser (P07 silencieux) est la seule arme non-létale.<br/><br/>
 
                                1. Le taser doit être utilisé pour neutraliser les civils non-coopératifs afin de les menotter.<br/>
                                2. Ne pas abuser du taser sur un civil, les utilisations non-justifiées mèneront à votre suspension.<br/>
                                3. Utilisez votre taser dans la conformité des lois et des règles en vigueur, NE PAS vous défouler sur les autres.<br/><br/>
                                "
                ]
        ];
 
        player createDiaryRecord ["policerules",
                [
                        "Raids / Camper une zone",
                                "
                                Un raid est défini comme un groupe de gendarmes investissant une zone illégale / zone à haut risque pour arrêter les criminels s'y trouvant.<br/><br/>
 
                                1. Pour pouvoir procéder à un raid, les gendarmes sur place devront être au minium 4, et l'un d'eux doit être Adjudant ou plus haut gradé.<br/>
                                2. Tous les civils peuvent être menottés et fouillés lors d'un raid. Si rien d'illégal n'est trouvé sur eux, vous pouvez les laissez partir.<br/>
                                3. Si des objets illégaux sont trouvés pendant les fouilles, vous devrez procéder à une arrestation en suivant la procédure habituelle.<br/>
                                5. La force létale n'est autorisé comme décrit dans la section 'Utilisation de la force létale'.<br/>
                                6. Après avoir sécurisé la zone, les gendarmes doivent la quitter.<br/>
                                7. Un temps de 30 minutes devra être respecté entre deux raids sur un même endroit.<br/>
                                8. Si le raid échoue (tous les gendarmes sont décédés), le temps de 30 minutes sera quand même appliqué.<br/>
                                9. Des gendarmes supplémentaires peuvent être appelés en renfort, tant qu'ils ne sont pas morts sur zone durant l'action (Voir 'Règle de la nouvelle vie').<br/><br/>
 
                                Camper est défini comme étant un gendarme restant sur zone pendant une longue période de temps.<br/><br/>
 
                                1. Être à un point de contrôle n'est pas défini comme camper. Voir la partie 'Points de contrôle' pour les procédures et les règles à suivre.<br/>
                                2. Voir les parties 'Braquage de banque' et 'Kavala' pour plus d'informations sur le fait de camper dans les villes principales.<br/>
                                3. Camper une zone illégale, c'est rester plus longtemps que nécessaire après un raid, ou si ils ne font pas un raid, sont présents pour surveiller et agir en conséquence sur les civils entrant dans la zone.<br/><br/>
                                "
                ]
        ];
       
        player createDiaryRecord ["policerules",
                [
                        "L'échelle de commandement",
                                "
                                Le gendarme le plus haut gradé connecté est en charge des forces de l'ordre en présence sur l'île. Le gendarme le plus haut gradé devra suivre les règles, procédures et engagements propres à son grade et au réglement général, et devra se reporter aux admins lorsqu'une décision importante devra être prise.<br/><br/>
 
                                Chaîne de Commandement de la Gendarmerie:<br/>
                                1. Capitaine<br/>
                                2. Lieutenant<br/>
                                3. Sous-Lieutenant<br/>
                                4. Adjudant-Chef<br/>
                                5. Adjudant<br/>
                                6. Sergent<br/>
                                7. Brigadier-Chef<br/>
                                8. Brigadier<br/>
                                9. Gendarme<br/>
                                10. Gendarme Adjoint Volontaire (GAV)<br/><br/>
 
                                Tous les gendarmes dis 'Public-Slot' sont au grade le plus bas, et n'ont rien à dire à propos des opérations de Gendarmerie.<br/><br/>
                                "
                ]
        ];
       
        player createDiaryRecord ["policerules",
                [
                        "Utilisation de la force létale",
                                "
                                1. L'utilisation de la forcé létale n'est permise que dans le cas ou vous devez protéger votre vie, la vie d'un autre gendarme ou la vie d'un civil, et seulement si la force non-létale ne serait pas efficace.<br/>
                                2. Tirer avec une arme sans être en service ou pendant un exercice n'est pas autorisé. Cela peut mener à un kick puis une suspension de la Gendarmerie.<br/>
                                3. Si vous ne suivez pas les règles/procédures et règles à propos des armes, vous serez Kické du serveur, puis suspendu de la Gendarmerie.<br/><br/>
                                "
                ]
        ];
       
        player createDiaryRecord ["policerules",
                [
                        "Règles du TeamSpeak",
                                "
                                1. Tous les gendarmes doivent être sur Teamspeak 3 dans le channel qui leur à été attribué. Si vous n'êtes pas sur TeamSpeak et que vous êtes en jeu en tant que Gendarme, cela peut mener à votre suspension de la Gendarmerie.<br/>
                                2. Merci de rejoindre le TeamSpeak AVANT MÊME de rejoindre le serveur.<br/><br/>
                                "
                ]
        ];
       
       
       
// Illegal Items Section
        player createDiaryRecord ["illegalitems",
                [
                        "Règles Rebelles",
                                "
                                Un rebelle est quelqu'un qui exerce une resistance armé contre le gouvernement en place. Dans ce cas là, ce serait la Gendarmerie. Cependant, au vu du faible nombre de Gendarmes comparé au possible nombre de rebelles, n'attaquez pas les Gendarmes sans raison, soyez corrects et rationnels. Ne prenez pas le mot 'rebelle' au 1er degré, mais réflechissez plutôt comment vous amuser avec tout le monde dans les règles.<br/><br/>
                                1. Un rebelle devra d'abord former un groupe, et ensuite déclarer ses intentions/revendications.<br/>
                                2. La rebellion n'excuse pas le Freekill(Voir la section 'Freekill' dans 'Règles générales')<br/>
                                3. Le RP rebelle ne s'arrête pas juste aux braquages de banque et à attaquer les Gendarmes, plein de possibilités s'offrent à vous. Les seules limites sont celles de votre imagination, les règles sont juste la pour vous encadrer.<br/>
                                4. Une RAISON RP devra être fourni pour chaque attaque effectué. Par raison RP, on entend une raison qui vous pousse à agir contre le gouvernement. A vous d'écrire votre scénario.<br/><br/>
                                "
                ]
        ];
        player createDiaryRecord ["illegalitems",
                [
                        "Règles groupes Criminels",
                                "
                                1. Être dans un groupe n'est pas illégal, sauf lorsque des crimes sont commis.<br/>
                                2. Être sur un campement d'un groupe rebelle n'est pas illégal, sauf si vous prenez part à des activités illégales.<br/>
                                3. Les groupes rebelles peuvent attaquer et contrôler certaines zones. Les autres gangs peuvent s'affronter pour contrôler certaines zones.<br/>
                                4. Pour déclarer la guerre à un autre groupe, le leadeur devra annoncer cette décision sur le forum et en informer les hauts-gradés du gang adverse.<br/>
                                5. Les groupes ne doivent pas tuer les civils non armés, si ils font partis d'un groupe adverse, ou si ils sont dans votre campement.<br/>
                                6. Les groupes ne doivent pas tuer les civils, sauf s'ils représentent une menace. Tuer un civil qui ne coopére pas est considéré comme du Freekill, vous pouvez cependant le blesser, ou en faire ce que vous voulez. Imaginez une scène RP sympa si un civil ne coopére pas.<br/><br/>
                                "
                ]
        ];
        player createDiaryRecord ["illegalitems",
                [
                        "Véhicules illégaux",
                                "
                                Un civil en possession d'un des véhicules suivants pourra être arrêté par les forces de Gendarmerie, en suivant la procédure à suivre.<br/><br/>
 
                                1. Ifrit (HMG/non HMG)<br/>
                                2. Tout véhicule de Gendarmerie (Hunter, Hellcat, Ghost-Hawk, etc.)<br/>
                                3. CH-49 Mohawk<br/>
                                4. Tout-terrain armé<br/>
                                5. Tout véhicule camo rebelle (Orca, Hummingbird, etc.)<br/><br/>
                                "
                ]
        ];
        player createDiaryRecord ["illegalitems",
                [
                        "Armes illégales",
                                "
                                Un civil en possession d'une de ces armes pourra être arrêté par les forces de Gendarmerie, en suivant la procédure à suivre.<br/><br/>
 
                                1. Tout type de MX<br/>
                                2. Katiba 6.5mm<br/>
                                3. TRG-20 5.56 mm<br/>
                                4. Mk20 5.56 mm<br/>
                                5. MK200 6.5mm<br/>
                                6. Mk.18 ABR<br/>
                                7. SDAR 5.56mm<br/>
                                8. Zafir 7.62mm<br/>
                                9. Sting 9mm<br/>
                                10. P07 Silencieux (Taser)<br/>
                                11. GM6 Lynx 12.7 mm<br/>
                                12. M320 LRR .408<br/>
                                13. Tout type d'explosif<br/><br/>
                                "
                ]
        ];
        player createDiaryRecord ["illegalitems",
                [
                        "Objets et marchandises illégales",
                                "
                                La possession des marchandises suivantes est illégale:<br/><br/>
                                1. Tortues<br/>
                                2. Cocaïne<br/>
                                3. Heroïne<br/>
                                4. Cannabis<br/>
                                5. Marijuana<br/>
                                6. Méthamphétamine<br/>
                                7. Uranium (Qualité Militaire)<br/>
								8.Cigares<br/>
                                9. Moonshine<br/><br/>
                                "
                ]
        ];
 
       
// Controls Section
 
        player createDiaryRecord ["controls",
                [
                        "",
                                "
                                Y: Ouvrir le menu joueur<br/>
                                U: Verouiller et déverrouiller les véhicules et portes de maison <br/>
                                F: Sirène (si Gendarme)<br/>
                                T: Coffre du vehicule<br/>
                                Shift Gauche + R: Menotter (si Gendarme)<br/>
                                Shift Gauche + G: Assomer (Civils seulement, à utiliser pour voler)<br/>
                                Windows Gauche: Touche d'intéraction principale, utilisé pour les véhicules (réparer, etc.) et pour les Gendarmes (interactions joueur). Peut être remplacé par une touche comme H en faisant ESC->Configurer->Commandes->Touches perso.->Util. Action 10<br/>
                                Shift + L: Activer les gyrophares (si Gendarme).<br/>
								Shift + H: Ranger son arme<br/>
								Ctrl + H: Rentrer son arme<br/>
								Shift + P: Monter/Baisser le Son
                                "
                ]
        ];