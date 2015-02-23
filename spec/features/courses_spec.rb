require 'rails_helper'


  describe 'User can CRUD courses' do

    # Users can create a course.
    scenario 'User can create a course' do

      # visit courses index
      visit '/courses'

      # click on link to go to new course form
      click_on "New Course"

      #filling out form for course
      fill_in 'course[title]', :with => "Test Course"

      #submitting form to create a course
      click_on "Create Course"

      #expect to see flash notice of successful creation of course
      expect(page).to have_content("Course was successfully created.")

      #expect page to show description of Example course
      expect(page).to have_content("Test Course")

    end


    #Users can edit a course
    scenario 'User can edit a course' do

      @course = Course.create(:title => "Test Course")
      visit "/courses"

      #click on Edit
      click_on "Edit"

      # change description field and update it to Example course edit
      fill_in 'course[title]', :with => "Example course edit"

      #submitting form to update a description in course
      click_on "Update Course"

      #expect to see flash notice of successful update of course
      expect(page).to have_content("Course was successfully updated.")

      #expect page to show updated description of Example course edit
      expect(page).to have_content("Example course edit")

  end


  # Users can show a course.
  scenario 'User can show a course' do

    @course = Course.create(:title => "Test Course")
    visit "/courses"

    # click on course name link to go to course show page
    click_on "Test Course"

    #expect page to show title and time of day of Example course
    expect(page).to have_content("Test Course")
    expect(page).to have_content("Night")

  end


  # Users can delete a course.
  scenario 'User can delete a course' do

    @course = Course.create(:title => "Test Course")
    visit "/courses"

    #click on Delete
    click_on "Delete"

    #expect to see flash notice of successful deletion of course
    expect(page).to have_content("Course was successfully destroyed.")

  end


end
