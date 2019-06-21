class FileWriter
  def initialize(face_parts)
    @time = Time.now
    @face_parts = face_parts
    draw_face_in_file
  end

  def draw_face_in_file
    result_file_name = "face_" + @time.strftime("%Y.%m.%d_%H-%M-%S") + ".txt"
    file = File.new(result_file_name, 'a:UTF-8')
    file.puts @face_parts['forhead'].sample
    file.puts @face_parts['eyes'].sample
    file.puts @face_parts['nose'].sample
    file.puts @face_parts['mouth'].sample
    file.close
  end
end
