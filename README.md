# KM - File-Manipulation-Module
An example module for creating, adding, getting and deleting files.

## How to use:

Import the file **/modules/km_file_manipulation.rb** in your project, example:

    require_relative './modules/km_file_manipulation.rb'


## Create File

To create a file, use the ** **`KmFileManipulation.create`** method.

#### Parameters:

- [`String`] **path** - Directory where the file will be created
- [`String`] **filename** - File name and extension
- [`String`] **content** - Content that must be added in the file

## Add content at the end of a file

To add extra content at the end of a file, use the **`KmFileManipulation.put_content`** method.

#### Parameters:

- [`String`] **path** - Directory where to find the file
- [`String`] **filename** - File name and extension
- [`String`] **content** - Content that must be added in the file

## Get the contents of a file

Use the ***`KmFileManipulation.get_content`*** method to return the contents of the file.

#### Parameters:

- [`String`] **path_and_file** - File name with directory

### Delete file

To delete a file, use the **KmFileManipulation.delete** method.

#### Parameters:

- [`String`] **path_and_file** - File name with directory

## Example of Method Return

    {:success=>true, :success_message=>"......"}

| :success    | :error_message | :success_message |
| ----------- | -------------- | ---------------- |
| **Boolean** | **String**     | **String**       |

## Examples of Use

To see examples of how to use, see the **Example.rb** file.