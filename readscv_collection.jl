using CSV
using DataFrames
using PrettyTables

file_path = "G:/julia/data_with_classes.csv"
df = CSV.read(file_path, DataFrame)

# Initialize empty arrays to store data for each class
global matclass1 = []
global matclass2 = []
global matclass3 = []

for row in eachrow(df)
    # Extract data as an array, excluding the Class column
    data = Float64.(values(row)[1:5])
    class_value = row.Class
    
    if class_value == 1
        push!(matclass1, data)
    elseif class_value == 2
        push!(matclass2, data)
    elseif class_value == 3
        push!(matclass3, data)
    end
end

#Convert to Matrix
matclass1_matrix = reshape(matclass1, (length(matclass1), 1))
matclass2_matrix = reshape(matclass2, (length(matclass2), 1))
matclass3_matrix = reshape(matclass3, (length(matclass3), 1))

#For printing the table
matclass1 = DataFrame(matclass1)
matclass2 = DataFrame(matclass2)
matclass3 = DataFrame(matclass3)

println("matclass1")
pretty_table(matclass1)
println("matclass2")
pretty_table(matclass2)
println("matclass3")
pretty_table(matclass3)