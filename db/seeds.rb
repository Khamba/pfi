SPECIALITIES = [
  "addiction medicine",
  "anaesthetist",
  "dermatologist",
  "emergency physician",
  "general practitioner",
  "intensive care physician",
  "medical administrator",
  "obstetrician and gynaecologist",
  "gynaecological oncologist",
  "maternal–fetal medicine",
  "obstetrics and gynaecological ultrasound",
  "reproductive endocrinology and infertility",
  "urogynaecologist",
  "occupational and environmental physician",
  "ophthalmologist",
  "paediatrician",
  "paediatric clinical geneticist",
  "community child health",
  "general paediatrician",
  "neonatologist",
  "paediatric cardiologist",
  "paediatric clinical pharmacologist",
  "paediatric emergency physician",
  "paediatric endocrinologist",
  "paediatric gastroenterologist and hepatologist",
  "paediatric haematologist",
  "paediatric immunologist and allergist",
  "paediatric infectious diseases physician",
  "paediatric intensive care physician",
  "paediatric medical oncologist",
  "paediatric nephrologist",
  "paediatric neurologist",
  "paediatric nuclear medicine physician",
  "paediatric palliative medicine physician",
  "paediatric rehabilitation physician",
  "paediatric respiratory and sleep medicine",
  "paediatric rheumatologist",
  "pain medicine physician",
  "palliative medicine physician",
  "pathologist",
  "general pathologist",
  "anatomical pathologist",
  "chemical pathologist",
  "haematologist",
  "immunologist",
  "microbiologist",
  "forensic pathologist",
  "physician",
  "cardiologist",
  "clinical geneticist",
  "clinical pharmacologist",
  "endocrinologist",
  "gastroenterologist and hepatologist",
  "general physician",
  "geriatrician",
  "immunologist and allergist",
  "infectious diseases physician",
  "medical oncologist",
  "nephrologist",
  "neurologist",
  "nuclear medicine physician",
  "respiratory and sleep medicine physician",
  "rheumatologist",
  "psychiatrist",
  "public health physician",
  "radiation oncologist",
  "radiologist",
  "nuclear medicine",
  "rehabilitation physician",
  "sexual health physician",
  "sport and exercise physician",
  "surgeon",
  "cardio-thoracic surgeon",
  "general surgeon",
  "neurosurgeon",
  "orthopaedic surgeon",
  "otolaryngologist – head and neck",
  "oral and maxillofacial surgeon",
  "paediatric surgeon",
  "plastic surgeon",
  "urologist",
  "vascular surgeon"
]

SPECIALITIES.each do |speciality_name|
  s = Speciality.create(name: speciality_name.titleize)
  unless s.persisted?
    puts s.name
    puts s.errors.to_h
  end
end
