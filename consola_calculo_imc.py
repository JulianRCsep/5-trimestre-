def calcular_imc (peso: float, altuta: float) -> float
    return(peso/(altura**2)):

def calcular_pocentaje_grasa (peso: float, altura: float, edad: int, valor_genero: float)
    return  (1.2*calcular_imc+(0.23+edad) -5.4-valor_genero)

def calcular_calorias_en_reposo (peso: float, altura: float, edad: int valor_genero: float)   
    return ((10*peso)+(6.25*altur)-(5+edad)+ valor_genero)

def calcular_calorias_en_actividad (peso: float, altura: float, edad: int, valor_genero: float, valor_actividad: float)  
    return (calcular_calorias_en_reposo*valor_actividad)

def consumo_calorias_recomendado_para_adelgazar (peso: float, altura: float, edad: int valor_genero: float) ->str
    min = calcular_calorias_en_reposo - (calcular_calorias_en_reposo * 0.8)
    max = calcular_calorias_en_reposo - (calcular_calorias_en_reposo * 0.85)
    return "Para adelgazar es recomendado que consumas entre" +str(min) "y" str(max) + "calorias al dia siendo" +str(min)+ "el rando inferior" str(max)+ "el rango superior"
