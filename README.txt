!README
This program is designed to extract text from pdf files, give some rough statistics of the page, and, through a separate program find keywords in the text and return the sentences for users.

Written to help archive the backlog of old pdf research files stored at a hospital. Goal of this project is a program that can automatically detect keywords in pdf files and sort them accordingly, such that it's easier for users to find relevant material.

I'll be updating this over some time as I figure out the best way to do this. I'm a ruby nuby so any critique or pointers are highly appreciated!

############# STEPS FOR USE ##################

+++ Extracting text from PDF +++
1. Drag and drop your .PDF file on pdf_txt_extractor.exe. 

2. Don't freak out at the black command window popping up. 

3. You should see 2 files created, one with {yourfilename}.pdf.txt , and one logfile. (Note that logfile will NOT be created if a logfile already exists.It will just add on to the existing logfile.) 

3a. {yourfilename}.txt contains all the text extracted from your .PDF file, and logfile just logs the date and file created as a record.

*NOTE you can see some page stats at the bottom of the {yourfilename}.pdf.txt in the following example format:

/*****
APPROXIMATE Page Stats of: C:\Users\Rajesh\Desktop\Programs\Ruby\Final Product\Package\hawparlecture.pdf
359 lines
10742 characters
7755 characters (excluding spaces)
1611 words
82 sentences
127 paragraphs
*Bad/unsupported formatting can mess up the article stats! This is just a rough guideline!*
*****/
** NOTE These page stats are just a approximation, not absolute figures. The reason is that the .PDF file might have a format that the program cannot handle

File created at 2014-04-25 03:52:11 +0800
 
+++ Searching text files +++ 
This allows you to search {yourfilename}.pdf.txt for keywords, and the accompanying sentence;

1. Open up hot_words.txt in microsoft notepad.(Do not use Microsoft Word/OpenOffice, requires a basic text editor)

2. Type in the words you want to search for, separated by spaces.
eg: bananas yankee cats

3. Save and exit hot_words.txt
4. Drag and drop {yourfilename}.pdf.txt (NOT THE PDF OF YOUR FILE) onto hot_words.exe

5. You should see one file created, {yourfilename}.pdf.txt_hot_words.txt

6. Open up the {yourfilename}.pdf.txt_hot_words.txt

7. You can see all the sentences that include your specified keywords inside.

                 ______
                /     /\
               /     /##\
              /     /####\
             /     /######\
            /     /########\
           /     /##########\
          /     /#####/\#####\
         /     /#####/++\#####\
        /     /#####/++++\#####\
       /     /#####/\+++++\#####\
      /     /#####/  \+++++\#####\
     /     /#####/    \+++++\#####\
    /     /#####/      \+++++\#####\
   /     /#####/        \+++++\#####\
  /     /#####/__________\+++++\#####\
 /                        \+++++\#####\
/__________________________\+++++\####/
\+++++++++++++++++++++++++++++++++\##/
 \+++++++++++++++++++++++++++++++++\/
  ``````````````````````````````````


