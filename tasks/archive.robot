*** Settings ***
Library     RPA.Archive


*** Tasks ***
Create TAR archive
    Archive Folder With Tar    files/    ${OUTPUT_DIR}/files.tar

Create ZIP archive
    Archive Folder With Zip    files/    ${OUTPUT_DIR}/files.zip

Add file to archive
    Add To Archive    README.md    ${OUTPUT_DIR}/files.zip

Extract archive
    Extract Archive    output/files.zip    ${OUTPUT_DIR}/

Extract file from archive
    Extract File From Archive    test.jpg    ${OUTPUT_DIR}/files.zip    ${OUTPUT_DIR}/

Get archive info
    ${info}=    Get Archive Info    ${OUTPUT_DIR}/files.zip
    Log    ${info}

List Archive
    @{files}=    List Archive    ${OUTPUT_DIR}/files.zip
    FOR    ${file}    IN    @{files}
        Log    ${file}[filename]
    END