##User

| Nom | Type | Taille | Description |
| - | - | - | - | - |
| num_user | Entier | - | Numéro permettant d'identifier un utilisateur |
| name | Chaîne de caractères | 100 | Nom complet de l'utilisateur |
password | Chaîne de caractères | 255 | Mot de passe de l'utilisateur |
created_at | Date | - | Date de création |
updated_at | Date | - | Date de mise à jour |

##Product

| Nom | Type | Taille | Description |
| - | - | - | - | - |
| num_product | Entier | - | Numéro permettant d'identifier un profuit |
| name | Chaîne de caractère | 100 | Nom du produit |
| quantity | Entier | 100 | Stock actuel pour le produit |
| status | Entier | 100 | Statut du produit (0 = archivée/hors-ligne, 1= en ligne).Un produit ne doit pas pouvoir être supprimé dès lors qu'il a fait partie d'une commande. Si on souhaite le retirer de la vente, on l'archivera.|
| created_at | Date | - | Date de création |
| updated_at | Date | - | Date de mise à jour |
| num_category | Entier | - | id de la catégorie à laquelle appartient le produit | 

##Category

| Nom | Type | Taille | Description |
| - | - | - | - | - |
| num_category | Entier | - | Numéro permettant d'identifier une catégorie |
| name | - | Chaîne de caractère | 100 | Nom de la catégorie |
| created_at | Date | - | Date de la création de la catégorie | 
| updated_at | Date | - | Date de mise à jour de la catégorie | 

##Tag

| Nom | Type | Taille | Description |
| - | - | - | - | - |
| num_tag | Entier | - | Numéro permettant d'identifier l'étiquette | 
| name | Chaîne de caractère | 100 | Nom de l'étiquette |
| created_at | Date | - | Date de création de l'étiquette |
| updated_at | Date | - | Date de mise à jour de l'étiquette |

##Order

| Nom | Type | Taille | Description |
| - | - | - | - | - |
| num_order | Entier | - | Numéro permettant d'identifier la commande | 
| num_invoice | Chaîne de caractère | 100 | Numéro de facturation |
| status | Chaîne de caractère | - | Etat de la commande ('En panier', 'En cours de traitement' (une fois validé par l'utilisateur), 'Validé', 'En cours de livraison' et 'Livré') |
| created_at | Date | - | Date de création de la commande |
| updated_at | Date | - | Date de mise à jour de la commande |
| num_user | Entier | - | id de l'utilisateur qui a passé la commande |

##tagProduct

| Nom | Type | Taille | Description |
| - | - | - | - | - |
| num_tagProduct | Entier | - | Numéro permettant d'identifier le tag sur le poduit |
| num_tag | Entier | - | id du tag qui est relié au produit |
| num_product | Entier | - | id du produit qui est relié au tag |

##orderDetails

| Nom | Type | Taille | Description |
| - | - | - | - | - |
| num_orderDetails | Entier | - | Numéro permettant d'identifier le détail de la commande |
| num_product | Entier | - | id du produit par rapport à la commande |
| num_order | Entier | - | id de la commande par rapport aux produits |
| quantity | Entier | Nombre de produit par article dans la commande |