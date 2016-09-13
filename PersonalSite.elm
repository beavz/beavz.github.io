module PersonalSite exposing (..)

import Html.App
import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (id, type', for, value, class, style, href)

view model =
  div [ class "resume" ] [
      section [ class "contact" ] [
        h1 [] [ text "Kara Ridzon Bernert" ]
      , p [] [ 
          a [ href "http://karabernert.com" ] [ text "karabernert.com" ]
        , text " · "
        , a [ href "http://github.com/beavz" ] [ text "github.com/beavz" ]
        ]
      ]
    , section [ class "experience" ] [
        h2 [] [ text "Experience" ]
      , h3 [] [ text "Gust New York, NY" ]
      , h4 [] [ text "Software Engineer, 2014-Present" ]
      , ul [] [
          li [] [ text "Feature development for and maintenance of a large-scale web application using Rails and React/Redux, agile processes, BDD with Gherkin, and TDD with cucumber, rspec, and jasmine, both individually and in pairs." ]
        , li [] [ text "Jointly introduced React/Redux framework to better structure application javascript; onboarded team members unfamiliar with the framework." ]
        , li [] [ text "Managed hiring for front-end developer/designer roles (wrote code challenges, screened candidates, scheduled and completed technical interviews)" ]
        , li [] [ text "Currently leading an effort to increase the development speed and quality of UI in the aforementioned application by addressing technical debt, improving workflows, and increasing communication between designers and developers." ]
        , li [] [ text "Currently jointly leading an effort to unify the UI of multiple applications with different technical stacks under the Gust brand through shared code to produce consistent styling and UX patterns." ]
      ]
      , h3 [] [ text "Brigham and Women’s Hospital Boston, MA" ]
      , h4 [] [ text "Technical Research Asssistant II, 2013-2014" ]
      , ul [] [
          li [] [ text "Maintained multiple breeding mouse colonies, performed murine microsurgeries, and performed various biochemical analyses with lipids, proteins, and DNA" ]
        , li [] [ text "Received minimal supervision and initiated and completed highly self-directed research" ]
        , li [] [ text "Analyzed data and prepared figures using R, and wrote and edited scientific papers for publication" ]
      ]
      , h3 [] [ text "Hey, Madeline Magazine, Wellesley College Wellesley, MA" ]
      , h4 [] [ text "Layout Director, 2010–2012" ]
      , ul [] [
          li [] [ text "Managed, with a small executive board, a bi-monthly on-campus magazine with a staff of approximately twenty-five students" ]
        , li [] [ text "Produced final magazines with Adobe InDesign software" ]
      ]
      , h3 [] [ text "Thermax, Inc. Dartmouth, MA" ]
      , h4 [] [ text "Data Management, Summer 2010 and 2012" ]
      , ul [] [
          li [] [ text "Helped create database in Microsoft Access to monitor inventory and maintain a shop schedule" ]
        , li [] [ text "Used Microsoft Excel to organize data and calculations on completed jobs/units" ]
      ] 
    ]
    , section [ class "technologies" ] [
        h2 [] [ text "Technologies" ]
      , h3 [] [ text "Languages" ]
      , p  [] [ text "Ruby, HTML/haml, CSS/SCSS, Javascript/ES6, SQL, SVG, Python, Elm, Haskell, R" ]
      , h3 [] [ text "Frameworks & Libraries" ]
      , p  [] [ text "Rails, React, Node, Backbone, Bootstrap, RSpec, Cucumber, Jasmine, Jquery, Angular" ]
      , h3 [] [ text "Tools & Processes" ]
      , p  [] [ text "Git & github/waffle.io, vim, tmux, pair programming, Agile, pivotal tracker, AWS, Heroku, Circle CI" ]
      , h3 [] [ text "Design Software" ]
      , p  [] [ text "Inkscape, Adobe Illustrator, Adobe InDesign" ]
    ]
    , section [ class "education" ] [
        h2 [] [ text "Education" ]
      , h3 [] [ text "Wellesley College Wellesley MA" ]
      , h4 [] [ text "B.A. in Chemistry and Women’s and Gender Studies, October 2012" ]
      , p  [] [ text "Course work: Organic, Inorganic, Biological and Physical Chemistry, Bioethics, Physics, Cellular Biology, Genetics, Science Writing, Women’s and Gender Studies Calculus, French, Drawing, Java at MIT" ]
      , h3 [] [ text "Bowdoin College <div>Brunswick, ME</div>" ]
      , h4 [] [ text "Exchange Study Program, 2010" ]
      , p  [] [ text "Coursework: Advanced Organic Chemistry, Feminist Theory, Psychology, Ballet" ]
      , h3 [] [ text "Harvard University div>Cambridge, MA" ]
      , h4 [] [ text "Extension School, 2011, 2012, 2014" ]
      , p  [] [ text "Coursework: French, Biostatistics" ]
      , h3 [] [ text "App Academy <div>Manhattan, NY" ]
      , h4 [] [ text "Intensive Course in Web Development, 2014" ]
    ]
  ]

type alias Model =
  { foo : String }

initialModel : Model
initialModel =
    { foo = "bar" }

update model msg = 
  ( model, Cmd.none ) 

main =
  Html.App.program
    { init = ( initialModel, Cmd.none )
    , view = view
    , update = update
    , subscriptions = \_ -> Sub.none
    }
