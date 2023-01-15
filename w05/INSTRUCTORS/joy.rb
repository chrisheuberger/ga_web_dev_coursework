#!/usr/bin/env ruby

# Student Homework Pre-Commit Hook

# Students may only make changes to their own folder.

# GA WDI February 2014
# Team Reduce
# Max Cantor

STUDENT_FOLDER_SETTING_KEY = "student.folder"

# The depth is actually 3 (w01/d01/Max_Cantor) but it's the 2-index of an array
STUDENT_FOLDER_DEPTH = 2

class String
  """ Some convenience for stripping heredocs of their indent. """

  def deindent
    gsub(/^ */, "")
  end
end

module Colorize
  class << self
    def colorize(string, color_code)
      "\e[#{color_code}m#{string}\e[0m"
    end

    def white(string)
      "\x1b[38;5;15m#{string}\x1b[0m"
    end

    def red(string)
      colorize(string, 31)
    end

    def green(string)
      colorize(string, 32)
    end

    def yellow(string)
      colorize(string, 33)
    end
  end
end

def get_modified_paths
  `git diff --cached --name-only`.split("\n")
end

def get_student_folder
  result = `git config --get #{STUDENT_FOLDER_SETTING_KEY}`.chomp

  case $?.exitstatus
  when 0
    return result
  else
    return nil
  end
end

def print_setup_message
  puts <<-EOF.deindent()

  #{Colorize.red("ACTION REQUIRED!")}

  You must set your student folder name before you can commit.

  To do this, run the following command, with your folder name filled in:

    git config --local student.folder #{Colorize.yellow('<Your_Folder>')}

    Then try committing again. Thank you very much!

    EOF
end

def colorize_student_dir(path)
  filename = File.basename(path)
  chunks = File.dirname(path).split("/")
  student_dir = chunks[STUDENT_FOLDER_DEPTH]
  chunks[STUDENT_FOLDER_DEPTH] = Colorize.yellow(student_dir)
  chunks.push(filename)
  chunks.join("/")
end

def colorize_student_dirs(paths)
  paths.collect do |path|
    colorize_student_dir(path)
  end
end

def print_restriction_message(paths, student_folder)
  puts <<-EOF.deindent()

    #{Colorize.red("COMMIT TEMPORARILY REJECTED :-(")}

    There's an issue with the following paths in your commit:

    #{colorize_student_dirs(paths).join("\n")}

    They are outside your student folder (#{Colorize.green(student_folder)}).

    For everyone's sanity, this is not allowed!

    Please unstage them with "#{Colorize.white('git reset HEAD <file>')}" and move your changes
    into your personal folder.

    Then try committing again. Thank you very much!

    EOF
end

def get_student_dir(path)
  logical_dir = File.dirname(path).split("/")[STUDENT_FOLDER_DEPTH]
  project_week_dir = File.dirname(path).split('/')[STUDENT_FOLDER_DEPTH-1]
  [logical_dir, project_week_dir]
end

if __FILE__ == $0
  modified_paths = get_modified_paths
  student_folder = get_student_folder

  if not student_folder # If student dir not set up in git config
    print_setup_message
    exit 1
  end

  illegal_paths = modified_paths.select do |path|
    !get_student_dir(path).include? student_folder
  end

  if not illegal_paths.empty?
    print_restriction_message(illegal_paths, student_folder)
    exit 1
  end

  exit 0
end
