import logging

logging.basicConfig(level=logging.INFO)
logging.debug('This will get logged')

logging.info('this will not get logged o si?')

lado= 4;
edad=input('indique su edad: ');
sueldo=input('indique cual es su sueldo...')

if lado==4:

    print(' Su edad es ' ,edad , 'usted es ANCIANA. Considere afiliarse al PAMI')
    print('ALERT: usted es POBRE, usted es POBRE, usted es POBRE')
    print(lado)
    print('holencio')
    logging.info('estoy atroden')
    logging.info('sigo atroden')
else:
    if 4>=1 and sueldo<11 and lado==4 :
        print('estoy en el else')
    else: 
            print('no entró por ninguna condición')

x=1
suma=0
while x<=10:
    valor=int(input("Ingrese un valor:"))
    suma=suma+valor
    x=x+1
promedio=suma/10
print("La suma de los 10 valores es")
print(suma)
print("El promedio es")
print(promedio)    

 # esta linea es un comentario

""" este es un comentario de varias 
 lineas"""
for x in range(20,31):
    print(x)

for x in range(1,100,2):
    print(x)