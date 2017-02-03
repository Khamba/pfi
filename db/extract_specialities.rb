s = "Specialist surgeon
Surgery
Cardio-thoracic surgery Specialist cardio-thoracic surgeon
General surgery Specialist general surgeon
Neurosurgery Specialist neurosurgeon
Orthopaedic surgery Specialist orthopaedic surgeon
Otolaryngology – head and neck surgery Specialist otolaryngologist – head and neck
surgeon
Oral and maxillofacial surgery Specialist oral and maxillofacial surgeon
Paediatric surgery Specialist paediatric surgeon
Plastic surgery Specialist plastic surgeon
Urology Specialist urologist
Vascular surgery Specialist vascular surgeon"

a = []

s.gsub(" in ", " ").split("\n").each do |line|
  x = line.gsub!(/.*Specialist /, "")
  a << "\"#{x}\"," if x
end

puts a.join("\n")
