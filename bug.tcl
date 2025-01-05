proc read_file {filename} {
    set fp [open $filename r]
    if { $fp == -1 } {
        return -1
    }
    set content [read $fp]
    close $fp
    return $content
}

set content [read_file nonexistent_file.txt]
if { $content == -1 } {
    puts "Error reading file"
} else {
    puts $content
}