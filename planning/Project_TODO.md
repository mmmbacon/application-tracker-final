# TODO

## 3rd - 5th Project Planning

### June 3rd

      Planning ✓
        * Set up git repo ✓
        * Data Requirements ✓
        * ERD Planning ✓

### June 4th

      Meet up in the AM to discuss MaterialUI. ✓
      Look up some inspiration for design - Fonts, General Asthetic, Color Pallettes ✓
      Interview with Andy ✓
      Upgrade Ruby / Figure out Gems ✓
      Confirm with Andy Rails Version with ActiveRecord ✓
      Create Tables ✓
      Seed Data ✓

## 7th - 11th Developing MVP

      Start Development ✓
        * Build Routes/Controllers/Models in Rails ✓

        * Backend
          * Register endpoint ✓
          * Login/Logout endpoint ✓
          * User 
          * Jobs 
          * Events endpoints - In progress (Brandon switch back to api/...)
          * Update on Jobs

        * Components:
          * App
            * Router                - Courtney ✓
              * Front end auth      - Courtney ✓
          * SplashLogin           - Brandon -> Courtney ✓
          * SplashRegister        - Brandon -> Courtney ✓
          * Pages
            * 5 Column Layout       - In progress
            * UserPage(Stretch)
          * Side Bar                - Brandon ✓
          * Job Item (5 Col layout) - Brandon - In Progress - Needs to fetch Jobs data
            * Main Column Container 
            * Column Heading
          * Job Item Form (Modal)   - Austin - In Progress - Connect to DB

  ## June 9th TODO
      * Delete Logout Button from dashboard
      * Connect Job Item to Edit Modal
      * Add Delete and Edit Buttons to Job Item
      * Fix Stying for Job Item (Doesnt span full width)
      * Dynamic Logo Rendering on Job Modal - Async / useEffect
      * Redux Jobs slices - Add / Edit / Delete


Notes:
          post -> api/jobs -> 
          {
            job: {},
            events: [1,2]
          }

          Controller:
            1) Grab current_user -> user_id
            2) Create a job - Job.new(@current_user.id)
            2) (job_id)For each event in request.events... 
                Event.new(job_id)

          get -> api/jobs
          {
            jobs: []
          }






          post -> api/jobs -> Controller - Create new job
          post -> api/events -> Controller - Create new event
          post -> api/events -> Controller - Create new event
          post -> api/events -> Controller - Create new event






## 12th Polishing / Styling Finishing

## 14th Testing

## 15th Presentation Planning

## 16th Buffer Day / Rest - CI/CD / Heroku Deployment

## 17th Presentation
