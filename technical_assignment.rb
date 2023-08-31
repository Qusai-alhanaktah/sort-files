class TechnicalAssignment
  require 'fileutils'

  def self.sort_files
    Dir.glob('./files/*.txt').each do |file|
      filename = file.gsub('./files/', '')
      language = file.gsub('./files/', '').split('-').first
      dir_name = "./files/#{language}"
      new_file_path = "#{dir_name}/#{filename}"

      FileUtils.mkdir_p dir_name unless File.exist?(dir_name)
      FileUtils.mv(file, new_file_path)
    end
  end
end

TechnicalAssignment.sort_files