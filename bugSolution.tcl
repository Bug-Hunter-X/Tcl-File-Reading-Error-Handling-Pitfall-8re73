proc read_file {filename} {
    if {![file exists $filename]} {
        return -code error "File not found: $filename"
    }
    set fp [open $filename r]
    if { $fp == -1 } {
        return -code error "Error opening file: $filename"
    }
    set content [read $fp]
    close $fp
    return $content
}

set result [catch {read_file nonexistent_file.txt} error_message]
if {$result} {
    puts "Error: $error_message"
} else {
    puts $result
}

#Test with an existing file
set testFile [open test.txt w]
puts $testFile "Testing 123"
close $testFile
set result [catch {read_file test.txt} error_message]
if {$result} {
    puts "Error: $error_message"
} else {
    puts "Contents of test.txt: $result"
}
file delete test.txt