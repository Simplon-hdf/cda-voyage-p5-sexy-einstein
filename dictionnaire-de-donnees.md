# Dictionnaire de Données

## Customer

| Attribut | Type | Description |
|----------|------|-------------|
| customer_id | Entier | Identifiant unique du client |
| first_name | Texte | Prénom du client |
| last_name | Texte | Nom du client |
| email | Texte | Adresse e-mail du client |
| password | Texte | Mot de passe pour se connecter |
| phone_number | Texte | Numéro de téléphone du client |


## Booking

| Attribut | Type | Description |
|----------|------|-------------|
| booking_id | Entier | Identifiant unique de la réservation |
| reference | Texte | Référence unique de la réservation |
| customer_id | Entier | Identifiant du client associé |
| booking_date | Date | Date de la réservation |
| price | Entier | Prix total de la réservation |

## PASSENGER

| Attribut | Type | Description |
|----------|------|-------------|
| passenger_id | Entier | Identifiant unique du passager |
| first_name | Texte | Prénom du passager |
| last_name | Texte | Nom du passager |
| date_of_birth | Date| Date de naissance du passager |
| passport_country | Texte | Numéro de passeport |
| passport_number | Texte | Numéro de passeport |

## FLIGHT

| Attribut | Type | Description |
|----------|------|-------------|
| flight_id | Entier | Identifiant unique du vol |
| date_of_departure | DateTime | Date et heure de départ |
| date_of_arrival | Date | Date et heure d'arrivée |
| plane_id | Entier | Identifiant de l'avion du vol |
| departure_airport_id | Entier | Identifiant de l'aéroport de départ |
| arrival_airport_id | Entier | Identifiant de l'aéroport d'arrivée |

## AIRPORT

| Attribut | Type | Description |
|----------|------|-------------|
| airport_id | Entier | Identifiant unique de l'aéroport |
| name | Texte | Nom de l'aéroport |
| adress | Texte | Adresse de l'aéroport |
| city_id | Entier | Identifiant de la ville associée |

## CITY

| Attribut | Type | Description |
|----------|------|-------------|
| city_id | Entier | Identifiant unique de la ville |
| name | Texte | Nom de la ville |
| zip_code | Texte | Code postal de la ville |
| country_id | Entier | Identifiant du pays associé |

## COUNTRY

| Attribut | Type | Description |
|----------|------|-------------|
| country_id | Entier | Identifiant unique du pays |
| name | Texte | Nom du pays |

## PLANE

| Attribut | Type | Description |
|----------|------|-------------|
| plane_id | Entier | Identifiant unique de l'avion |
| model | Texte | Modèle de l'avion |
| capacity | Entier | Capacité totale de l'avion |
| airline_id | Entier | Identifiant de la compagnie aérienne associée |

## ARLINE

| Attribut | Type | Description |
|----------|------|-------------|
| airline_id | Entier | Identifiant unique de la compagnie aérienne |
| name | Texte | Nom de la compagnie aérienne |