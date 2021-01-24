#!/usr/bin/env python3
import sys
import random


positions_index = []
positions_fs = []
bloqueados_list = []
fs_list = ["apfs","btrfs","exfat","ext3","ext4", "fat16", "fat32", "glusterfs", "ntfs","refs", "xfs"]


def test_positions(i):
    if i in positions_index:
        return False
    else:
        positions_fs.append(i)
        positions_index.append(i)
        return True

def tests_bloqueados(i):
    if i in bloqueados_list:
        return False
    else:
        bloqueados_list.append(i)
        return True

def main():

    while (len(positions_fs) <9):
        test_positions(random.randint(0,len(fs_list)-1))
    
    lista_aux = []
    for i in positions_index:
        #print (fs_list[i])
        lista_aux.append(fs_list[i])

    pos = 0
    fs_indice = 0
    fila = 0
    tamanyo_fila = 5
    tamanyo_tablero = 14

    while (len(bloqueados_list) <2):
        tests_bloqueados(random.randint(0,4))

    while (len(bloqueados_list) <4):
        tests_bloqueados(random.randint(5,9))

    while (len(bloqueados_list) <6):
        tests_bloqueados(random.randint(10,14))
    
    #print (bloqueados_list)
    filas_aux = 1

    while (pos <= tamanyo_tablero):

        #if (pos%5 ==0 ):
        #    print("| "+str(filas_aux), end='')

        if pos in bloqueados_list:
            print("|![HDD](imgs/hddicon2.png) ", end='')
        else:
            print("|![HDD](imgs/button_"+lista_aux[fs_indice]+".png) ", end='')
            fs_indice=fs_indice+1

        if (pos == 4 or pos == 9 or pos == 14):
            print("|")
            filas_aux = filas_aux+1
        
        pos=pos+1


if __name__ == "__main__":
    scoreboards = 50
    print(' Generating several files : '+str(scoreboards))


    original_stdout = sys.stdout # Save a reference to the original standard output

    for i in range(scoreboards):

        positions_index = []
        positions_fs = []   
        bloqueados_list = []

        with open('puntuacion_'+str(i)+'.md', 'w') as f:

            sys.stdout = f # Change the standard output to the file we created.
            
            s = open("header.md", 'r').read()

            print(s)

            print("| 1 | 2|  3| 4 | 5 |")
            print("|:--------:|:--------:|:-------:|:-------:|:-------:|")

            main()

            s = open("footer.md", 'r').read()

            print(s)





