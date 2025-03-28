class WordReader
  def read_from_file(file_name)
    unless File.exist?(file_name)
      return
    end

    begin
      file = File.new(file_name, 'r:UTF-8')
      lines = file.readlines
      file.close
    rescue SystemCallError
      raise "Файл со словами не найден!"
    end

    lines.sample.chomp
  end
end
