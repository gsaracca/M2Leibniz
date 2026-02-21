    program
    
    map
        module('M2LZ.mod')
            CalcLeibniz(),REAL,NAME('M2LZ$CalcLeibniz')
        end 
    end
   
startGo     long
diffGo      long
pi          real

    code
    startGo = clock()
    
    pi = CalcLeibniz()
    
    diffGo = clock() - startGo
    
    message( '|Tiempo empleado: ' & diffGo & '|PI -> ' & pi );
    
