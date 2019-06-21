require_relative 'file_writer'

def faces_from_file(file_name)
  File.readlines('./data/' + file_name, chomp: true)
end

file_names = Dir.children("data")
abort 'Не хватает файлов' if file_names.size < 4

face_parts = {}

file_names.each do |f|
  name = f.gsub(/.txt/, '')
  face_parts[name] = faces_from_file(f)
end

FileWriter.new(face_parts)
