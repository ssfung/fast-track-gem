# SusuFastTrackGem

AUSDRISK tool for health professionals to access patients' risk of type 2 diabetes. 

## Installation

To install this gem using terminal :
1. Install rbenv by typing the following into terminal:
brew install rbenv

2. Set up rbenv by typing into the terminal:

    rbenv init

    Close the terminal

3. Open terminal and check that rbenv is properly installed by entering the following into the terminal:
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash

  There should be no errors.

4. Enter the following into the terminal:
rbenv install 2.7.0

5.Enter the following into terminal:

  rbenv global 2.7.0
 
6.Enter the following into terminal: 

  ruby --version 

  version 2.7.0 should show, 
  ruby is successfully installed. 

7. And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install susu_fast_track_gem

## Software Requiremets

The computer must be a MAC OS and follow the installation instrutions as above under installation. 

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/susu_fast_track_gem. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/susu_fast_track_gem/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SusuFastTrackGem project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/susu_fast_track_gem/blob/master/CODE_OF_CONDUCT.md).


## User interaction with application

Menu :
Health care professional will have the option to :
1. Do the AUSDRISK test
2. View patient data
3. View diabetes targets
4. Exit the test

**If the user selects 1:**
The user will go through the ausdrisk quiz in which they either answer yes or no questions or select the options using 1,2 or 3 . 

**If the user selects 2:**
THe user will be able to view data.They have the option to -

Look up all patient history. 
The user must type in the patient's name to search for the history 

Update the patient. 
The user must type in the patient's name then manually type in their new score. 

Delete the patient.
The user must type in the patient's name.

**If the user selects 3**
The app will open some documentation regarding glucose targets for non diabetics. 


## Referenced sources
Australian type 2 diabetes risk assessment tool (AUSDRISK)
link:https://www1.health.gov.au/internet/main/publishing.nsf/Content/chronic-diab-prev-aus/$File/austool5.pdf

Blood glucose levels:
https://www.diabetesaustralia.com.au/blood-glucose-monitoring


## Source code repository
https://github.com/ssfung/fast-track-gem.git

## Statement of Purpose 
This application is created for health professionals such as doctors, nurses or pharmacists to help quickly determine a patient's risk of type two diabetes following the AUSDRISK assessment tool. This AUSDRISK tool is a questionnaire assessing a patient's lifestyle habits, waist measurement, age, medical history and ethnicity in order to determine their risk. These are important factors which can be modified in order to reduce a patient’s risk of type 2 diabetes. The tool will tally up all the points collected and place the patient in low, medium and high risk. 

Healthcare professionals can use this application as a means to accurately add up the patient's risk rather than manually completing it hence reducing the risk of miscalculation which may be common during 15 minute consultations at the doctors.   

The application has the ability to store patient's name and their score, update their score by manually entering it and to also delete the patient's record. There is also a table included which is to outline the normal HBA1C range and blood glucose range as a friendly reminder for the healthcare professional if they are looking for a quick reference guide. 

Doctors can access this tool by visiting my github page and download via the terminal line to their computers. After installing the program, they are able to use the menu to go to do the following options: 

1. Ausdrisk tool
2. View the patient's records, by searching for the patient's first name. A patient's score can also be updated by firstly searching for the patient’s first name then inputting the new score. Lastly the clinician can also have  their patient’s record deleted if needed.
3. Table for healthy range diabetes parameters for non diabetics 
4. Doctors can exit this program  
 
## Features
1. Ausdrisk quiz
The AUSDRISK quiz is comprised of if loops to prompt a yes or no answer from the user. There is also a case statement for the user to select options 1-3 if a yes or no answer is not required. In order to prevent errors such as typing in a number or non-valid answer when a yes/no answer is required, the loop will put ‘wrong user input’ and repeat the original question until a valid input is attained. 

2. Storing patient details such as name, ethnicity, gender and score  
The user's details are initially blank then as the user goes through the quiz, details such as ethnicity, gender are saved. This step is especially important, as the user has to have the ethnicity and gender saved in order to answer the waist measurement question. The points accumulated are saved at each step of the quiz by adding the points the patient gained in each step to the total. This reduces the use for asking the same question again at the waist measurement step (gender and ethnicity are required in order to answer this question). 

3. Storing, updating patient details 
After the AUSDRISK quiz is done, patient's details are pushed into a CSV file and recorded. This allows a user to view the history of other patients. Another feature that is used is to update the patient's score. The csv data is put into an array which can be accessed via asking for the patient's name and searching for that array. User can override the previous history by entering the new value. Furthermore, the patient's details can be deleted by using delete function for arrays. The user then is returned to the view patient page and can exit then.



## Control Flow (UML GRAPH)
![UML control flow](./docs/AUSDRISK.png)



## Project Management tool (Trello)
Please use the link below to see how I planned the app:
https://trello.com/b/zsc3W9gX/terminal-app

![Trello project manager ](./docs/trello.png)

## Manual Testing
Manual testing was done to test the app. Please kindly click the link below to view: 
https://docs.google.com/spreadsheets/d/1PtMvniPatgDjO9aTjCvsZXQBiMGvjynCTeK8o0_nDos/edit#gid=0

![manual testing](./docs/errors.png)
