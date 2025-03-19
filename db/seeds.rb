# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'
# db/seeds.rb

# Reset all tables
puts "deleting all records..."
User.destroy_all
Test.destroy_all
Question.destroy_all
Choice.destroy_all
Category.destroy_all
Job.destroy_all
Formation.destroy_all
JobCategory.destroy_all
JobFormation.destroy_all
UserAnswer.destroy_all

category = []

category << Category.create!(
  name: "Artistique"
)

category << Category.create!(
  name: "Realiste"
)

category << Category.create!(
  name: "Logique"
)

category << Category.create!(
  name: "Social"
)

tests = []

tests << Test.create!(
  name: "Test Login",
  category: "Login",
  duration: 2,
  nb_questions: 3
)

questions = []

questions << Question.create!(
  question: "Quel type de vidéos regardes-tu le plus sur internet ?",
  position: 1,
  test_id: 1
)

choices = []

choices << Choice.create!(
  score: 25,
  choice: "Des streams ou vidéos YouTube/Twitch avec du contenu divertissant et créatif.",
  category_id: 1,
  question_id: 1
)

choices << Choice.create!(
  score: 25,
  choice: "Des vidéos sur les voitures, la mécanique, la technologie ou le sport.",
  category_id: 2,
  question_id: 1
)

choices << Choice.create!(
  score: 25,
  choice: "Des vidéos de vulgarisation sur l’histoire, la science ou des sujets complexes.",
  category_id: 3,
  question_id: 1
)

choices << Choice.create!(
  score: 25,
  choice: "Des interviews, des débats ou des discussions sur des sujets d’actualité.",
  category_id: 4,
  question_id: 1
)

questions << Question.create!(
  question: "Quel compliment te fait le plus plaisir ?",
  position: 2,
  test_id: 1
)

choices << Choice.create!(
  score: 35,
  choice: "Tu as toujours des idées intéressantes !",
  category_id: 1,
  question_id: 2
)

choices << Choice.create!(
  score: 35,
  choice: "Tu es quelqu’un de débrouillard(e) !",
  category_id: 2,
  question_id: 2
)

choices << Choice.create!(
  score: 35,
  choice: "Tu comprends vite et tu trouves de bonnes solutions !",
  category_id: 3,
  question_id: 2
)

choices << Choice.create!(
  score: 35,
  choice: "On peut toujours compter sur toi !",
  category_id: 4,
  question_id: 2
)

questions << Question.create!(
  question: "Quand tu étais enfant, quelle activité préférais-tu faire ?",
  position: 3,
  test_id: 1
)

choices << Choice.create!(
  score: 40,
  choice: "Dessiner, écrire, chanter ou créer des spectacles avec tes amis.",
  category_id: 1,
  question_id: 3
)

choices << Choice.create!(
  score: 40,
  choice: "Jouer aux Legos, démonter des objets pour comprendre comment ils fonctionnent.",
  category_id: 2,
  question_id: 3
)

choices << Choice.create!(
  score: 40,
  choice: "Jouer à des jeux de réflexion, résoudre des énigmes ou poser plein de questions.",
  category_id: 3,
  question_id: 3
)

choices << Choice.create!(
  score: 40,
  choice: "Jouer en groupe, discuter, aider les autres ou organiser des jeux.",
  category_id: 4,
  question_id: 3
)

tests << Test.create!(
  name: "Focus Avenir : trouve ta voie",
  category: "Tests d'intérêts professionnels",
  duration: 10,
  nb_questions: 5,
  img_name: "gradient-1.jpg",
  img_icon: "img-test-1.png",
  description: "Découvre le métier fait pour toi ! En 5 questions et 10 minutes, identifie les domaines pro qui te
               correspondent et clarifie tes aspirations."
)

questions << Question.create!(
  question: "Quelles oeuvres regardes-tu le plus souvent ?",
  position: 1,
  test_id: 2
)

choices << Choice.create!(
  score: 20,
  choice: "Films d’animation, fantaisie ou mondes imaginaires.",
  category_id: 1,
  question_id: 4
)

choices << Choice.create!(
  score: 20,
  choice: "Actions, aventures, films basés sur des faits réels.",
  category_id: 2,
  question_id: 4
)

choices << Choice.create!(
  score: 20,
  choice: "Des thrillers, policiers, enquêtes.",
  category_id: 3,
  question_id: 4
)

choices << Choice.create!(
  score: 20,
  choice: "Des films de société, des comédies romantiques.",
  category_id: 4,
  question_id: 4
)

questions << Question.create!(
  question: "À l’école ou au travail, quelle situation te motive le plus ?",
  position: 2,
  test_id: 2
)

choices << Choice.create!(
  score: 20,
  choice: "Créer un poster original pour un projet de classe, tourner une vidéo pour un exposé.",
  category_id: 1,
  question_id: 5
)

choices << Choice.create!(
  score: 20,
  choice: "Monter un ordinateur soi-même, expérimenter une recette de cuisine.",
  category_id: 2,
  question_id: 5
)

choices << Choice.create!(
  score: 20,
  choice: "Résoudre une énigme, optimiser un emploi du temps.",
  category_id: 3,
  question_id: 5
)

choices << Choice.create!(
  score: 20,
  choice: "Expliquer un exercice à un camarade, organiser un débat.",
  category_id: 4,
  question_id: 5
)

questions << Question.create!(
  question: "Quand tu rencontres un nouveau jeu ou une nouvelle activité, comment réagis-tu ?",
  position: 3,
  test_id: 2
)

choices << Choice.create!(
  score: 20,
  choice: "J’aime tester les possibilités pour voir comment je peux le personnaliser.  ",
  category_id: 1,
  question_id: 6
)

choices << Choice.create!(
  score: 20,
  choice: "Je cherche à comprendre comment ça fonctionne en essayant directement. ",
  category_id: 2,
  question_id: 6
)

choices << Choice.create!(
  score: 20,
  choice: "J’analyse les règles et la meilleure façon de progresser.  ",
  category_id: 3,
  question_id: 6
)

choices << Choice.create!(
  score: 20,
  choice: "Je préfère jouer avec d’autres et échanger sur nos expériences.",
  category_id: 4,
  question_id:6
)

questions << Question.create!(
  question: "Si on te proposait un stage, dans quel environnement te sentirais-tu le plus à l’aise ?",
  position: 4,
  test_id: 2
)

choices << Choice.create!(
  score: 20,
  choice: "Dans un studio de design où je peux créer des projets visuels.",
  category_id: 1,
  question_id: 7
)

choices << Choice.create!(
  score: 20,
  choice: "Sur le terrain, en action, avec des tâches concrètes à réaliser.  ",
  category_id: 2,
  question_id: 7
)

choices << Choice.create!(
  score: 20,
  choice: "Dans un bureau où je peux analyser, structurer et réfléchir.",
  category_id: 3,
  question_id: 7
)

choices << Choice.create!(
  score: 20,
  choice: "Dans un endroit où je peux interagir avec beaucoup de personnes.",
  category_id: 4,
  question_id: 7
)

questions << Question.create!(
  question: "Si tu devais expliquer un concept difficile à quelqu’un, comment ferais-tu ?",
  position: 5,
  test_id: 2
)

choices << Choice.create!(
  score: 20,
  choice: "Avec un dessin, une métaphore ou une démonstration visuelle.",
  category_id: 1,
  question_id: 8
)

choices << Choice.create!(
  score: 20,
  choice: "En lui montrant un exemple concret et en testant avec lui.",
  category_id: 2,
  question_id: 8
)

choices << Choice.create!(
  score: 20,
  choice: "En organisant les idées de manière claire et logique.",
  category_id: 3,
  question_id: 8
)

choices << Choice.create!(
  score: 20,
  choice: "En discutant avec lui pour comprendre comment il voit les choses.",
  category_id: 4,
  question_id: 8
)

#! Seed Jobs et formation -------------------#########
puts "creating jobs..."
jobs = []

jobs << Job.create!(
  name: "Designer graphique",
  description: "Conçoit des visuels pour divers supports.
  Utilise des logiciels de création pour élaborer des identités visuelles.",
  salary: 2500,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/designer-graphique"
)

JobCategory.create!(
  job_id: 1,
  category_id: 1
)
JobCategory.create!(
  job_id: 1,
  category_id: 3
)

formations = []

formations << Formation.create!(
  name: "Bachelor en Design Graphique",
  level: "Bac +3",
  duration: 3,
  price: 7000,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/post-bac/bachelor-design-graphique"
)
JobFormation.create!(
  job_id: 1,
  formation_id: 1
)

formations << Formation.create!(
  name: "Master Direction Artistique et Communication Visuelle",
  level: "Bac +5",
  duration: 5,
  price: 8000,
  url_formation: "https://www.lisaa.com/fr/formation/master-direction-artistique-communication-paris"
)
JobFormation.create!(
  job_id: 1,
  formation_id: 2
)

formations << Formation.create!(
  name: "Diplôme en Design Graphique",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-metier/metiers/designer-graphique"
)
JobFormation.create!(
  job_id: 1,
  formation_id: 3
)

jobs << Job.create!(
  name: "Illustrateur",
  description: "Réalise des dessins et des images.
  Traduit des concepts ou des textes en représentations visuelles attrayantes.",
  salary: 2300,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/illustrateur-illustratrice"
)

JobCategory.create!(
  job_id: 2,
  category_id: 1
)

formations << Formation.create!(
  name: "Diplôme National des Métiers d’Art et du Design (DN MADE)",
  level: "Bac +3",
  duration: 3,
  price: 6000,
  url_formation: "https://www.onisep.fr/formation/apres-le-bac-les-etudes-superieures/les-principales-filieres-d-etudes-superieures/le-dn-made"
)
JobFormation.create!(
  job_id: 2,
  formation_id: 4
)

formations << Formation.create!(
  name: "École d’illustration et bande dessinée",
  level: "Bac +5",
  duration: 5,
  price: 8500,
  url_formation: "https://www.letudiant.fr/etudes/ecole-art/vis-ma-vie-d-etudiante-en-art-specialite-bande-dessinee.html#:~:text=L'%C3%89cole%20europ%C3%A9enne%20sup%C3%A9rieure%20de,sp%C3%A9cialis%C3%A9e%20dans%20la%20bande%20dessin%C3%A9e."
)
JobFormation.create!(
  job_id: 2,
  formation_id: 5
)

formations << Formation.create!(
  name: "Licence Arts Visuels",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/formation/les-principaux-domaines-de-formation/les-licences-d-art/la-licence-arts-plastiques"
)
JobFormation.create!(
  job_id: 2,
  formation_id: 6
)

jobs << Job.create!(
  name: "Architecte d'intérieur",
  description: "Conçoit et aménage des espaces intérieurs fonctionnels et esthétiques. Sélectionne les matériaux,
  les couleurs et le mobilier pour créer une ambiance harmonieuse.",
  salary: 3000,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/architecte-d-interieur"
)

JobCategory.create!(
  job_id: 3,
  category_id: 1
)

JobCategory.create!(
  job_id: 3,
  category_id: 2
)

JobCategory.create!(
  job_id: 3,
  category_id: 3
)

formations << Formation.create!(
  name: "Bachelor en Design d’Espace",
  level: "Bac +3",
  duration: 3,
  price: 7500,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/post-bac/bachelor-design-d-espace"
)
JobFormation.create!(
  job_id: 3,
  formation_id: 7
)

formations << Formation.create!(
  name: "Diplôme d’État Architecte d’Intérieur",
  level: "Bac +5",
  duration: 5,
  price: 9000,
  url_formation: "https://www.onisep.fr/ressources/univers-metier/metiers/architecte-d-interieur"
)
JobFormation.create!(
  job_id: 3,
  formation_id: 8
)

formations << Formation.create!(
  name: "Master Design d'Espace et Architecture Intérieure",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/post-bac/dn-made-mention-espace"
)
JobFormation.create!(
  job_id: 3,
  formation_id: 9
)

jobs << Job.create!(
  name: "Designer de mode",
  description: "Imagine et crée des vêtements et des accessoires.
  Dessine des croquis, choisit les tissus et supervise la réalisation des prototypes.",
  salary: 2800,
  url_job: "https://www.onisep.fr/ressources/univers-formation/formations/post-bac/styliste-designer-de-mode2"
)

JobCategory.create!(
  job_id: 4,
  category_id: 1
)

JobCategory.create!(
  job_id: 4,
  category_id: 2
)

formations << Formation.create!(
  name: "Bachelor Stylisme et Modélisme",
  level: "Bac +3",
  duration: 3,
  price: 8000,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/post-bac/bachelor-stylisme-et-modelisme2"
)
JobFormation.create!(
  job_id: 4,
  formation_id: 10
)

formations << Formation.create!(
  name: "Master Design de Mode",
  level: "Bac +5",
  duration: 5,
  price: 9000,
  url_formation: "https://www.studyrama.com/formations/specialites/mode-textile/master-professionnel-mode-et-creation-29090"
)
JobFormation.create!(
  job_id: 4,
  formation_id: 11
)

formations << Formation.create!(
  name: "Diplôme de l'École de la Chambre Syndicale de la Couture Parisienne",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "http://www.ifmparis.fr"
)
JobFormation.create!(
  job_id: 4,
  formation_id: 12
)

jobs << Job.create!(
  name: "Photographe",
  description: "Capture des images pour divers usages. Maîtrise les techniques de prise de vue,
  de lumière et de retouche.",
  salary: 2200,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/photographe"
)

JobCategory.create!(
  job_id: 5,
  category_id: 1
)

#! Formations pour le métier de Photographe
formations << Formation.create!(
  name: "Bachelor Photographie et Arts Visuels",
  level: "Bac +3",
  duration: 3,
  price: 6500,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/post-bac/bachelor-de-photographie-images-fixes-et-animees"
)
JobFormation.create!(
  job_id: 5,
  formation_id: 13
)

formations << Formation.create!(
  name: "Master Photographie et Image Numérique",
  level: "Bac +5",
  duration: 5,
  price: 7500,
  url_formation: "https://www.masteretudes.fr/master/photographie-numerique"
)
JobFormation.create!(
  job_id: 5,
  formation_id: 14
)

formations << Formation.create!(
  name: "Diplôme National des Métiers d’Art et du Design (DN MADE) spécialité Photographie",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/formation/apres-le-bac-les-etudes-superieures/les-principales-filieres-d-etudes-superieures/le-dn-made"
)
JobFormation.create!(
  job_id: 5,
  formation_id: 15
)

jobs << Job.create!(
  name: "Scénariste",
  description: "Écrit des scripts pour le cinéma, la télévision ou le théâtre.
  Collabore avec les réalisateurs et les producteurs.",
  salary: 3000,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/scenariste"
)

JobCategory.create!(
  job_id: 6,
  category_id: 1
)

JobCategory.create!(
  job_id: 6,
  category_id: 2
)

JobCategory.create!(
  job_id: 6,
  category_id: 3
)
#! Formations pour le métier de Scénariste

formations << Formation.create!(
  name: "Licence Cinéma et Audiovisuel",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/post-bac/licence-mention-cinema-et-audiovisuel"
)
JobFormation.create!(
  job_id: 6,
  formation_id: 16
)

formations << Formation.create!(
  name: "Master Scénario et Écriture Audiovisuelle",
  level: "Bac +5",
  duration: 5,
  price: 7000,
  url_formation: "https://www.letudiant.fr/etudes/annuaire-enseignement-superieur/formation/formation-master-pro-scenario-et-ecritures-audiovisuelles-194881.html"
)
JobFormation.create!(
  job_id: 6,
  formation_id: 17
)

formations << Formation.create!(
  name: "École Nationale Supérieure des Métiers de l'Image et du Son (Fémis) - Département Scénario",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/structures-enseignement/ile-de-france/paris/la-femis-ecole-nationale-superieure-des-metiers-de-l-image-et-du-son/diplome-de-l-ecole-nationale-superieure-des-metiers-de-l-image-et-du-son-femis-specialite-scenario"
)
JobFormation.create!(
  job_id: 6,
  formation_id: 18
)

jobs << Job.create!(
  name: "Musicien professionnel",
  description: "Interprète ou compose des œuvres musicales.
  Peut se spécialiser dans un genre musical particulier.",
  salary: 2500,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/musicien-musicienne"
)

JobCategory.create!(
  job_id: 7,
  category_id: 1
)

JobCategory.create!(
  job_id: 7,
  category_id: 4
)
#! Formations pour le métier de Musicien professionnel

formations << Formation.create!(
  name: "Diplôme National Supérieur Professionnel de Musicien (DNSPM)",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/post-bac/diplome-national-superieur-professionnel-de-musicien-discipline-chef-d-ensemble-instrumentaux-ou-vocaux"
)
JobFormation.create!(
  job_id: 7,
  formation_id: 19
)

formations << Formation.create!(
  name: "Licence Musicologie",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/post-bac/licence-mention-musicologie"
)
JobFormation.create!(
  job_id: 7,
  formation_id: 20
)

formations << Formation.create!(
  name: "Master Interprétation et Création Musicale",
  level: "Bac +5",
  duration: 5,
  price: 7000,
  url_formation: "https://diplomeo.com/trouver-master-musique"
)
JobFormation.create!(
  job_id: 7,
  formation_id: 21
)


jobs << Job.create!(
  name: "Designer produit",
  description: "Conçoit des objets du quotidien alliant esthétique, ergonomie et fonctionnalité.",
  salary: 3200,
  url_job: "https://www.onisep.fr/recherche?text=designer+industriel&context=onisep"
)

JobCategory.create!(
  job_id: 8,
  category_id: 1
)

JobCategory.create!(
  job_id: 8,
  category_id: 3
)
#! Formations pour le métier de Designer produit

formations << Formation.create!(
  name: "Bachelor Design Produit",
  level: "Bac +3",
  duration: 3,
  price: 7500,
  url_formation: "https://www.onisep.fr/ressources/structures-enseignement/nouvelle-aquitaine/gironde/ecole-de-conde-bordeaux/bachelor-design-de-produits-objets"
)
JobFormation.create!(
  job_id: 8,
  formation_id: 22
)

formations << Formation.create!(
  name: "Diplôme National des Métiers d’Art et du Design (DN MADE) spécialité Objet",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/post-bac/dn-made-mention-objet"
)
JobFormation.create!(
  job_id: 8,
  formation_id: 23
)

formations << Formation.create!(
  name: "Master Design Industriel et Innovation",
  level: "Bac +5",
  duration: 5,
  price: 8000,
  url_formation: "https://www.onisep.fr/ressources/univers-metier/metiers/designer-industriel-designeuse-industrielle"
)
JobFormation.create!(
  job_id: 8,
  formation_id: 24
)

jobs << Job.create!(
  name: "Directeur artistique",
  description: "Supervise la direction artistique d'un projet, d'une marque ou d'une entreprise. Définit l'identité
  visuelle.",
  salary: 4000,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/directeur-directrice-artistique"
)

JobCategory.create!(
  job_id: 9,
  category_id: 4
)

JobCategory.create!(
  job_id: 9,
  category_id: 1
)

#! Formations pour le métier de Directeur artistique

formations << Formation.create!(
  name: "Bachelor Direction Artistique et Design Graphique",
  level: "Bac +3",
  duration: 3,
  price: 8500,
  url_formation: "https://diplomeo.com/trouver-bachelor-directeur_artistique"
)
JobFormation.create!(
  job_id: 9,
  formation_id: 25
)

JobFormation.create!(
  job_id: 9,
  formation_id: 2
)

formations << Formation.create!(
  name: "Diplôme Supérieur d’Arts Appliqués (DSAA) spécialité Design et Communication",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/post-bac/dsaa-design-mention-graphisme"
)
JobFormation.create!(
  job_id: 9,
  formation_id: 26
)

jobs << Job.create!(
  name: "Décorateur d'intérieur",
  description: "Conseille et accompagne les clients dans l'aménagement et la décoration de leurs espaces de vie.",
  salary: 2700,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/decorateur-decoratrice-d-interieur"
)

JobCategory.create!(
  job_id: 10,
  category_id: 1
)

JobCategory.create!(
  job_id: 10,
  category_id: 2
)
  #! Formations pour le métier de Décorateur d'intérieur

formations << Formation.create!(
  name: "Bachelor Décoration et Design d’Intérieur",
  level: "Bac +3",
  duration: 3,
  price: 7000,
  url_formation: "https://www.onisep.fr/ressources/univers-metier/metiers/decorateur-decoratrice-d-interieur"
)
JobFormation.create!(
  job_id: 10,
  formation_id: 27
)

formations << Formation.create!(
  name: "Diplôme National des Métiers d’Art et du Design (DN MADE) spécialité Espace",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/post-bac/dn-made-mention-espace"
)
JobFormation.create!(
  job_id: 10,
  formation_id: 28
)

formations << Formation.create!(
  name: "Master Design d’Espace et Architecture Intérieure",
  level: "Bac +5",
  duration: 5,
  price: 8000,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/post-bac/dsaa-design-mention-espace"
)
JobFormation.create!(
  job_id: 10,
  formation_id: 29
)

jobs << Job.create!(
  name: "Maquilleur professionnel",
  description: "Réalise des maquillages pour des shootings photo, des défilés de mode,
  des spectacles ou des productions audiovisuelles.",
  salary: 2200,
  url_job: "https://www.onisep.fr/ressources/univers-formation/formations/post-bac/maquilleur-professionnel"
)

JobCategory.create!(
  job_id: 11,
  category_id: 2
)

#! Formations pour le métier de Maquilleur professionnel

formations << Formation.create!(
  name: "CAP Esthétique, Cosmétique, Parfumerie option Maquillage",
  level: "Bac",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/lycees/cap-esthetique-cosmetique-parfumerie"
)
JobFormation.create!(
  job_id: 11,
  formation_id: 30
)

formations << Formation.create!(
  name: "Bachelor Maquillage Artistique et Effets Spéciaux",
  level: "Bac +3",
  duration: 3,
  price: 8500,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/post-bac/bachelor-maquilleur-cinema-et-effets-speciaux"
)
JobFormation.create!(
  job_id: 11,
  formation_id: 31
)

formations << Formation.create!(
  name: "Diplôme Maquilleur Professionnel Spécial FX et Cinéma",
  level: "Bac +3",
  duration: 3,
  price: 9000,
  url_formation: "https://www.itmparis.com/formation/chef-maquilleur#:~:text=Cette%20formation%20permet%20aux%20%C3%A9tudiants,l'usage%20des%20diff%C3%A9rents%20mat%C3%A9riaux."
)
JobFormation.create!(
  job_id: 11,
  formation_id: 32
)

jobs << Job.create!(
  name: "Costumier",
  description: "Conçoit et réalise les costumes pour le théâtre, le cinéma, la télévision ou les spectacles vivants.",
  salary: 2400,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/costumier-costumiere"
)

JobCategory.create!(
  job_id: 12,
  category_id: 1
)

JobCategory.create!(
  job_id: 12,
  category_id: 2
)
#! Formations pour le métier de Costumier

formations << Formation.create!(
  name: "Diplôme des Métiers d’Art (DMA) Costumier-Réalisateur",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.orientation.com/diplomes/dma-costumier-realisateur"
)
JobFormation.create!(
  job_id: 12,
  formation_id: 33
)

formations << Formation.create!(
  name: "Bachelor Création de Costumes pour le Spectacle",
  level: "Bac +3",
  duration: 3,
  price: 7500,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/post-bac/dn-made-mention-spectacle"
)
JobFormation.create!(
  job_id: 12,
  formation_id: 34
)

formations << Formation.create!(
  name: "Master Scénographie et Conception de Costumes",
  level: "Bac +5",
  duration: 5,
  price: 8500,
  url_formation: "https://www.ensatt.fr/formation/conception-costume/"
)
JobFormation.create!(
  job_id: 12,
  formation_id: 35
)

jobs << Job.create!(
  name: "Graphiste motion design",
  description: "Crée des animations graphiques.
  Utilise des logiciels comme After Effects pour concevoir des vidéos dynamiques.",
  salary: 2800,
  url_job: "https://www.onisep.fr/ressources/univers-formation/formations/post-bac/graphiste-motion-designer"
)

JobCategory.create!(
  job_id: 13,
  category_id: 1
)

JobCategory.create!(
  job_id: 13,
  category_id: 3
)

#! Formations pour le métier de Graphiste motion design

formations << Formation.create!(
  name: "Bachelor Motion Design et Animation 3D",
  level: "Bac +3",
  duration: 3,
  price: 7500,
  url_formation: "https://www.gobelins.fr/design-graphique/formations/dg30-bachelor-graphiste-motion-designer"
)
JobFormation.create!(
  job_id: 13,
  formation_id: 36
)

formations << Formation.create!(
  name: "Diplôme National des Métiers d’Art et du Design (DN MADE) spécialité Graphisme et Motion Design",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/post-bac/dn-made-mention-graphisme"
)
JobFormation.create!(
  job_id: 13,
  formation_id: 37
)

formations << Formation.create!(
  name: "Master Direction Artistique et Motion Design",
  level: "Bac +5",
  duration: 5,
  price: 8500,
  url_formation: "https://www.gobelins.fr/design-graphique/formations/dg50-mastere-directeur-artistique-motion-designer"
)
JobFormation.create!(
  job_id: 13,
  formation_id: 38
)

jobs << Job.create!(
  name: "Storyboarder",
  description: "Réalise des esquisses et des séquences visuelles.
  Traduit le scénario en images pour aider à la mise en scène.",
  salary: 2500,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/dessinateur-dessinatrice-de-bd"
)

JobCategory.create!(
  job_id: 14,
  category_id: 1
)

JobCategory.create!(
  job_id: 14,
  category_id: 2
)
#! Formations pour le métier de Storyboarder

formations << Formation.create!(
  name: "Bachelor Animation et Storyboard",
  level: "Bac +3",
  duration: 3,
  price: 8000,
  url_formation: "https://www.onisep.fr/formation/les-principaux-domaines-de-formation/les-ecoles-de-cinema-d-animation"
)
JobFormation.create!(
  job_id: 14,
  formation_id: 39
)

formations << Formation.create!(
  name: "Diplôme des Métiers d'Art (DMA) Cinéma d'Animation",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/post-bac/dn-made-mention-animation"
)
JobFormation.create!(
  job_id: 14,
  formation_id: 40
)

formations << Formation.create!(
  name: "Master Cinéma d’Animation et Storyboard",
  level: "Bac +5",
  duration: 5,
  price: 9000,
  url_formation: "https://www.gobelins.fr/cinema-animation/formations/ca50-master-arts-concepteur-realisateur-films-animation"
)
JobFormation.create!(
  job_id: 14,
  formation_id: 41
)

jobs << Job.create!(
  name: "Céramiste",
  description: "Façonne et décore des objets en céramique.
  Utilise différentes techniques de modelage et de cuisson pour donner vie à ses créations.",
  salary: 2200,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/ceramiste"
)

JobCategory.create!(
  job_id: 15,
  category_id: 2
)

#! Formations pour le métier de Céramiste

formations << Formation.create!(
  name: "CAP Tournage en Céramique",
  level: "CAP",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/lycees/cap-tournage-en-ceramique"
)
JobFormation.create!(
  job_id: 15,
  formation_id: 42
)

formations << Formation.create!(
  name: "Diplôme des Métiers d'Art (DMA) Arts de la Céramique",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.orientation.com/diplomes/dma-arts-textiles-et-ceramiques-option-ceramique-artisanale"
)
JobFormation.create!(
  job_id: 15,
  formation_id: 43
)

formations << Formation.create!(
  name: "Bachelor Design et Création en Céramique",
  level: "Bac +3",
  duration: 3,
  price: 7000,
  url_formation: "https://ceramique-france.fr/formations/etudiant-post-bac/dn-made-mention-materiaux-parcours-ceramique"
)
JobFormation.create!(
  job_id: 15,
  formation_id: 44
)

jobs << Job.create!(
  name: "Designer d'espace",
  description: "Conçoit l’aménagement d’espaces.
  Travaille sur des projets variés comme des musées, des magasins ou des événements.",
  salary: 3000,
  url_job: "https://www.onisep.fr/ressources/univers-formation/formations/post-bac/architecte-d-interieur-designer-d-espace"
)

JobCategory.create!(
  job_id: 16,
  category_id: 1
)

JobCategory.create!(
  job_id: 16,
  category_id: 3
)

#! Formations pour le métier de Designer d'espace

formations << Formation.create!(
  name: "Bachelor Design d’Espace",
  level: "Bac +3",
  duration: 3,
  price: 7500,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/post-bac/bachelor-design-d-espace"
)
JobFormation.create!(
  job_id: 16,
  formation_id: 45
)

JobFormation.create!(
  job_id: 16,
  formation_id: 28
)

formations << Formation.create!(
  name: "Master Design d’Espace et Environnements Architecturaux",
  level: "Bac +5",
  duration: 5,
  price: 8000,
  url_formation: "https://ecole-esdac.com/mastere-design-espace/"
)
JobFormation.create!(
  job_id: 16,
  formation_id: 46
)

jobs << Job.create!(
  name: "Tatoueur",
  description: "Réalise des tatouages artistiques.
  Maîtrise les techniques de dessin, d’ombrage et de coloration sur la peau.",
  salary: 2700,
  url_job: "https://www.cidj.com/s-orienter/metiers/tatoueur-tatoueuse"
)

JobCategory.create!(
  job_id: 17,
  category_id: 1
)

JobCategory.create!(
  job_id: 17,
  category_id: 2
)

#! Formations pour le métier de Tatoueur

formations << Formation.create!(
  name: "Formation Professionnelle en Tatouage Artistique",
  level: "Certification",
  duration: 1,
  price: 6500,
  url_formation: "https://www.formationtatoueur.fr/"
)
JobFormation.create!(
  job_id: 17,
  formation_id: 47
)

formations << Formation.create!(
  name: "Diplôme en Arts Appliqués spécialité Dessin et Illustration",
  level: "Bac +2",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/formation/apres-le-bac-les-etudes-superieures/les-principales-filieres-d-etudes-superieures/le-dn-made#:~:text=Le%20DN%20MADE%20(dipl%C3%B4me%20national,et%20une%20individualisation%20du%20parcours."
)
JobFormation.create!(
  job_id: 17,
  formation_id: 48
)

formations << Formation.create!(
  name: "CAP Dessinateur en Arts Graphiques Imprimés",
  level: "CAP",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/lycees/cap-signaletique-et-decors-graphiques"
)
JobFormation.create!(
  job_id: 17,
  formation_id: 49
)

jobs << Job.create!(
  name: "Mécanicien automobile",
  description: "Diagnostique et répare les pannes mécaniques des véhicules.
  Effectue l'entretien et assure la fiabilité des systèmes.",
  salary: 2500,
  url_job: "https://www.cidj.com/s-orienter/metiers/mecanicien-mecanicienne-autoe"
)

JobCategory.create!(
  job_id: 18,
  category_id: 2
)

#! Formations pour le métier de Mécanicien automobile

formations << Formation.create!(
  name: "CAP Maintenance des Véhicules option Voitures Particulières",
  level: "CAP",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/lycees/cap-maintenance-des-vehicules-option-a-voitures-particulieres"
)
JobFormation.create!(
  job_id: 18,
  formation_id: 50
)

formations << Formation.create!(
  name: "Bac Pro Maintenance des Véhicules",
  level: "Bac Pro",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/lycees/bac-pro-maintenance-des-vehicules-option-a-voitures-particulieres"
)
JobFormation.create!(
  job_id: 18,
  formation_id: 51
)

formations << Formation.create!(
  name: "BTS Maintenance des Véhicules option Voitures Particulières",
  level: "Bac +2",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/post-bac/bts-maintenance-des-vehicules-option-a-voitures-particulieresc"
)
JobFormation.create!(
  job_id: 18,
  formation_id: 52
)

jobs << Job.create!(
  name: "Électricien",
  description: "Installe et entretient les systèmes électriques des bâtiments.
  Garantit la conformité et la sécurité des installations.",
  salary: 2800,
  url_job: "https://www.hellowork.com/fr-fr/metiers/electricien.html"
)

JobCategory.create!(
  job_id: 19,
  category_id: 2
)

#! Formations pour le métier d'Électricien

formations << Formation.create!(
  name: "CAP Électricien",
  level: "CAP",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/lycees/cap-electricien"
)
JobFormation.create!(
  job_id: 19,
  formation_id: 53
)

formations << Formation.create!(
  name: "Bac Pro Métiers de l'Électricité et de ses Environnements Connectés (MELEC)",
  level: "Bac Pro",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/lycees/bac-pro-metiers-de-l-electricite-et-de-ses-environnements-connectes"
)
JobFormation.create!(
  job_id: 19,
  formation_id: 54
)

formations << Formation.create!(
  name: "BTS Électrotechnique",
  level: "Bac +2",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/post-bac/bts-electrotechnique"
)
JobFormation.create!(
  job_id: 19,
  formation_id: 55
)

jobs << Job.create!(
  name: "Plombier-chauffagiste",
  description: "Répare et installe les systèmes de plomberie et de chauffage.
  Travaille sur des chantiers de construction et en maintenance.",
  salary: 2700,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/plombier-plombiere"
)

JobCategory.create!(
  job_id: 20,
  category_id: 2
)

#! Formations pour le métier de Plombier-chauffagiste

formations << Formation.create!(
  name: "CAP Installateur Sanitaire",
  level: "CAP",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/lycees/cap-monteur-en-installations-sanitaires"
)
JobFormation.create!(
  job_id: 20,
  formation_id: 56
)

formations << Formation.create!(
  name: "Bac Pro Technicien en Installation des Systèmes Énergétiques et Climatiques (TISEC)",
  level: "Bac Pro",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/lycees/bac-pro-installateur-en-chauffage-climatisation-et-energies-renouvelables"
)
JobFormation.create!(
  job_id: 20,
  formation_id: 57
)

formations << Formation.create!(
  name: "BP Monteur en Installations de Génie Climatique et Sanitaire",
  level: "Bac +2",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/lycees/bp-monteur-en-installations-du-genie-climatique-et-sanitaire"
)
JobFormation.create!(
  job_id: 20,
  formation_id: 58
)

jobs << Job.create!(
  name: "Charpentier",
  description: "Conçoit et installe des structures en bois pour le bâtiment.
   Travaille en atelier et sur les chantiers de construction.",
  salary: 2600,
  url_job: "https://www.metiers-foret-bois.org/fiche-metier/charpentier"
)

JobCategory.create!(
  job_id: 21,
  category_id: 2
)

#! Formations pour le métier de Charpentier

formations << Formation.create!(
  name: "CAP Charpentier Bois",
  level: "CAP",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/lycees/cap-charpentier-bois"
)
JobFormation.create!(
  job_id: 21,
  formation_id: 59
)

formations << Formation.create!(
  name: "Bac Pro Technicien Constructeur Bois",
  level: "Bac Pro",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/lycees/bac-pro-technicien-constructeur-bois"
)
JobFormation.create!(
  job_id: 21,
  formation_id: 60
)

formations << Formation.create!(
  name: "BP Charpentier",
  level: "Bac +2",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/lycees/bp-charpentier-bois"
)
JobFormation.create!(
  job_id: 21,
  formation_id: 61
)

jobs << Job.create!(
  name: "Maçon",
  description: "Construit les fondations et les murs des bâtiments.
  Manie divers matériaux comme la brique, le béton et la pierre.",
  salary: 2400,
  url_job: "https://www.cidj.com/s-orienter/metiers/macon-maconne"
)

JobCategory.create!(
  job_id: 22,
  category_id: 2
)

#! Formations pour le métier de Maçon

formations << Formation.create!(
  name: "CAP Maçon",
  level: "CAP",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/lycees/cap-macon#:~:text=Il%20est%20form%C3%A9%20pour%20intervenir,fabriquer%20et%20utiliser%20des%20b%C3%A9tons."
)
JobFormation.create!(
  job_id: 22,
  formation_id: 62
)

formations << Formation.create!(
  name: "Bac Pro Interventions sur le Patrimoine Bâti (option Maçonnerie)",
  level: "Bac Pro",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/lycees/bac-pro-interventions-sur-le-patrimoine-bati-option-a-maconnerie"
)
JobFormation.create!(
  job_id: 22,
  formation_id: 63
)

formations << Formation.create!(
  name: "BP Maçon",
  level: "Bac +2",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/lycees/bp-macon"
)
JobFormation.create!(
  job_id: 22,
  formation_id: 64
)

jobs << Job.create!(
  name: "Soudeur",
  description: "Assemble des pièces métalliques en utilisant différentes techniques de soudage.
  Intervient dans l'industrie et le bâtiment.",
  salary: 2600,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/soudeur-soudeuse"
)

JobCategory.create!(
  job_id: 23,
  category_id: 2
)

#! Formations pour le métier de Soudeur

formations << Formation.create!(
  name: "CAP Réalisation en Chaudronnerie Industrielle",
  level: "CAP",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/lycees/cap-realisations-industrielles-en-chaudronnerie-ou-soudage-option-a-chaudronnerie"
)
JobFormation.create!(
  job_id: 23,
  formation_id: 65
)

formations << Formation.create!(
  name: "Bac Pro Technicien en Chaudronnerie Industrielle",
  level: "Bac Pro",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/lycees/bac-pro-technicien-en-chaudronnerie-industrielle"
)
JobFormation.create!(
  job_id: 23,
  formation_id: 66
)

formations << Formation.create!(
  name: "Titre Professionnel Soudeur Assembleur Industriel",
  level: "Certification",
  duration: 1,
  price: 0,
  url_formation: "https://www.francecompetences.fr/recherche/rncp/34502/"
)
JobFormation.create!(
  job_id: 23,
  formation_id: 67
)

jobs << Job.create!(
  name: "Technicien de maintenance industrielle",
  description: "Assure la maintenance préventive et corrective des machines.
  Analyse les pannes et optimise les performances des équipements.",
  salary: 2800,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/technicien-technicienne-de-maintenance-industrielle"
)

JobCategory.create!(
  job_id: 24,
  category_id: 2
)

JobCategory.create!(
  job_id: 24,
  category_id: 3
)

#! Formations pour le métier de Technicien de maintenance industrielle

formations << Formation.create!(
  name: "Bac Pro Maintenance des Équipements Industriels",
  level: "Bac Pro",
  duration: 3,
  price: 0,
  url_formation: "https://www.francecompetences.fr/recherche/rncp/3632/"
)
JobFormation.create!(
  job_id: 24,
  formation_id: 68
)
#!------------ j'en suis là du contrôle des url ----##########
formations << Formation.create!(
  name: "BTS Maintenance des Systèmes option Systèmes de Production",
  level: "Bac +2",
  duration: 2,
  price: 0,
  url_formation: "BTS Maintenance des Systèmes option Systèmes de Production"
)
JobFormation.create!(
  job_id: 24,
  formation_id: 69
)

formations << Formation.create!(
  name: "Licence Pro Maintenance et Technologie : systèmes industriels, production et énergie",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/post-bac/licence-pro-mention-maintenance-des-systemes-industriels-de-production-et-d-energie"
)
JobFormation.create!(
  job_id: 24,
  formation_id: 70
)

jobs << Job.create!(
  name: "Conducteur de travaux",
  description: "Supervise les chantiers et coordonne les équipes.
  Veille au respect des délais, du budget et des normes de sécurité.",
  salary: 3500,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/conducteur-conductrice-de-travaux"
)

JobCategory.create!(
  job_id: 25,
  category_id: 2
)

JobCategory.create!(
  job_id: 25,
  category_id: 4
)

#! Formations pour le métier de Conducteur de travaux

formations << Formation.create!(
  name: "BTS Bâtiment",
  level: "Bac +2",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/post-bac/bts-batiment"
)
JobFormation.create!(
  job_id: 25,
  formation_id: 71
)

formations << Formation.create!(
  name: "Licence Pro Métiers du BTP : Génie Civil et Construction",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.francecompetences.fr/recherche/rncp/30142/"
)
JobFormation.create!(
  job_id: 25,
  formation_id: 72
)

formations << Formation.create!(
  name: "Master Ingénierie et Management de la Construction",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.masteretudes.fr/master/ingenierie-de-la-construction"
)
JobFormation.create!(
  job_id: 25,
  formation_id: 73
)

jobs << Job.create!(
  name: "Chaudronnier",
  description: "Façonne des pièces métalliques pour l'industrie et le bâtiment.
  Utilise des machines spécialisées pour découper et assembler les matériaux.",
  salary: 2700,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/chaudronnier-chaudronniere"
)

JobCategory.create!(
  job_id: 26,
  category_id: 2
)

JobFormation.create!(
  job_id: 26,
  formation_id: 65
)

JobFormation.create!(
  job_id: 26,
  formation_id: 66
)

formations << Formation.create!(
  name: "BTS Conception et Réalisation en Chaudronnerie Industrielle",
  level: "Bac +2",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/post-bac/bts-conception-et-realisation-en-chaudronnerie-industrielle"
)
JobFormation.create!(
  job_id: 26,
  formation_id: 74
)

jobs << Job.create!(
  name: "Technicien en énergie renouvelable",
  description: "Installe et entretient des systèmes d’énergie solaire, éolienne ou biomasse.
  Optimise la performance des installations.",
  salary: 2900,
  url_job: "https://www.cidj.com/s-orienter/metiers/technicien-technicienne-energies-renouvelables"
)

JobCategory.create!(
  job_id: 27,
  category_id: 2
)

JobCategory.create!(
  job_id: 27,
  category_id: 3
)

#! Formations pour le métier de Technicien en énergie renouvelable

JobFormation.create!(
  job_id: 27,
  formation_id: 54
)

formations << Formation.create!(
  name: "BTS Fluides, Énergies, Domotique (FED) option B : Génie Climatique et Fluidique",
  level: "Bac +2",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/post-bac/bts-fluides-energies-domotique-option-b-froid-et-conditionnement-d-air"
)
JobFormation.create!(
  job_id: 27,
  formation_id: 75
)

formations << Formation.create!(
  name: "Licence Pro Énergies Renouvelables et Efficacité Énergétique",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/structures-enseignement/ile-de-france/val-de-marne/iut-de-creteil-vitry-site-de-creteil-universite-paris-est-creteil-val-de-marne/licence-pro-mention-metiers-de-l-energetique-de-l-environnement-et-du-genie-climatique"
)
JobFormation.create!(
  job_id: 27,
  formation_id: 76
)

jobs << Job.create!(
  name: "Mécanicien aéronautique",
  description: "Diagnostique et répare les systèmes des avions et hélicoptères.
  Respecte des normes strictes de sécurité et de qualité.",
  salary: 3200,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/mecanicien-mecanicienne-d-entretien-d-avion"
)

JobCategory.create!(
  job_id: 28,
  category_id: 2
)

JobCategory.create!(
  job_id: 28,
  category_id: 3
)
#! Formations pour le métier de Mécanicien aéronautique

formations << Formation.create!(
  name: "CAP Aéronautique option Systèmes",
  level: "CAP",
  duration: 2,
  price: 0,
  url_formation: "https://www.francecompetences.fr/recherche/rncp/17483/"
)
JobFormation.create!(
  job_id: 28,
  formation_id: 77
)

formations << Formation.create!(
  name: "Bac Pro Aéronautique option Systèmes",
  level: "Bac Pro",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/lycees/bac-pro-aeronautique-option-systemes"
)
JobFormation.create!(
  job_id: 28,
  formation_id: 78
)

formations << Formation.create!(
  name: "BTS Aéronautique",
  level: "Bac +2",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/post-bac/bts-aeronautique"
)
JobFormation.create!(
  job_id: 28,
  formation_id: 79
)

jobs << Job.create!(
  name: "Paysagiste",
  description: "Crée et entretient des espaces verts, jardins et parcs.
  Sélectionne les plantes et aménage les terrains selon les attentes des clients.",
  salary: 2300,
  url_job: "https://www.hellowork.com/fr-fr/metiers/paysagiste.html"
)

JobCategory.create!(
  job_id: 29,
  category_id: 2
)

#! Formations pour le métier de Paysagiste

formations << Formation.create!(
  name: "CAP Métiers de l'Agriculture option Travaux Paysagers",
  level: "CAP",
  duration: 2,
  price: 0,
  url_formation: "https://www.francecompetences.fr/recherche/rncp/2756/#:~:text=Le%20titulaire%20du%20certificat%20d,piquetage%2C%20mise%20en%20forme)."
)
JobFormation.create!(
  job_id: 29,
  formation_id: 80
)

formations << Formation.create!(
  name: "Bac Pro Aménagements Paysagers",
  level: "Bac Pro",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/lycees/bac-pro-amenagements-paysagers"
)
JobFormation.create!(
  job_id: 29,
  formation_id: 81
)

formations << Formation.create!(
  name: "BTSA Aménagements Paysagers",
  level: "Bac +2",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/post-bac/btsa-amenagements-paysagers"
)
JobFormation.create!(
  job_id: 29,
  formation_id: 82
)

jobs << Job.create!(
  name: "Agent de maintenance des bâtiments",
  description: "Effectue des réparations et de l’entretien sur divers équipements d’un bâtiment.
  Intervient en plomberie, électricité et menuiserie.",
  salary: 2500,
  url_job: "https://www.cidj.com/s-orienter/metiers/agent-agente-de-maintenance-du-batiment"
)

JobCategory.create!(
  job_id: 30,
  category_id: 2
)

#! Formations pour le métier d'Agent de maintenance des bâtiments

formations << Formation.create!(
  name: "CAP Maintenance des Bâtiments de Collectivité",
  level: "CAP",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/lycees/cap-interventions-en-maintenance-technique-des-batiments"
)
JobFormation.create!(
  job_id: 30,
  formation_id: 83
)

formations << Formation.create!(
  name: "Bac Pro Maintenance des Équipements et des Bâtiments",
  level: "Bac Pro",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/lycees/bac-pro-maintenance-des-materiels-option-b-materiels-de-construction-et-de-manutention"
)
JobFormation.create!(
  job_id: 30,
  formation_id: 84
)

formations << Formation.create!(
  name: "BTS Maintenance des Systèmes option Bâtiment",
  level: "Bac +2",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/post-bac/bts-maintenance-des-systemes-option-b-systemes-energetiques-et-fluidiques"
)
JobFormation.create!(
  job_id: 30,
  formation_id: 85
)

jobs << Job.create!(
  name: "Pilote de ligne",
  description: "Assure le transport aérien de passagers ou de marchandises. Vérifie la sécurité des vols et suit des protocoles stricts.",
  salary: 6000,
  url_job: "https://www.cidj.com/s-orienter/metiers/pilote-de-ligne"
)

JobCategory.create!(
  job_id: 31,
  category_id: 1
)
#! Formations pour le métier de Pilote de ligne

formations << Formation.create!(
  name: "Classe Préparatoire aux Grandes Écoles (CPGE) option aéronautique",
  level: "Bac +2",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/formation/apres-le-bac-les-etudes-superieures/les-principales-filieres-d-etudes-superieures/les-cpge-classes-preparatoires-aux-grandes-ecoles/les-prepas-scientifiques/les-prepas-apres-un-bts-ou-un-but-scientifique"
)
JobFormation.create!(
  job_id: 31,
  formation_id: 86
)

formations << Formation.create!(
  name: "Licence Professionnelle Pilote de Ligne",
  level: "Bac +3",
  duration: 3,
  price: 25000,
  url_formation: "https://www.onisep.fr/ressources/univers-metier/metiers/pilote-de-ligne"
)
JobFormation.create!(
  job_id: 31,
  formation_id: 87
)

formations << Formation.create!(
  name: "École Nationale de l'Aviation Civile (ENAC) - Pilote de Ligne",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.enac.fr/fr/epl-eleve-pilote-de-ligne"
)
JobFormation.create!(
  job_id: 31,
  formation_id: 88
)

jobs << Job.create!(
  name: "Technicien forestier",
  description: "Gère l’exploitation et la préservation des forêts. Suit les projets de reboisement et veille à la biodiversité.",
  salary: 2600,
  url_job: "https://www.metiers-foret-bois.org/fiche-metier/technicien-ne-forestier-ere"
)

JobCategory.create!(
  job_id: 32,
  category_id: 2
)

#! Formations pour le métier de Technicien forestier

formations << Formation.create!(
  name: "CAPA Travaux Forestiers",
  level: "CAP",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/lycees/capa-travaux-forestiers"
)
JobFormation.create!(
  job_id: 32,
  formation_id: 89
)

formations << Formation.create!(
  name: "Bac Pro Gestion des Milieux Naturels et de la Faune",
  level: "Bac Pro",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/lycees/bac-pro-gestion-des-milieux-naturels-et-de-la-faune"
)
JobFormation.create!(
  job_id: 32,
  formation_id: 90
)

formations << Formation.create!(
  name: "BTSA Gestion Forestière",
  level: "Bac +2",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/ressources/univers-formation/formations/post-bac/btsa-gestion-forestiere"
)
JobFormation.create!(
  job_id: 32,
  formation_id: 91
)

jobs << Job.create!(
  name: "Marin-pêcheur",
  description: "Capture des poissons et fruits de mer en mer ou en rivière. Travaille sur des chalutiers ou en petite pêche côtière.",
  salary: 2600,
  url_job: "https://www.cidj.com/s-orienter/metiers/marin-pecheur"
)

JobCategory.create!(
  job_id: 33,
  category_id: 2
)

#! Formations pour le métier de Marin-pêcheur

formations << Formation.create!(
  name: "CAP Matelot",
  level: "CAP",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/cap-matelot"
)
JobFormation.create!(
  job_id: 33,
  formation_id: 92
)

formations << Formation.create!(
  name: "Bac Pro Conduite et Gestion des Entreprises Maritimes (CGEM)",
  level: "Bac Pro",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/bac-pro-cgem"
)
JobFormation.create!(
  job_id: 33,
  formation_id: 93
)

formations << Formation.create!(
  name: "Brevet de Capitaine 200",
  level: "Certification",
  duration: 1,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/brevet-capitaine-200"
)
JobFormation.create!(
  job_id: 33,
  formation_id: 94
)

jobs << Job.create!(
  name: "Chauffeur poids lourd",
  description: "Transporte des marchandises sur de longues distances. Doit assurer la livraison en respectant les règles de sécurité routière.",
  salary: 2500,
  url_job: "https://www.hellowork.com/fr-fr/metiers/routier.html"
)

JobCategory.create!(
  job_id: 34,
  category_id: 2
)

 #! Formations pour le métier de Chauffeur poids lourd

formations << Formation.create!(
  name: "CAP Conducteur Routier de Marchandises",
  level: "CAP",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/cap-conducteur-routier"
)
JobFormation.create!(
  job_id: 34,
  formation_id: 95
)

formations << Formation.create!(
  name: "Titre Professionnel Conducteur du Transport Routier de Marchandises (CTRMP)",
  level: "Certification",
  duration: 1,
  price: 0,
  url_formation: "https://www.hellowork.com/fr-fr/metiers/titre-pro-conducteur-routier.html"
)
JobFormation.create!(
  job_id: 34,
  formation_id: 96
)

formations << Formation.create!(
  name: "FIMO (Formation Initiale Minimale Obligatoire) Transport de Marchandises",
  level: "Certification",
  duration: 1,
  price: 2500,
  url_formation: "https://www.onisep.fr/metiers/fimo-transport-marchandises"
)
JobFormation.create!(
  job_id: 34,
  formation_id: 97
)

jobs << Job.create!(
  name: "Agent de sécurité",
  description: "Surveille des locaux, des événements ou des sites sensibles. Intervient en cas d'incident et applique les consignes de sûreté.",
  salary: 2200,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/agent-agente-de-securite"
)

JobCategory.create!(
  job_id: 35,
  category_id: 4
)

#! Formations pour le métier d'Agent de sécurité

formations << Formation.create!(
  name: "CAP Agent de Sécurité",
  level: "CAP",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/cap-agent-securite"
)
JobFormation.create!(
  job_id: 35,
  formation_id: 98
)

formations << Formation.create!(
  name: "Titre Professionnel Agent de Prévention et de Sécurité (APS)",
  level: "Certification",
  duration: 1,
  price: 0,
  url_formation: "https://www.hellowork.com/fr-fr/metiers/titre-pro-agent-securite.html"
)
JobFormation.create!(
  job_id: 35,
  formation_id: 99
)

formations << Formation.create!(
  name: "BP Agent Technique de Prévention et de Sécurité",
  level: "Bac Pro",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/bp-agent-securite"
)
JobFormation.create!(
  job_id: 35,
  formation_id: 100
)

jobs << Job.create!(
  name: "Métallier",
  description: "Façonne et assemble des structures métalliques pour le bâtiment et l'industrie. Travaille sur des portes, grilles et escaliers métalliques.",
  salary: 2600,
  url_job: "https://www.hellowork.com/fr-fr/metiers/metallier.html"
)

JobCategory.create!(
  job_id: 36,
  category_id: 2
)

JobCategory.create!(
  job_id: 36,
  category_id: 3
)

#! Formations pour le métier de Métallier

formations << Formation.create!(
  name: "CAP Réalisations Industrielles en Chaudronnerie ou Soudage option B : Métallerie",
  level: "CAP",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/cap-metallerie"
)
JobFormation.create!(
  job_id: 36,
  formation_id: 101
)

formations << Formation.create!(
  name: "Bac Pro Ouvrages du Bâtiment : Métallerie",
  level: "Bac Pro",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/bac-pro-metallerie"
)
JobFormation.create!(
  job_id: 36,
  formation_id: 102
)

formations << Formation.create!(
  name: "BP Métallier",
  level: "Bac +2",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/bp-metallier"
)
JobFormation.create!(
  job_id: 36,
  formation_id: 103
)

jobs << Job.create!(
  name: "Menuisier",
  description: "Fabrique et installe des meubles, portes et fenêtres en bois ou en matériaux composites. Travaille sur mesure en atelier et sur chantier.",
  salary: 2500,
  url_job: "https://www.cidj.com/s-orienter/metiers/menuisier-menuisiere-bois"
)

JobCategory.create!(
  job_id: 37,
  category_id: 2
)
#! Formations pour le métier de Menuisier

formations << Formation.create!(
  name: "CAP Menuisier Fabricant de Menuiserie, Mobilier et Agencement",
  level: "CAP",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/cap-menuisier-fabricant"
)
JobFormation.create!(
  job_id: 37,
  formation_id: 104
)

formations << Formation.create!(
  name: "Bac Pro Technicien Menuisier Agenceur",
  level: "Bac Pro",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/bac-pro-menuisier"
)
JobFormation.create!(
  job_id: 37,
  formation_id: 105
)

formations << Formation.create!(
  name: "BTS Développement et Réalisation Bois",
  level: "Bac +2",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/bts-bois"
)
JobFormation.create!(
  job_id: 37,
  formation_id: 106
)

jobs << Job.create!(
  name: "Technicien en fibre optique",
  description: "Installe et répare les réseaux de fibre optique pour assurer la connexion Internet. Travaille sur le terrain et en hauteur.",
  salary: 2800,
  url_job: "https://www.jobijoba.com/fr/fiches-metiers/Technicien+fibre+optique"
)

JobCategory.create!(
  job_id: 38,
  category_id: 2
)

JobCategory.create!(
  job_id: 38,
  category_id: 4
)
#! Formations pour le métier de Technicien en fibre optique

formations << Formation.create!(
  name: "Titre Professionnel Installateur de Réseaux de Télécommunications en Fibre Optique",
  level: "Certification",
  duration: 1,
  price: 0,
  url_formation: "https://www.hellowork.com/fr-fr/metiers/titre-pro-fibre-optique.html"
)
JobFormation.create!(
  job_id: 38,
  formation_id: 107
)

formations << Formation.create!(
  name: "Bac Pro Systèmes Numériques option Réseaux et Télécommunications",
  level: "Bac Pro",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/bac-pro-systemes-numeriques"
)
JobFormation.create!(
  job_id: 38,
  formation_id: 108
)

formations << Formation.create!(
  name: "BTS Systèmes Numériques option Informatique et Réseaux",
  level: "Bac +2",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/bts-systemes-numeriques"
)
JobFormation.create!(
  job_id: 38,
  formation_id: 109
)

jobs << Job.create!(
  name: "Carrossier-peintre",
  description: "Répare et repeint la carrosserie des véhicules après un accident ou une usure. Travaille en atelier pour redonner un aspect neuf aux voitures.",
  salary: 2600,
  url_job: "https://www.hellowork.com/fr-fr/metiers/carrossier-peintre.html"
)

JobCategory.create!(
  job_id: 39,
  category_id: 2
)

#! Formations pour le métier de Carrossier-peintre

formations << Formation.create!(
  name: "CAP Réparation des Carrosseries",
  level: "CAP",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/cap-reparation-carrosseries"
)
JobFormation.create!(
  job_id: 39,
  formation_id: 110
)

formations << Formation.create!(
  name: "Bac Pro Réparation des Carrosseries",
  level: "Bac Pro",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/bac-pro-reparation-carrosseries"
)
JobFormation.create!(
  job_id: 39,
  formation_id: 111
)

formations << Formation.create!(
  name: "CQP Peintre en Carrosserie",
  level: "Certification",
  duration: 1,
  price: 0,
  url_formation: "https://www.hellowork.com/fr-fr/metiers/cqp-peintre-carrosserie.html"
)
JobFormation.create!(
  job_id: 39,
  formation_id: 112
)

jobs << Job.create!(
  name: "Tailleur de pierre",
  description: "Façonne des pierres pour la construction ou la restauration de monuments. Travaille à la main ou avec des outils spécifiques.",
  salary: 2700,
  url_job: "https://www.cidj.com/s-orienter/metiers/tailleur-tailleuse-de-pierre"
)

JobCategory.create!(
  job_id: 40,
  category_id: 2
)

#! Formations pour le métier de Tailleur de pierre

formations << Formation.create!(
  name: "CAP Tailleur de Pierre - Marbrier du Bâtiment et de la Décoration",
  level: "CAP",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/cap-tailleur-pierre"
)
JobFormation.create!(
  job_id: 40,
  formation_id: 113
)

formations << Formation.create!(
  name: "Bac Pro Métiers et Arts de la Pierre",
  level: "Bac Pro",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/bac-pro-metiers-pierre"
)
JobFormation.create!(
  job_id: 40,
  formation_id: 114
)

formations << Formation.create!(
  name: "BTS Métiers de la Pierre",
  level: "Bac +2",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/bts-metiers-pierre"
)
JobFormation.create!(
  job_id: 40,
  formation_id: 115
)

jobs << Job.create!(
  name: "Cordiste",
  description: "Intervient sur des chantiers en hauteur en utilisant des techniques d'escalade. Effectue des réparations et des entretiens difficiles d'accès.",
  salary: 2900,
  url_job: "https://www.hellowork.com/fr-fr/metiers/cordiste.html"
)

JobCategory.create!(
  job_id: 41,
  category_id: 2
)

#! Formations pour le métier de Cordiste

formations << Formation.create!(
  name: "CQP Cordiste",
  level: "Certification",
  duration: 1,
  price: 0,
  url_formation: "https://www.hellowork.com/fr-fr/metiers/cqp-cordiste.html"
)
JobFormation.create!(
  job_id: 41,
  formation_id: 116
)

formations << Formation.create!(
  name: "Titre Professionnel Cordiste",
  level: "Certification",
  duration: 1,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/titre-pro-cordiste"
)
JobFormation.create!(
  job_id: 41,
  formation_id: 117
)

formations << Formation.create!(
  name: "BP Métiers de la Montagne (option Travaux Acrobatiques)",
  level: "Bac +2",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/bp-metiers-montagne"
)
JobFormation.create!(
  job_id: 41,
  formation_id: 118
)

jobs << Job.create!(
  name: "Vigneron",
  description: "Cultive des vignes et produit du vin en respectant les traditions et les réglementations. Travaille en extérieur et en cave.",
  salary: 2400,
  url_job: "https://www.hellowork.com/fr-fr/metiers/vigneron.html"
)

JobCategory.create!(
  job_id: 42,
  category_id: 2
)

JobCategory.create!(
  job_id: 42,
  category_id: 4
)
#! Formations pour le métier de Vigneron

formations << Formation.create!(
  name: "CAP Agricole Vigne et Vin",
  level: "CAP",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/cap-agricole-vigne-et-vin"
)
JobFormation.create!(
  job_id: 42,
  formation_id: 119
)

formations << Formation.create!(
  name: "Bac Pro Conduite et Gestion de l’Exploitation Agricole (CGEA) option Viticulture",
  level: "Bac Pro",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/bac-pro-cgea-viticulture"
)
JobFormation.create!(
  job_id: 42,
  formation_id: 120
)

formations << Formation.create!(
  name: "BTSA Viticulture-Œnologie",
  level: "Bac +2",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/btsa-viticulture-oenologie"
)
JobFormation.create!(
  job_id: 42,
  formation_id: 121
)

jobs << Job.create!(
  name: "Maraîcher",
  description: "Cultive des fruits et légumes en plein champ ou en serre. Gère l'irrigation, la récolte et la commercialisation de sa production.",
  salary: 2300,
  url_job: "https://www.hellowork.com/fr-fr/metiers/maraicher.html"
)

JobCategory.create!(
  job_id: 43,
  category_id: 2
)

#! Formations pour le métier de Maraîcher

formations << Formation.create!(
  name: "CAPA Productions Horticoles option Fruits et Légumes",
  level: "CAP",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/capa-productions-horticoles"
)
JobFormation.create!(
  job_id: 43,
  formation_id: 122
)

formations << Formation.create!(
  name: "Bac Pro Productions Horticoles",
  level: "Bac Pro",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/bac-pro-productions-horticoles"
)
JobFormation.create!(
  job_id: 43,
  formation_id: 123
)

formations << Formation.create!(
  name: "BTSA Productions Végétales",
  level: "Bac +2",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/btsa-productions-vegetales"
)
JobFormation.create!(
  job_id: 43,
  formation_id: 124
)

jobs << Job.create!(
  name: "Technicien automobile",
  description: "Diagnostique les pannes et effectue la maintenance des véhicules modernes. Utilise des outils électroniques et logiciels de diagnostic.",
  salary: 2700,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/technicien-technicienne-automobile"
)

JobCategory.create!(
  job_id: 44,
  category_id: 2
)

#! Formations pour le métier de Technicien automobile

JobFormation.create!(
  job_id: 44,
  formation_id: 50
)

JobFormation.create!(
  job_id: 44,
  formation_id: 51
)

JobFormation.create!(
  job_id: 44,
  formation_id: 52
)

jobs << Job.create!(
  name: "Forgeron",
  description: "Façonne des pièces métalliques à chaud pour l’artisanat ou l’industrie. Travaille avec des marteaux et des enclumes.",
  salary: 2600,
  url_job: "https://www.hellowork.com/fr-fr/metiers/forgeron.html"
)

JobCategory.create!(
  job_id: 45,
  category_id: 2
)

#! Formations pour le métier de Forgeron

formations << Formation.create!(
  name: "CAP Serrurier Métallier",
  level: "CAP",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/cap-serrurier-metallier"
)
JobFormation.create!(
  job_id: 45,
  formation_id: 125
)

JobFormation.create!(
  job_id: 45,
  formation_id: 66
)

JobFormation.create!(
  job_id: 45,
  formation_id: 74
)

jobs << Job.create!(
  name: "Technicien en bâtiment",
  description: "Supervise les travaux de construction et contrôle la qualité des réalisations. Étudie les plans et coordonne les équipes sur chantier.",
  salary: 2800,
  url_job: "https://www.jobijoba.com/fr/fiches-metiers/Technicien+batiment"
)

JobCategory.create!(
  job_id: 46,
  category_id: 2
)

JobCategory.create!(
  job_id: 46,
  category_id: 3
)

#! Formations pour le métier de Technicien en bâtiment
JobFormation.create!(
  job_id: 46,
  formation_id: 83
)

formations << Formation.create!(
  name: "Bac Pro Technicien du Bâtiment : Organisation et Réalisation du Gros Œuvre",
  level: "Bac Pro",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/bac-pro-batiment"
)
JobFormation.create!(
  job_id: 46,
  formation_id: 126
)

JobFormation.create!(
  job_id: 46,
  formation_id: 71
)

jobs << Job.create!(
  name: "Opérateur de production",
  description: "Surveille et régule les machines industrielles sur une ligne de production. Assure le bon déroulement du processus de fabrication.",
  salary: 2300,
  url_job: "https://www.hellowork.com/fr-fr/metiers/operateur-de-production.html"
)

JobCategory.create!(
  job_id: 47,
  category_id: 3
)

#! Formations pour le métier d'Opérateur de production

formations << Formation.create!(
  name: "CAP Conduite de Systèmes Industriels",
  level: "CAP",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/cap-conduite-systemes-industriels"
)
JobFormation.create!(
  job_id: 47,
  formation_id: 127
)

formations << Formation.create!(
  name: "Bac Pro Pilotage de Systèmes de Production Automatisée",
  level: "Bac Pro",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/bac-pro-production-automatisee"
)
JobFormation.create!(
  job_id: 47,
  formation_id: 128
)


formations << Formation.create!(
  name: "BTS Conception des Processus de Réalisation de Produits",
  level: "Bac +2",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/bts-processus-realisation-produits"
)
JobFormation.create!(
  job_id: 47,
  formation_id: 129
)


jobs << Job.create!(
  name: "Infirmier",
  description: "Dispense des soins aux patients en hôpital, clinique ou à domicile. Assure un suivi médical et un accompagnement personnalisé.",
  salary: 2500,
  url_job: "https://www.hellowork.com/fr-fr/metiers/infirmier.html"
)

JobCategory.create!(
  job_id: 48,
  category_id: 4
)

JobCategory.create!(
  job_id: 48,
  category_id: 3
)

#! Formations pour le métier d'Infirmier

formations << Formation.create!(
  name: "Diplôme d'État d'Infirmier (DEI)",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/diplome-infirmier"
)
JobFormation.create!(
  job_id: 48,
  formation_id: 130
)


formations << Formation.create!(
  name: "Licence Sciences pour la Santé",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 48,
  formation_id: 131
)

formations << Formation.create!(
  name: "Master Santé Publique",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 48,
  formation_id: 132
)

jobs << Job.create!(
  name: "Aide-soignant",
  description: "Assiste les infirmiers dans les soins et l’accompagnement des patients. Aide aux tâches quotidiennes et au bien-être des malades.",
  salary: 2100,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/aide-soignant-aide-soignante"
)

JobCategory.create!(
  job_id: 49,
  category_id: 4
)

#! Formations pour le métier d'Aide-soignant

formations << Formation.create!(
  name: "Diplôme d'État d'Aide-Soignant (DEAS)",
  level: "Certification",
  duration: 1,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/diplome-aide-soignant"
)
JobFormation.create!(
  job_id: 49,
  formation_id: 133
)

formations << Formation.create!(
  name: "Bac Pro Accompagnement, Soins et Services à la Personne (ASSP)",
  level: "Bac Pro",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/bac-pro-assp"
)
JobFormation.create!(
  job_id: 49,
  formation_id: 134
)

formations << Formation.create!(
  name: "Formation Passerelle Aide-Soignant vers Infirmier",
  level: "Certification",
  duration: 1,
  price: 0,
  url_formation: "https://www.hellowork.com/fr-fr/metiers/passerelle-aide-soignant-infirmier.html"
)
JobFormation.create!(
  job_id: 49,
  formation_id: 135
)

jobs << Job.create!(
  name: "Assistant social",
  description: "Aide les personnes en difficulté à résoudre leurs problèmes sociaux et administratifs. Travaille avec des familles, jeunes ou seniors.",
  salary: 2300,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/assistant-assistante-de-service-social"
)

JobCategory.create!(
  job_id: 50,
  category_id: 4
)

#! Formations pour le métier d'Assistant social

formations << Formation.create!(
  name: "Diplôme d'État d'Assistant de Service Social (DEASS)",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/diplome-assistant-social"
)
JobFormation.create!(
  job_id: 50,
  formation_id: 136
)

formations << Formation.create!(
  name: "Licence Intervention Sociale",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 50,
  formation_id: 137
)

formations << Formation.create!(
  name: "Master Travail Social et Action Sociale",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 50,
  formation_id: 138
)

jobs << Job.create!(
  name: "Éducateur spécialisé",
  description: "Accompagne des personnes en situation de handicap, d'exclusion ou en difficulté sociale. Favorise leur insertion et leur autonomie.",
  salary: 2400,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/educateur-specialise-educatrice-specialisee"
)

JobCategory.create!(
  job_id: 51,
  category_id: 4
)

#! Formations pour le métier d'Éducateur spécialisé

formations << Formation.create!(
  name: "Diplôme d'État d'Éducateur Spécialisé (DEES)",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/diplome-educateur-specialise"
)
JobFormation.create!(
  job_id: 51,
  formation_id: 139
)

formations << Formation.create!(
  name: "Licence Sciences de l'Éducation",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 51,
  formation_id: 140
)

formations << Formation.create!(
  name: "Master Intervention Sociale",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 51,
  formation_id: 141
)

jobs << Job.create!(
  name: "Professeur des écoles",
  description: "Enseigne aux élèves du primaire les bases des différentes matières. Participe à leur développement intellectuel et personnel.",
  salary: 2400,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/professeur-des-ecoles-professeure-des-ecoles"
)

JobCategory.create!(
  job_id: 52,
  category_id: 4
)

#! Formations pour le métier de Professeur des écoles

JobFormation.create!(
  job_id: 52,
  formation_id: 140
)

formations << Formation.create!(
  name: "Master Métiers de l'Enseignement, de l'Éducation et de la Formation (MEEF) - 1er degré",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 52,
  formation_id: 142
)

formations << Formation.create!(
  name: "Préparation au Concours de Recrutement de Professeur des Écoles (CRPE)",
  level: "Certification",
  duration: 1,
  price: 0,
  url_formation: "https://www.education.gouv.fr/devenir-professeur-des-ecoles"
)
JobFormation.create!(
  job_id: 52,
  formation_id: 143
)

jobs << Job.create!(
  name: "Conseiller en insertion professionnelle",
  description: "Accompagne les demandeurs d’emploi ou les jeunes en difficulté. Aide à la recherche d’emploi, formation ou reconversion.",
  salary: 2500,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/conseiller-conseillere-en-insertion-sociale-et-professionnelle"
)

JobCategory.create!(
  job_id: 53,
  category_id: 4
)

#! Formations pour le métier de Conseiller en insertion professionnelle

formations << Formation.create!(
  name: "Titre Professionnel Conseiller en Insertion Professionnelle",
  level: "Certification",
  duration: 1,
  price: 0,
  url_formation: "https://www.hellowork.com/fr-fr/metiers/titre-pro-conseiller-insertion.html"
)
JobFormation.create!(
  job_id: 53,
  formation_id: 144
)

formations << Formation.create!(
  name: "Licence Sciences Humaines et Sociales - Mention Travail Social",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 53,
  formation_id: 145
)

formations << Formation.create!(
  name: "Master Gestion des Ressources Humaines et Insertion Professionnelle",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 53,
  formation_id: 146
)

jobs << Job.create!(
  name: "Moniteur-éducateur",
  description: "Accompagne des enfants, adolescents ou adultes en situation de fragilité. Organise des activités éducatives et sociales adaptées.",
  salary: 2200,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/moniteur-educateur-monitrice-educatrice"
)

JobCategory.create!(
  job_id: 54,
  category_id: 4
)

#! Formations pour le métier de Moniteur-éducateur

formations << Formation.create!(
  name: "Diplôme d'État de Moniteur-Éducateur (DEME)",
  level: "Bac +2",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/diplome-moniteur-educateur"
)
JobFormation.create!(
  job_id: 54,
  formation_id: 147
)

JobFormation.create!(
  job_id: 54,
  formation_id: 134
)

JobFormation.create!(
  job_id: 54,
  formation_id: 140
)

jobs << Job.create!(
  name: "Psychologue",
  description: "Écoute, analyse et accompagne des patients souffrant de troubles psychologiques. Travaille en cabinet, hôpital ou entreprise.",
  salary: 3000,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/psychologue"
)

JobCategory.create!(
  job_id: 55,
  category_id: 4
)

JobCategory.create!(
  job_id: 55,
  category_id: 3
)

#! Formations pour le métier de Psychologue

formations << Formation.create!(
  name: "Licence de Psychologie",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/licence-psychologie"
)
JobFormation.create!(
  job_id: 55,
  formation_id: 148
)

formations << Formation.create!(
  name: "Master de Psychologie",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 55,
  formation_id: 149
)

formations << Formation.create!(
  name: "Doctorat en Psychologie",
  level: "Bac +8",
  duration: 8,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/doctorat-psychologie"
)
JobFormation.create!(
  job_id: 55,
  formation_id: 150
)

jobs << Job.create!(
  name: "Animateur socioculturel",
  description: "Organise des activités pour favoriser le lien social et la culture. Intervient auprès des jeunes, des seniors ou en milieu associatif.",
  salary: 2100,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/animateur-socioculturel-animatrice-socioculturelle"
)

JobCategory.create!(
  job_id: 56,
  category_id: 4
)

#! Formations pour le métier d'Animateur socioculturel

formations << Formation.create!(
  name: "BPJEPS (Brevet Professionnel de la Jeunesse, de l'Éducation Populaire et du Sport)",
  level: "Certification",
  duration: 1,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/bpjeps"
)
JobFormation.create!(
  job_id: 56,
  formation_id: 151
)

formations << Formation.create!(
  name: "DEJEPS (Diplôme d'État de la Jeunesse, de l'Éducation Populaire et du Sport)",
  level: "Bac +2",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/dejeps"
)
JobFormation.create!(
  job_id: 56,
  formation_id: 152
)

JobFormation.create!(
  job_id: 56,
  formation_id: 140
)

jobs << Job.create!(
  name: "Ergothérapeute",
  description: "Aide les patients en situation de handicap à retrouver leur autonomie. Propose des adaptations pour améliorer leur quotidien.",
  salary: 2800,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/ergotherapeute"
)

JobCategory.create!(
  job_id: 57,
  category_id: 4
)

#! Formations pour le métier d'Ergothérapeute

formations << Formation.create!(
  name: "Diplôme d'État d'Ergothérapeute",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/diplome-ergotherapeute"
)
JobFormation.create!(
  job_id: 57,
  formation_id: 153
)

JobFormation.create!(
  job_id: 57,
  formation_id: 131
)

formations << Formation.create!(
  name: "Master Santé et Réadaptation",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 57,
  formation_id: 154
)

jobs << Job.create!(
  name: "Kinésithérapeute",
  description: "Pratique des soins de rééducation pour améliorer la mobilité des patients. Intervient après un accident ou une maladie invalidante.",
  salary: 3200,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/masseur-masseuse-kinesitherapeute"
)

JobCategory.create!(
  job_id: 58,
  category_id: 4
)

JobCategory.create!(
  job_id: 58,
  category_id: 3
)

#! Formations pour le métier de Kinésithérapeute

formations << Formation.create!(
  name: "Diplôme d'État de Masseur-Kinésithérapeute",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/diplome-kinesitherapeute"
)
JobFormation.create!(
  job_id: 58,
  formation_id: 155
)

formations << Formation.create!(
  name: "Licence STAPS option Kinésithérapie",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/licence-staps"
)
JobFormation.create!(
  job_id: 58,
  formation_id: 156
)

formations << Formation.create!(
  name: "Master Kinésithérapie et Réadaptation",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 58,
  formation_id: 157
)

jobs << Job.create!(
  name: "Auxiliaire de vie",
  description: "Aide les personnes âgées ou handicapées dans leur quotidien. Assiste pour les repas, l’hygiène et les déplacements.",
  salary: 1900,
  url_job: "https://metiers.anfh.fr/10l60"
)

JobCategory.create!(
  job_id: 59,
  category_id: 4
)

#! Formations pour le métier d'Auxiliaire de vie

formations << Formation.create!(
  name: "Titre Professionnel Assistant de Vie aux Familles (ADVF)",
  level: "Certification",
  duration: 1,
  price: 0,
  url_formation: "https://www.hellowork.com/fr-fr/metiers/titre-pro-advf.html"
)
JobFormation.create!(
  job_id: 59,
  formation_id: 158
)

JobFormation.create!(
  job_id: 59,
  formation_id: 134
)

formations << Formation.create!(
  name: "Diplôme d'État d'Accompagnant Éducatif et Social (DEAES)",
  level: "Bac +1",
  duration: 1,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/diplome-accompagnant-educatif-social"
)
JobFormation.create!(
  job_id: 59,
  formation_id: 159
)

jobs << Job.create!(
  name: "Médecin généraliste",
  description: "Diagnostique et soigne les maladies courantes. Assure un suivi médical régulier des patients.",
  salary: 6000,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/medecin-generaliste"
)

JobCategory.create!(
  job_id: 60,
  category_id: 3
)

JobCategory.create!(
  job_id: 60,
  category_id: 4
)

#! Formations pour le métier de Médecin généraliste

formations << Formation.create!(
  name: "Diplôme d'État de Docteur en Médecine",
  level: "Bac +9",
  duration: 9,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/diplome-docteur-medecine"
)
JobFormation.create!(
  job_id: 60,
  formation_id: 160
)

formations << Formation.create!(
  name: "PASS (Parcours Accès Spécifique Santé) ou L.AS (Licence Accès Santé)",
  level: "Bac +1",
  duration: 1,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/pass-las-medecine"
)
JobFormation.create!(
  job_id: 60,
  formation_id: 161
)

formations << Formation.create!(
  name: "Internat de Médecine Générale",
  level: "Bac +6 à Bac +9",
  duration: 9,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/internat-medecine"
)
JobFormation.create!(
  job_id: 60,
  formation_id: 162
)

jobs << Job.create!(
  name: "Orthophoniste",
  description: "Prend en charge les troubles du langage et de la communication. Rééduque les enfants et adultes présentant des difficultés.",
  salary: 2900,
  url_job: "https://www.cidj.com/s-orienter/metiers/orthophoniste"
)

JobCategory.create!(
  job_id: 61,
  category_id: 4
)

JobCategory.create!(
  job_id: 61,
  category_id: 3
)
#! Formations pour le métier d'Orthophoniste

formations << Formation.create!(
  name: "Certificat de Capacité d'Orthophoniste",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/certificat-capacite-orthophoniste"
)
JobFormation.create!(
  job_id: 61,
  formation_id: 163
)

formations << Formation.create!(
  name: "Licence Sciences du Langage",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/licence-sciences-langage"
)
JobFormation.create!(
  job_id: 61,
  formation_id: 164
)

formations << Formation.create!(
  name: "Master Orthophonie et Troubles du Langage",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 61,
  formation_id: 165
)

jobs << Job.create!(
  name: "Chargé de mission handicap",
  description: "Met en place des dispositifs pour favoriser l’insertion des personnes en situation de handicap. Sensibilise les entreprises et institutions.",
  salary: 2700,
  url_job: "https://www.jobijoba.com/fr/fiches-metiers/Charge+de+mission+handicap"
)

JobCategory.create!(
  job_id: 62,
  category_id: 4
)

#! Formations pour le métier de Chargé de mission handicap

formations << Formation.create!(
  name: "Licence Sciences Humaines et Sociales option Travail Social",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/licence-travail-social"
)
JobFormation.create!(
  job_id: 62,
  formation_id: 166
)

formations << Formation.create!(
  name: "Master Management et Ingénierie des Services et Établissements pour Personnes Handicapées",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 62,
  formation_id: 167
)

formations << Formation.create!(
  name: "DU Handicap et Inclusion",
  level: "Certification",
  duration: 1,
  price: 0,
  url_formation: "https://www.hellowork.com/fr-fr/metiers/du-handicap-inclusion.html"
)
JobFormation.create!(
  job_id: 62,
  formation_id: 168
)

jobs << Job.create!(
  name: "Conseiller en économie sociale et familiale",
  description: "Accompagne les familles en difficulté dans la gestion de leur budget et de leur quotidien. Travaille en lien avec les services sociaux.",
  salary: 2400,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/conseiller-conseillere-en-economie-sociale-et-familiale"
)

JobCategory.create!(
  job_id: 63,
  category_id: 4
)

JobCategory.create!(
  job_id: 63,
  category_id: 3
)

#! Formations pour le métier de Conseiller en économie sociale et familiale

formations << Formation.create!(
  name: "Diplôme d'État de Conseiller en Économie Sociale et Familiale (DECESF)",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/diplome-conseiller-economie-sociale-familiale"
)
JobFormation.create!(
  job_id: 63,
  formation_id: 169
)

formations << Formation.create!(
  name: "BTS Économie Sociale et Familiale",
  level: "Bac +2",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/bts-economie-sociale-familiale"
)
JobFormation.create!(
  job_id: 63,
  formation_id: 170
)

JobFormation.create!(
  job_id: 63,
  formation_id: 166
)

jobs << Job.create!(
  name: "Agent d'accueil en structure sociale",
  description: "Accueille et oriente les usagers dans les structures d’aide sociale. Informe sur les dispositifs et démarches administratives.",
  salary: 2100,
  url_job: "https://candidat.francetravail.fr/metierscope/fiche-metier/K1205/agent-agente-accueil-social"
)

JobCategory.create!(
  job_id: 64,
  category_id: 4
)

 #! Formations pour le métier d'Agent d'accueil en structure sociale

formations << Formation.create!(
  name: "Titre Professionnel Agent d’Accueil et d’Information",
  level: "Certification",
  duration: 1,
  price: 0,
  url_formation: "https://www.hellowork.com/fr-fr/metiers/titre-pro-agent-accueil.html"
)
JobFormation.create!(
  job_id: 64,
  formation_id: 171
)

formations << Formation.create!(
  name: "Bac Pro Services aux Personnes et aux Territoires (SAPAT)",
  level: "Bac Pro",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/bac-pro-sapat"
)
JobFormation.create!(
  job_id: 64,
  formation_id: 172
)

formations << Formation.create!(
  name: "BTS Services et Prestations des Secteurs Sanitaire et Social (SP3S)",
  level: "Bac +2",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/bts-sp3s"
)
JobFormation.create!(
  job_id: 64,
  formation_id: 173
)

jobs << Job.create!(
  name: "Intervenant en centre d’hébergement",
  description: "Accompagne les personnes en situation de précarité dans leur réinsertion. Assure un suivi et un accompagnement quotidien.",
  salary: 2200,
  url_job: "https://olecio.fr/metiers/agent-social-hebergement"
)

JobCategory.create!(
  job_id: 65,
  category_id: 4
)

#! Formations pour le métier d'Intervenant en centre d’hébergement

JobFormation.create!(
  job_id: 65,
  formation_id: 159
)

JobFormation.create!(
  job_id: 65,
  formation_id: 137
)

formations << Formation.create!(
  name: "Master Travail Social et Politiques de l’Habitat",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 65,
  formation_id: 174
)

jobs << Job.create!(
  name: "Éducateur de jeunes enfants",
  description: "Encadre et favorise l’éveil des jeunes enfants en crèche ou halte-garderie. Accompagne leur développement et leur socialisation.",
  salary: 2300,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/educateur-educatrice-de-jeunes-enfants"
)

JobCategory.create!(
  job_id: 66,
  category_id: 4
)

#! Formations pour le métier d'Éducateur de jeunes enfants

formations << Formation.create!(
  name: "Diplôme d'État d'Éducateur de Jeunes Enfants (DEEJE)",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/diplome-educateur-jeunes-enfants"
)
JobFormation.create!(
  job_id: 66,
  formation_id: 175
)

JobFormation.create!(
  job_id: 66,
  formation_id: 140
)

JobFormation.create!(
  job_id: 66,
  formation_id: 141
)

jobs << Job.create!(
  name: "Assistant maternel",
  description: "Garde des enfants à son domicile ou en maison d'assistantes maternelles. Assure leur sécurité et contribue à leur éducation.",
  salary: 1900,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/assistant-maternel-assistante-maternelle"
)

JobCategory.create!(
  job_id: 67,
  category_id: 4
)

#! Formations pour le métier d'Assistant maternel

formations << Formation.create!(
  name: "Formation Obligatoire d'Assistant Maternel",
  level: "Certification",
  duration: 1,
  price: 0,
  url_formation: "https://www.service-public.fr/particuliers/vosdroits/F798"
)
JobFormation.create!(
  job_id: 67,
  formation_id: 176
)

formations << Formation.create!(
  name: "CAP Accompagnant Éducatif Petite Enfance (AEPE)",
  level: "CAP",
  duration: 2,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/cap-petite-enfance"
)
JobFormation.create!(
  job_id: 67,
  formation_id: 177
)

JobFormation.create!(
  job_id: 67,
  formation_id: 134
)

jobs << Job.create!(
  name: "Travailleur social en milieu scolaire",
  description: "Intervient auprès des élèves pour prévenir l’échec scolaire et résoudre des problématiques familiales ou sociales. Collabore avec les enseignants.",
  salary: 2500,
  url_job: "https://www.onisep.fr/metier/decouvrir-le-monde-professionnel/social/les-metiers-et-l-emploi-dans-le-social"
)

JobCategory.create!(
  job_id: 68,
  category_id: 4
)

#! Formations pour le métier de Travailleur social en milieu scolaire

JobFormation.create!(
  job_id: 68,
  formation_id: 136
)

JobFormation.create!(
  job_id: 68,
  formation_id: 166
)

formations << Formation.create!(
  name: "Master Travail Social et Politiques de l’Éducation",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 68,
  formation_id: 178
)

jobs << Job.create!(
  name: "Médiateur social",
  description: "Facilite le dialogue entre des personnes ou groupes en conflit. Intervient dans les quartiers, écoles ou entreprises pour améliorer le vivre-ensemble.",
  salary: 2300,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/mediateur-social-mediatrice-sociale"
)

JobCategory.create!(
  job_id: 69,
  category_id: 4
)

#! Formations pour le métier de Médiateur social

formations << Formation.create!(
  name: "Titre Professionnel Médiateur Social Accès aux Droits et Services",
  level: "Certification",
  duration: 1,
  price: 0,
  url_formation: "https://www.hellowork.com/fr-fr/metiers/titre-pro-mediateur-social.html"
)
JobFormation.create!(
  job_id: 69,
  formation_id: 179
)

formations << Formation.create!(
  name: "Diplôme d'État de Médiateur Familial (DEMF)",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/diplome-mediateur-familial"
)
JobFormation.create!(
  job_id: 69,
  formation_id: 180
)

JobFormation.create!(
  job_id: 69,
  formation_id: 137
)

jobs << Job.create!(
  name: "Intervenant en addictologie",
  description: "Accompagne les personnes souffrant d’addictions et leur entourage. Propose des actions de prévention et de suivi thérapeutique.",
  salary: 2600,
  url_job: "https://www.hellowork.com/fr-fr/metiers/addictologue.html"
)

JobCategory.create!(
  job_id: 70,
  category_id: 4
)
#! Formations pour le métier d'Intervenant en addictologie

formations << Formation.create!(
  name: "DU Addictologie et Prévention des Conduites à Risque",
  level: "Certification",
  duration: 1,
  price: 0,
  url_formation: "https://www.hellowork.com/fr-fr/metiers/du-addictologie.html"
)
JobFormation.create!(
  job_id: 70,
  formation_id: 181
)

formations << Formation.create!(
  name: "Licence Sciences Sanitaires et Sociales option Addictologie",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 70,
  formation_id: 182
)

JobFormation.create!(
  job_id: 70,
  formation_id: 132
)

jobs << Job.create!(
  name: "Chargé d’insertion sociale",
  description: "Aide les personnes éloignées de l’emploi à retrouver une activité. Met en place des dispositifs d’insertion et de formation.",
  salary: 2400,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/conseiller-conseillere-en-insertion-sociale-et-professionnelle"
)

JobCategory.create!(
  job_id: 71,
  category_id: 4
)

#! Formations pour le métier de Chargé d’insertion sociale

JobFormation.create!(
  job_id: 71,
  formation_id: 144
)

formations << Formation.create!(
  name: "Licence Sciences Humaines et Sociales mention Travail Social",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/licence-travail-social"
)
JobFormation.create!(
  job_id: 71,
  formation_id: 183
)

formations << Formation.create!(
  name: "Master Travail Social et Politique de l'Insertion",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 71,
  formation_id: 184
)

jobs << Job.create!(
  name: "Responsable de structure d’accueil pour personnes âgées",
  description: "Gère et coordonne une maison de retraite ou un EHPAD. Veille à la qualité de l’accompagnement et au bien-être des résidents.",
  salary: 3200,
  url_job: "https://www.hellowork.com/fr-fr/metiers/directeur-dehpad.html"
)

JobCategory.create!(
  job_id: 72,
  category_id: 4
)

#! Formations pour le métier de Responsable de structure d’accueil pour personnes âgées

formations << Formation.create!(
  name: "Master Management des Établissements de Santé et Médico-Sociaux",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 72,
  formation_id: 185
)

formations << Formation.create!(
  name: "Licence Sciences Sanitaires et Sociales option Gérontologie",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 72,
  formation_id: 186
)

formations << Formation.create!(
  name: "Diplôme de Cadre de Santé",
  level: "Bac +4",
  duration: 4,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/diplome-cadre-sante"
)
JobFormation.create!(
  job_id: 72,
  formation_id: 187
)

jobs << Job.create!(
  name: "Accompagnant éducatif et social (AES)",
  description: "Aide les personnes en situation de handicap ou âgées à accomplir les gestes du quotidien. Favorise leur autonomie et leur intégration.",
  salary: 2000,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/accompagnant-educatif-et-social-accompagnante-educative-et-sociale"
)

JobCategory.create!(
  job_id: 73,
  category_id: 4
)

#! Formations pour le métier d'Accompagnant éducatif et social (AES)

JobFormation.create!(
  job_id: 73,
  formation_id: 159
)

JobFormation.create!(
  job_id: 73,
  formation_id: 177
)

JobFormation.create!(
  job_id: 73,
  formation_id: 134
)

jobs << Job.create!(
  name: "Spécialiste de la protection de l’enfance",
  description: "Suit les enfants en danger et met en place des solutions de placement ou d’accompagnement familial. Travaille avec les services sociaux.",
  salary: 2600,
  url_job: "https://www.actionenfance.org/travailler-action-enfance/#:~:text=Il%20est%20garant%20de%20la,%2C%20juges%20des%20enfants…)%20et"
)
JobCategory.create!(
  job_id: 74,
  category_id: 4
)

#! Formations pour le métier de Spécialiste de la protection de l’enfance

JobFormation.create!(
  job_id: 74,
  formation_id: 136
)

JobFormation.create!(
  job_id: 74,
  formation_id: 137
)

formations << Formation.create!(
  name: "Master Protection de l’Enfance et Politiques Sociales",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 74,
  formation_id: 188
)

jobs << Job.create!(
  name: "Référent handicap en entreprise",
  description: "Accompagne les salariés en situation de handicap et met en place des aménagements adaptés. Sensibilise les employeurs à l’inclusion.",
  salary: 2700,
  url_job: "https://www.agefiph.fr/articles/propos-de-lagefiph/referent-handicap-en-entreprise-les-missions-cles"
)

JobCategory.create!(
  job_id: 75,
  category_id: 4
)

#! Formations pour le métier de Référent handicap en entreprise

formations << Formation.create!(
  name: "DU Référent Handicap en Entreprise",
  level: "Certification",
  duration: 1,
  price: 0,
  url_formation: "https://www.hellowork.com/fr-fr/metiers/du-referent-handicap.html"
)
JobFormation.create!(
  job_id: 75,
  formation_id: 189
)

formations << Formation.create!(
  name: "Licence Sciences Humaines et Sociales option Travail et Handicap",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 75,
  formation_id: 190
)

formations << Formation.create!(
  name: "Master Management et Inclusion du Handicap",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 75,
  formation_id: 191
)

jobs << Job.create!(
  name: "Formateur pour adultes en insertion",
  description: "Accompagne les adultes en reconversion ou en recherche d’emploi. Dispense des formations pour favoriser leur employabilité.",
  salary: 2800,
  url_job: "https://www.francecompetences.fr/recherche/rncp/36014/"
)

JobCategory.create!(
  job_id: 76,
  category_id: 4
)

#! Formations pour le métier de Formateur pour adultes en insertion

formations << Formation.create!(
  name: "Titre Professionnel Formateur Professionnel d'Adultes",
  level: "Certification",
  duration: 1,
  price: 0,
  url_formation: "https://www.hellowork.com/fr-fr/metiers/titre-pro-formateur-adultes.html"
)
JobFormation.create!(
  job_id: 76,
  formation_id: 192
)

JobFormation.create!(
  job_id: 76,
  formation_id: 140
)

formations << Formation.create!(
  name: "Master Ingénierie de la Formation et de l’Insertion Professionnelle",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 76,
  formation_id: 193
)

jobs << Job.create!(
  name: "Intervenant en aide humanitaire",
  description: "Travaille sur le terrain pour aider les populations en détresse. Apporte un soutien médical, éducatif ou alimentaire.",
  salary: 2500,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/chef-cheffe-de-mission-humanitaire#:~:text=de%20mission%20humanitaire-,Chef%20%2F%20Cheffe%20de%20mission%20humanitaire,tout%20en%20dirigeant%20une%20équipe."
)

JobCategory.create!(
  job_id: 77,
  category_id: 4
)

#! Formations pour le métier d'Intervenant en aide humanitaire

formations << Formation.create!(
  name: "DU Solidarité Internationale et Action Humanitaire",
  level: "Certification",
  duration: 1,
  price: 0,
  url_formation: "https://www.hellowork.com/fr-fr/metiers/du-aide-humanitaire.html"
)
JobFormation.create!(
  job_id: 77,
  formation_id: 194
)

formations << Formation.create!(
  name: "Licence Relations Internationales et Humanitaires",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 77,
  formation_id: 195
)

formations << Formation.create!(
  name: "Master Coopération Internationale et Action Humanitaire",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 77,
  formation_id: 196
)

jobs << Job.create!(
  name: "Ingénieur en intelligence artificielle",
  description: "Conçoit et développe des algorithmes permettant aux machines d’apprendre et de s’adapter. Applique l’IA à divers secteurs comme la santé ou la finance.",
  salary: 5500,
  url_job: "https://www.cidj.com/s-orienter/metiers/ingenieur-en-intelligence-artificielle-ia"
)

JobCategory.create!(
  job_id: 78,
  category_id: 3
)

#! Formations pour le métier d'Ingénieur en intelligence artificielle

formations << Formation.create!(
  name: "Master Intelligence Artificielle",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 78,
  formation_id: 197
)

formations << Formation.create!(
  name: "Diplôme d'Ingénieur en Informatique option Intelligence Artificielle",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/ingenieur-intelligence-artificielle"
)
JobFormation.create!(
  job_id: 78,
  formation_id: 198
)

formations << Formation.create!(
  name: "Licence Informatique et Data Science",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 78,
  formation_id: 199
)

jobs << Job.create!(
  name: "Architecte logiciel",
  description: "Conçoit l’architecture des logiciels et systèmes informatiques. Veille à la performance, la sécurité et l'évolutivité des applications.",
  salary: 5000,
  url_job: "https://www.hellowork.com/fr-fr/metiers/architecte-logiciel.html"
)

JobCategory.create!(
  job_id: 79,
  category_id: 3
)

#! Formations pour le métier d'Architecte logiciel

formations << Formation.create!(
  name: "Master Architecte Logiciel et Systèmes",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 79,
  formation_id: 200
)

formations << Formation.create!(
  name: "Diplôme d'Ingénieur en Informatique",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/ingenieur-informatique"
)
JobFormation.create!(
  job_id: 79,
  formation_id: 201
)

formations << Formation.create!(
  name: "Licence Informatique",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 79,
  formation_id: 202
)

jobs << Job.create!(
  name: "Data scientist",
  description: "Analyse et exploite des données massives pour dégager des tendances et modèles. Utilise des outils statistiques et d’intelligence artificielle.",
  salary: 4500,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/data-scientist"
)

JobCategory.create!(
  job_id: 80,
  category_id: 3
)

#! Formations pour le métier de Data Scientist

formations << Formation.create!(
  name: "Master Data Science et Intelligence Artificielle",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 80,
  formation_id: 203
)

formations << Formation.create!(
  name: "Diplôme d'Ingénieur en Big Data et Intelligence Artificielle",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/ingenieur-big-data"
)
JobFormation.create!(
  job_id: 80,
  formation_id: 204
)

formations << Formation.create!(
  name: "Licence Mathématiques et Informatique appliquées aux Sciences Humaines et Sociales",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 80,
  formation_id: 205
)

jobs << Job.create!(
  name: "Ingénieur en cybersécurité",
  description: "Protège les systèmes informatiques contre les cyberattaques et intrusions. Met en place des protocoles de sécurité avancés.",
  salary: 4800,
  url_job: "https://www.letudiant.fr/metiers/secteur/cybersecurite/ingenieur-en-cybersecurite.html"
)

JobCategory.create!(
  job_id: 81,
  category_id: 3
)

#! Formations pour le métier d'Ingénieur en cybersécurité

formations << Formation.create!(
  name: "Master Cybersécurité",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 81,
  formation_id: 206
)

formations << Formation.create!(
  name: "Diplôme d'Ingénieur en Sécurité Informatique et Réseaux",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/ingenieur-cybersecurite"
)
JobFormation.create!(
  job_id: 81,
  formation_id: 207
)

JobFormation.create!(
  job_id: 81,
  formation_id: 202
)

jobs << Job.create!(
  name: "Actuaire",
  description: "Évalue les risques financiers pour les compagnies d’assurance et les banques. Utilise des modèles mathématiques et statistiques avancés.",
  salary: 6000,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/actuaire"
)

JobCategory.create!(
  job_id: 82,
  category_id: 3
)

#! Formations pour le métier d'Actuaire

formations << Formation.create!(
  name: "Master Actuariat",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 82,
  formation_id: 208
)

formations << Formation.create!(
  name: "Diplôme de l’Institut des Actuaires",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.institutdesactuaires.com"
)
JobFormation.create!(
  job_id: 82,
  formation_id: 209
)

formations << Formation.create!(
  name: "Licence Mathématiques et Informatique appliquées à l’Assurance et à la Finance",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 82,
  formation_id: 210
)

jobs << Job.create!(
  name: "Statisticien",
  description: "Analyse des données chiffrées pour en tirer des prévisions et tendances. Travaille dans divers secteurs comme la finance, la santé ou l’industrie.",
  salary: 3800,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/statisticien-statisticienne"
)

JobCategory.create!(
  job_id: 83,
  category_id: 3
)

#! Formations pour le métier de Statisticien

formations << Formation.create!(
  name: "Master Statistique et Data Science",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 83,
  formation_id: 211
)

formations << Formation.create!(
  name: "Diplôme d'Ingénieur en Statistiques et Informatique Décisionnelle",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/ingenieur-statistiques"
)
JobFormation.create!(
  job_id: 83,
  formation_id: 212
)

formations << Formation.create!(
  name: "Licence Mathématiques appliquées aux Sciences Sociales",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 83,
  formation_id: 213
)

jobs << Job.create!(
  name: "Ingénieur en robotique",
  description: "Conçoit et programme des robots pour l’industrie et les nouvelles technologies. Améliore l’automatisation et l'efficacité des machines.",
  salary: 4800,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/roboticien-roboticienne"
)

JobCategory.create!(
  job_id: 84,
  category_id: 3
)

#! Formations pour le métier d'Ingénieur en robotique

formations << Formation.create!(
  name: "Master Robotique et Intelligence Artificielle",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 84,
  formation_id: 214
)

formations << Formation.create!(
  name: "Diplôme d'Ingénieur en Robotique",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/ingenieur-robotique"
)
JobFormation.create!(
  job_id: 84,
  formation_id: 215
)

formations << Formation.create!(
  name: "Licence Sciences pour l'Ingénieur option Automatique et Robotique",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 84,
  formation_id: 216
)

jobs << Job.create!(
  name: "Analyste financier",
  description: "Évalue la santé financière des entreprises pour conseiller sur les investissements. Analyse les tendances économiques et les risques du marché.",
  salary: 4200,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/analyste-financier-financiere"
)

JobCategory.create!(
  job_id: 85,
  category_id: 3
)

#! Formations pour le métier d'Analyste financier

formations << Formation.create!(
  name: "Master Finance option Analyse Financière",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 85,
  formation_id: 217
)

formations << Formation.create!(
  name: "Diplôme d'Analyste Financier Certifié (CFA)",
  level: "Certification",
  duration: 3,
  price: 0,
  url_formation: "https://www.cfainstitute.org"
)
JobFormation.create!(
  job_id: 85,
  formation_id: 218
)

formations << Formation.create!(
  name: "Licence Économie et Gestion",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 85,
  formation_id: 219
)

jobs << Job.create!(
  name: "Développeur web",
  description: "Crée des sites et applications web en utilisant des langages de programmation. Travaille en collaboration avec les designers et chefs de projet.",
  salary: 3500,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/developpeur-developpeuse-informatique"
)

JobCategory.create!(
  job_id: 86,
  category_id: 3
)

JobCategory.create!(
  job_id: 86,
  category_id: 1
)

#! Formations pour le métier de Développeur web

formations << Formation.create!(
  name: "Titre Professionnel Développeur Web et Web Mobile",
  level: "Certification",
  duration: 1,
  price: 0,
  url_formation: "https://www.hellowork.com/fr-fr/metiers/titre-pro-developpeur-web.html"
)
JobFormation.create!(
  job_id: 86,
  formation_id: 220
)

JobFormation.create!(
  job_id: 86,
  formation_id: 202
)

formations << Formation.create!(
  name: "Master Développement Logiciel et Web",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 86,
  formation_id: 221
)

jobs << Job.create!(
  name: "Ingénieur en génie civil",
  description: "Conçoit et supervise la construction de bâtiments et infrastructures. Garantit la sécurité et la durabilité des ouvrages.",
  salary: 4500,
  url_job: "https://www.hellowork.com/fr-fr/metiers/ingenieur-genie-civil.html"
)

JobCategory.create!(
  job_id: 87,
  category_id: 3
)

#! Formations pour le métier d'Ingénieur en génie civil
formations << Formation.create!(
  name: "Diplôme d'Ingénieur en Génie Civil",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/ingenieur-genie-civil"
)
JobFormation.create!(
  job_id: 87,
  formation_id: 222
)

formations << Formation.create!(
  name: "Master Génie Civil et Construction",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 87,
  formation_id: 223
)

formations << Formation.create!(
  name: "Licence Sciences pour l'Ingénieur option Bâtiment et Travaux Publics",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 87,
  formation_id: 224
)

jobs << Job.create!(
  name: "Consultant en gestion des risques",
  description: "Identifie et analyse les risques financiers, industriels ou environnementaux. Propose des solutions pour minimiser leur impact.",
  salary: 4700,
  url_job: "https://www.opiiec.fr/metiers/83119-consultant-en-risques-professionnelsdhttps://www.bluesoft-group.com/it-risk-manager/"
)

JobCategory.create!(
  job_id: 88,
  category_id: 3
)

#! Formations pour le métier de Consultant en gestion des risques

formations << Formation.create!(
  name: "Master Gestion des Risques et Assurance",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 88,
  formation_id: 225
)

formations << Formation.create!(
  name: "Diplôme d'Ingénieur en Gestion des Risques Industriels et Environnementaux",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/ingenieur-risques-industriels"
)
JobFormation.create!(
  job_id: 88,
  formation_id: 226
)

JobFormation.create!(
  job_id: 88,
  formation_id: 219
)

jobs << Job.create!(
  name: "Ingénieur en aéronautique",
  description: "Développe et optimise des avions et hélicoptères. Travaille sur l’aérodynamisme, la structure et la motorisation.",
  salary: 5000,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/ingenieur-ingenieure-en-aeronautique"
)

JobCategory.create!(
  job_id: 89,
  category_id: 3
)

# Formations pour le métier d'Ingénieur en aéronautique

formations << Formation.create!(
  name: "Diplôme d'Ingénieur en Aéronautique",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/ingenieur-aeronautique"
)
JobFormation.create!(
  job_id: 89,
  formation_id: 227
)

formations << Formation.create!(
  name: "Master Aéronautique et Espace",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 89,
  formation_id: 228
)

formations << Formation.create!(
  name: "Licence Sciences pour l'Ingénieur option Aéronautique",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 89,
  formation_id: 229
)

jobs << Job.create!(
  name: "Cryptologue",
  description: "Analyse et crée des systèmes de chiffrement pour sécuriser les données sensibles. Travaille pour les gouvernements, banques et entreprises IT.",
  salary: 5200,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/cryptologue"
)

JobCategory.create!(
  job_id: 90,
  category_id: 3
)

#! Formations pour le métier de Cryptologue

formations << Formation.create!(
  name: "Master Cryptographie et Sécurité Informatique",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 90,
  formation_id: 230
)

formations << Formation.create!(
  name: "Diplôme d'Ingénieur en Sécurité Informatique et Cryptographie",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/ingenieur-cryptographie"
)
JobFormation.create!(
  job_id: 90,
  formation_id: 231
)

JobFormation.create!(
  job_id: 90,
  formation_id: 202
)

jobs << Job.create!(
  name: "Ingénieur en énergies renouvelables",
  description: "Développe des solutions pour produire de l’énergie propre et durable. Travaille sur l’éolien, le solaire et la biomasse.",
  salary: 4600,
  url_job: "https://www.hellowork.com/fr-fr/metiers/ingenieur-energies-renouvelables.html"
)

JobCategory.create!(
  job_id: 91,
  category_id: 3
)

#! Formations pour le métier d'Ingénieur en énergies renouvelables

formations << Formation.create!(
  name: "Master Énergies Renouvelables et Environnement",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 91,
  formation_id: 232
)

formations << Formation.create!(
  name: "Diplôme d'Ingénieur en Génie Énergétique et Renouvelable",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/ingenieur-energies-renouvelables"
)
JobFormation.create!(
  job_id: 91,
  formation_id: 233
)

formations << Formation.create!(
  name: "Licence Sciences et Technologies option Énergies Renouvelables",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 91,
  formation_id: 234
)

jobs << Job.create!(
  name: "Ingénieur biomédical",
  description: "Conçoit et améliore les équipements médicaux et solutions technologiques pour la santé. Travaille avec les médecins et chercheurs en biologie.",
  salary: 4400,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/ingenieur-biomedical-ingenieure-biomedicale"
)

JobCategory.create!(
  job_id: 92,
  category_id: 3
)

#! Formations pour le métier d'Ingénieur biomédical

formations << Formation.create!(
  name: "Master Génie Biomédical",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 92,
  formation_id: 235
)

formations << Formation.create!(
  name: "Diplôme d'Ingénieur en Biomédical",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/ingenieur-biomedical"
)
JobFormation.create!(
  job_id: 92,
  formation_id: 236
)

formations << Formation.create!(
  name: "Licence Sciences pour l'Ingénieur option Biomédical",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 92,
  formation_id: 237
)

jobs << Job.create!(
  name: "Ingénieur en automatisation",
  description: "Développe et optimise des systèmes automatisés pour l’industrie. Conçoit des robots et processus intelligents pour améliorer la productivité.",
  salary: 4700,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/ingenieur-ingenieure-en-automatismes#:~:text=Ingénieur%20%2F%20Ingénieure-,en%20automatismes,automatique%2C%20machine%20à%20commande%20numérique."
)

JobCategory.create!(
  job_id: 93,
  category_id: 3
)

#! Formations pour le métier d'Ingénieur en automatisation

formations << Formation.create!(
  name: "Master Automatique et Systèmes Intelligents",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 93,
  formation_id: 238
)

formations << Formation.create!(
  name: "Diplôme d'Ingénieur en Automatique et Robotique",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/ingenieur-automatisation"
)
JobFormation.create!(
  job_id: 93,
  formation_id: 239
)

formations << Formation.create!(
  name: "Licence Sciences pour l'Ingénieur option Automatique et Systèmes",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 93,
  formation_id: 240
)

jobs << Job.create!(
  name: "Ingénieur en télécommunications",
  description: "Développe et améliore les réseaux mobiles, internet et satellites. Optimise la transmission des données et la sécurité des communications.",
  salary: 4600,
  url_job: "https://www.hellowork.com/fr-fr/metiers/ingenieur-telecoms.html"
)

JobCategory.create!(
  job_id: 94,
  category_id: 3
)

#! Formations pour le métier d'Ingénieur en télécommunications

formations << Formation.create!(
  name: "Master Réseaux et Télécommunications",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 94,
  formation_id: 241
)

formations << Formation.create!(
  name: "Diplôme d'Ingénieur en Télécommunications",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/ingenieur-telecommunications"
)
JobFormation.create!(
  job_id: 94,
  formation_id: 242
)

JobFormation.create!(
  job_id: 94,
  formation_id: 202
)

jobs << Job.create!(
  name: "Administrateur système et réseau",
  description: "Gère et sécurise les infrastructures informatiques d’une entreprise. Supervise le bon fonctionnement des serveurs et des connexions réseau.",
  salary: 4000,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/administrateur-administratrice-de-reseaux"
)

JobCategory.create!(
  job_id: 95,
  category_id: 3
)

#! Formations pour le métier d'Administrateur système et réseau

formations << Formation.create!(
  name: "Titre Professionnel Administrateur Systèmes et Réseaux",
  level: "Certification",
  duration: 1,
  price: 0,
  url_formation: "https://www.hellowork.com/fr-fr/metiers/titre-pro-admin-systeme-reseau.html"
)
JobFormation.create!(
  job_id: 95,
  formation_id: 243
)

JobFormation.create!(
  job_id: 95,
  formation_id: 202
)

JobFormation.create!(
  job_id: 95,
  formation_id: 206
)

jobs << Job.create!(
  name: "Chargé d'intelligence économique",
  description: "Collecte et analyse des données pour aider les entreprises à prendre des décisions stratégiques. Évalue la concurrence et les risques économiques.",
  salary: 4500,
  url_job: "https://www.apec.fr/tous-nos-metiers/etudes-recherche-et-developpement/charge-dintelligence-economique.html#:~:text=Réaliser%20des%20études%20sur%20différentes,dans%20le%20cadre%20des%20études."
)

JobCategory.create!(
  job_id: 96,
  category_id: 3
)

#! Formations pour le métier de Chargé d'intelligence économique

formations << Formation.create!(
  name: "Master Intelligence Économique et Stratégique",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 96,
  formation_id: 244
)

formations << Formation.create!(
  name: "Diplôme d'Ingénieur en Gestion des Risques et Intelligence Économique",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/ingenieur-intelligence-economique"
)
JobFormation.create!(
  job_id: 96,
  formation_id: 245
)

JobFormation.create!(
  job_id: 96,
  formation_id: 219
)

jobs << Job.create!(
  name: "Expert en cybersécurité",
  description: "Détecte et corrige les failles de sécurité informatique. Met en place des protocoles de protection contre les cyberattaques.",
  salary: 5000,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/expert-experte-en-securite-informatique"
)

JobCategory.create!(
  job_id: 97,
  category_id: 3
)

#! Formations pour le métier d'Expert en cybersécurité

JobFormation.create!(
  job_id: 97,
  formation_id: 206
)

JobFormation.create!(
  job_id: 97,
  formation_id: 207
)

JobFormation.create!(
  job_id: 97,
  formation_id: 202
)

jobs << Job.create!(
  name: "Développeur en intelligence artificielle",
  description: "Crée des algorithmes d’apprentissage automatique pour divers secteurs. Optimise l’automatisation et la prise de décision intelligente.",
  salary: 5200,
  url_job: "https://www.francecompetences.fr/recherche/rncp/35770/#:~:text=Le%20rôle%20du%20développeur%20en,ou%20partie%20de%20ces%20technologies."
)

JobCategory.create!(
  job_id: 98,
  category_id: 3
)

#! Formations pour le métier de Développeur en intelligence artificielle
JobFormation.create!(
  job_id: 98,
  formation_id: 197
)

JobFormation.create!(
  job_id: 98,
  formation_id: 198
)

JobFormation.create!(
  job_id: 98,
  formation_id: 202
)

jobs << Job.create!(
  name: "Mathématicien",
  description: "Utilise des modèles mathématiques pour résoudre des problèmes complexes. Travaille en finance, en recherche ou en ingénierie.",
  salary: 4300,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/ingenieur-mathematicien-ingenieure-mathematicienne"
)

JobCategory.create!(
  job_id: 99,
  category_id: 3
)

#! Formations pour le métier de Mathématicien

formations << Formation.create!(
  name: "Master Mathématiques Fondamentales et Appliquées",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 99,
  formation_id: 246
)

formations << Formation.create!(
  name: "Diplôme d'Ingénieur en Mathématiques et Modélisation",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/ingenieur-mathematiques"
)
JobFormation.create!(
  job_id: 99,
  formation_id: 247
)


formations << Formation.create!(
  name: "Licence Mathématiques et Applications",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 99,
  formation_id: 248
)

jobs << Job.create!(
  name: "Ingénieur en conception mécanique",
  description: "Conçoit et développe des pièces mécaniques pour divers secteurs industriels. Utilise des logiciels de CAO pour optimiser les designs.",
  salary: 4600,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/ingenieur-concepteur-ingenieure-conceptrice-en-mecanique"
)

JobCategory.create!(
  job_id: 100,
  category_id: 3
)

#! Formations pour le métier d'Ingénieur en conception mécanique

formations << Formation.create!(
  name: "Master Ingénierie Mécanique et Conception",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 100,
  formation_id: 249
)

formations << Formation.create!(
  name: "Diplôme d'Ingénieur en Conception Mécanique",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/ingenieur-conception-mecanique"
)
JobFormation.create!(
  job_id: 100,
  formation_id: 250
)

formations << Formation.create!(
  name: "Licence Sciences pour l'Ingénieur option Mécanique",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 100,
  formation_id: 251
)

jobs << Job.create!(
  name: "Bio-informaticien",
  description: "Analyse des données biologiques avec des outils informatiques. Travaille sur le séquençage ADN, la génétique et la recherche médicale.",
  salary: 4800,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/bio-informaticien-bio-informaticienne"
)

JobCategory.create!(
  job_id: 101,
  category_id: 3
)

#! Formations pour le métier de Bio-informaticien

formations << Formation.create!(
  name: "Master Bio-informatique et Modélisation",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 101,
  formation_id: 252
)

formations << Formation.create!(
  name: "Diplôme d'Ingénieur en Bio-informatique",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/ingenieur-bioinformatique"
)
JobFormation.create!(
  job_id: 101,
  formation_id: 253
)

JobFormation.create!(
  job_id: 101,
  formation_id: 202
)

jobs << Job.create!(
  name: "Cryptologue",
  description: "Conçoit des systèmes de cryptage pour sécuriser les communications et données. Travaille pour les gouvernements et les entreprises.",
  salary: 5200,
  url_job: "https://www.cidj.com/s-orienter/metiers/cryptologue#:~:text=Le%20cryptologue%20élabore%20des%20méthodes,authenticité%20et%20l'intégrité%20des"
)

JobCategory.create!(
  job_id: 102,
  category_id: 3
)

#! Formations pour le métier de Cryptologue

JobFormation.create!(
  job_id: 102,
  formation_id: 230
)

JobFormation.create!(
  job_id: 102,
  formation_id: 231
)

JobFormation.create!(
  job_id: 102,
  formation_id: 202
)

jobs << Job.create!(
  name: "Ingénieur en systèmes embarqués",
  description: "Développe des logiciels intégrés dans les objets connectés et les véhicules. Optimise les performances et la consommation énergétique.",
  salary: 4700,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/ingenieur-ingenieure-systemes-embarques"
)

JobCategory.create!(
  job_id: 103,
  category_id: 3
)

#! Formations pour le métier d'Ingénieur en systèmes embarqués

formations << Formation.create!(
  name: "Master Systèmes Embarqués et Objets Connectés",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 103,
  formation_id: 254
)

formations << Formation.create!(
  name: "Diplôme d'Ingénieur en Systèmes Embarqués",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/ingenieur-systemes-embarques"
)
JobFormation.create!(
  job_id: 103,
  formation_id: 255
)

formations << Formation.create!(
  name: "Licence Électronique et Informatique Industrielle",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 103,
  formation_id: 256
)

jobs << Job.create!(
  name: "Ingénieur en photonique",
  description: "Travaille sur la conception de lasers, capteurs optiques et systèmes de communication. Applique la lumière à l’industrie et à la médecine.",
  salary: 5000,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/ingenieur-ingenieure-en-photonique"
)

JobCategory.create!(
  job_id: 104,
  category_id: 3
)

#! Formations pour le métier d'Ingénieur en photonique

formations << Formation.create!(
  name: "Master Optique, Photonique et Télécommunications",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 104,
  formation_id: 257
)

formations << Formation.create!(
  name: "Diplôme d'Ingénieur en Photonique et Optique",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/ingenieur-photonique"
)
JobFormation.create!(
  job_id: 104,
  formation_id: 258
)

formations << Formation.create!(
  name: "Licence Physique option Optique et Photonique",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 104,
  formation_id: 259
)

jobs << Job.create!(
  name: "Analyste en big data",
  description: "Interprète de grandes quantités de données pour optimiser les stratégies d’entreprise. Utilise des outils d’analyse et de machine learning.",
  salary: 4900,
  url_job: "https://www.onisep.fr/ressources/univers-metier/metiers/data-analyst"
)

JobCategory.create!(
  job_id: 105,
  category_id: 3
)

#! Formations pour le métier d'Analyste en big data

formations << Formation.create!(
  name: "Master Big Data et Intelligence Artificielle",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 105,
  formation_id: 260
)

formations << Formation.create!(
  name: "Diplôme d'Ingénieur en Data Science et Big Data",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/ingenieur-big-data"
)
JobFormation.create!(
  job_id: 105,
  formation_id: 261
)

JobFormation.create!(
  job_id: 105,
  formation_id: 202
)

jobs << Job.create!(
  name: "Ingénieur en énergie nucléaire",
  description: "Conçoit et gère des centrales nucléaires pour produire de l’énergie. Veille à la sûreté et à l’optimisation des réacteurs.",
  salary: 5500,
  url_job: "https://www.hellowork.com/fr-fr/metiers/ingenieur-nucleaire.html"
)

JobCategory.create!(
  job_id: 106,
  category_id: 3
)

#! Formations pour le métier d'Ingénieur en énergie nucléaire

formations << Formation.create!(
  name: "Master Énergie Nucléaire et Génie Atomique",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 106,
  formation_id: 262
)

formations << Formation.create!(
  name: "Diplôme d'Ingénieur en Génie Nucléaire",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/ingenieur-genie-nucleaire"
)
JobFormation.create!(
  job_id: 106,
  formation_id: 263
)

formations << Formation.create!(
  name: "Licence Physique et Énergie option Nucléaire",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 106,
  formation_id: 264
)

jobs << Job.create!(
  name: "Ingénieurs véhicules intelligents",
  description: "Développe des systèmes de transport autonomes et connectés. Travaille sur la fluidité et la sécurité du trafic.",
  salary: 4800,
  url_job: "https://www.eseo.fr/formations-ingenieurs/options/transport-vehicules-intelligents/"
)

JobCategory.create!(
  job_id: 107,
  category_id: 3
)

#! Formations pour le métier d'Ingénieur véhicules intelligents

formations << Formation.create!(
  name: "Master Mobilité Intelligente et Véhicules Connectés",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 107,
  formation_id: 265
)

formations << Formation.create!(
  name: "Diplôme d'Ingénieur en Véhicules Autonomes et Électriques",
  level: "Bac +5",
  duration: 5,
  price: 0,
  url_formation: "https://www.onisep.fr/metiers/ingenieur-vehicules-intelligents"
)
JobFormation.create!(
  job_id: 107,
  formation_id: 266
)

formations << Formation.create!(
  name: "Licence Sciences pour l’Ingénieur option Mécatronique et Automobile",
  level: "Bac +3",
  duration: 3,
  price: 0,
  url_formation: "https://www.trouvermonmaster.gouv.fr"
)
JobFormation.create!(
  job_id: 107,
  formation_id: 267
)
#! FIN Seed Jobs -------------------#########

tests << Test.create!(
  name: "Cap Métier : trouve ta voie idéale",
  category: "Tests de personnalité",
  duration: 20,
  nb_questions: 40,
  img_name: "gradient-3.jpg",
  img_icon: "img-test-1.png",
  description: "Fais le point sur tes motivations profondes et découvre le métier fait pour toi. 40 questions pour t'aider à définir un avenir professionnel qui te ressemble !"
)

tests << Test.create!(
  name: "Profil Pro : révèle ton potentiel",
  category: "Tests de personnalité",
  duration: 10,
  nb_questions: 25,
  img_name: "gradient-3.jpg",
  img_icon: "img-test-2.png",
  description: "Analyse tes centres d’intérêt en 25 questions et trouve les secteurs qui te correspondent le mieux. Une étape clé pour affiner ton projet pro !"
)

tests << Test.create!(
  name: "Bilan Express : découvre ta voie",
  category: "Tests de personnalité",
  duration: 9,
  nb_questions: 0,
  img_name: "gradient-3.jpg",
  img_icon: "img-test-3.png",
  description: "Un test rapide pour faire le point et identifier la voie pro qui te correspond le mieux en seulement 15 questions."
)

tests << Test.create!(
  name: "Vos talents en action",
  category: "Tests de compétence",
  duration: 10,
  nb_questions: 25,
  img_name: "gradient-2.jpg",
  img_icon: "img-test-1.png",
  description: "Fais le point sur tes compétences en 25 questions ! Identifie tes points forts et découvre les métiers où tes talents feront la différence."
)

tests << Test.create!(
  name: "Cartographie de vos talents",
  category: "Tests de compétence",
  duration: 15,
  nb_questions: 0,
  img_name: "gradient-2.jpg",
  img_icon: "img-test-4.png",
  description: "Analyse tes aptitudes et valorise tes talents ! Un test complet pour mieux te connaître et orienter ta carrière selon tes compétences."
)

tests << Test.create!(
  name: "Boussole des métiers",
  category: "Tests d'intérêts professionnels",
  duration: 25,
  nb_questions: 30,
  img_name: "gradient-1.jpg",
  img_icon: "img-test-3.png",
  description: "Trouve la direction professionnelle qui te ressemble ! Ce test rapide t'aide à identifier les secteurs alignés avec tes intérêts."
)

tests << Test.create!(
  name: "Passions & Métiers",
  category: "Tests d'intérêts professionnels",
  duration: 15,
  nb_questions: 0,
  img_name: "gradient-1.jpg",
  img_icon: "img-test-4.png",
  description: "Transforme tes passions en métier ! En quelques questions, découvre les domaines où tu pourras t’épanouir professionnellement."
)

QualifyValueService.qualify_jobs
puts "QualifyValueService.qualify_job done!"
puts "ID that doen't work"
puts Job.all.select{ |j| j.category_values.count < 4 }.map(&:id)


QualifyValueService.qualify_choices
puts "QualifyValueService.qualify_choice done!"
puts "ID that doen't work"
puts Choice.all.select{ |c| c.category_values.count < 4 }.map(&:id)

# Seed User Answers
# users.each do |user|
#   rand(5..10).times do
#     UserAnswer.create!(
#       user_id: user.id,
#       choice_id: Choice.all.sample.id
#     )
#   end
# end

puts "Seeding completed!"
