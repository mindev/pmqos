pmqos
=====
il core sta in assets
dove con dell'xml istanzia dei profili prefabbricati
forse questa sarebbe la strada + facile
poi in smali
ci sta pmqosActiviti.smali
che fa un alista dei processi che stanno nella dalvick
poi in PmqosService giustamente ci sta il servizio
che scansiona la lista ed in funzione di un confronto con il tag che è un hash del nome dell'applicazione ben nascosto nell'hash table
imposta il profilo
gli altri smali sonon di supporto
poi
in /res /values
ci sta ids.xml
che fa intendere che questa un avolta era un'applicazione gestibile dall'utente+
