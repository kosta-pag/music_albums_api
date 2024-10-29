# Aufgabe 2

Die API hat folgende probleme:
* Response ist Plaintext und kein JSON
* Im Content-Type Header steht text/plain statt application/json

## Lösung:
* Reverse-Proxy zwischenschalten z.B. Nginx, da man den Code nicht bearbeiten soll. Der Reverse-Proxy setzt den Content-Type im Header richtig und passt die Response an, sodass es ein JSON ist
