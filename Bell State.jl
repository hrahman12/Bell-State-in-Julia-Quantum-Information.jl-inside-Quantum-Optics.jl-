julia> using QuantumInformation.ShortNames

julia> ψ = qubit("00") #number of qubits
Ket(dim=4)
  basis: [Spin(1/2) ⊗ Spin(1/2)]
 1.0+0.0im
 0.0+0.0im
 0.0+0.0im
 0.0+0.0im

julia> ϕ = cnot() * (H() ⊗ id()) * ψ # apply hadamard gate on first qubit and then apply CNOT gate from control to target.
Ket(dim=4)
  basis: [Spin(1/2) ⊗ Spin(1/2)]
 0.707107+0.0im
      0.0+0.0im
      0.0+0.0im
 0.707107+0.0im

julia> tex(ϕ) # print braket form.
|ψ⟩ = 0.707|00⟩ + 0.707|11⟩