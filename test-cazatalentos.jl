using Distributions
using Random

function simular_tiros(n_personas::Int, probabilidad::Float64, tiros_totales::Int, tiros_minimos::Int, n_simulaciones::Int)
    conteo_exitos = 0

    for _ in 1:n_simulaciones
        encestes_por_persona = rand(Binomial(tiros_totales, probabilidad), n_personas)
        if any(encestes_por_persona .>= tiros_minimos)
            conteo_exitos += 1
        end
    end

    probabilidad_estimada = conteo_exitos / n_simulaciones
    return probabilidad_estimada
end

# Parámetros C1
n_personas = 100
probabilidad = 0.701
tiros_totales = 100
tiros_minimos = 80
n_simulaciones = 10000

# Ejecutar simulación
probabilidad_estimada = simular_tiros(n_personas, probabilidad, tiros_totales, tiros_minimos, n_simulaciones)
println("CAZATALENTOS 1: La probabilidad estimada de que al menos una persona enceste 80 veces es: ", probabilidad_estimada)

# Parámetros C2
n_personas = 200
probabilidad = 0.701
tiros_totales = 100
tiros_minimos = 80
n_simulaciones = 10000

# Ejecutar simulación
probabilidad_estimada = simular_tiros(n_personas, probabilidad, tiros_totales, tiros_minimos, n_simulaciones)
println("CAZATALENTOS 2: La probabilidad estimada de que al menos una persona enceste 80 veces es: ", probabilidad_estimada)


# Parámetros C3
n_personas = 2
probabilidad = 0.701
tiros_totales = 100
tiros_minimos = 80
n_simulaciones = 10000

# Ejecutar simulación
probabilidad_estimada = simular_tiros(n_personas, probabilidad, tiros_totales, tiros_minimos, n_simulaciones)
println("CAZATALENTOS 3: La probabilidad estimada de que al menos una persona enceste 80 veces es: ", probabilidad_estimada)

# Parámetros C4
n_personas = 1
probabilidad = 0.701
tiros_totales = 100
tiros_minimos = 80
n_simulaciones = 10000

# Ejecutar simulación
probabilidad_estimada = simular_tiros(n_personas, probabilidad, tiros_totales, tiros_minimos, n_simulaciones)
println("CAZATALENTOS 4: La probabilidad estimada de que la persona seleccionada enceste 80 veces es: ", probabilidad_estimada)

# Parámetros C3
n_personas = 1
probabilidad = 0.701
tiros_totales = 100
tiros_minimos = 80
n_simulaciones = 10000

# Ejecutar simulación
probabilidad_estimada = simular_tiros(n_personas, probabilidad, tiros_totales, tiros_minimos, n_simulaciones)
println("CAZATALENTOS 5: La probabilidad estimada de que la persona seleccionada enceste 80 veces es: ", probabilidad_estimada)
