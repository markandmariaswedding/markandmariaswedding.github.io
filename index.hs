{-# LANGUAGE OverloadedStrings #-}

import Prelude
import qualified Prelude as P
import Data.Monoid (mempty)

import Text.Blaze.Html5
import qualified Text.Blaze.Html5 as H
import Text.Blaze.Html5.Attributes
import qualified Text.Blaze.Html5.Attributes as A

index :: Html
index = do
    docTypeHtml ! lang "en" $ do
        H.head $ do
            H.title "The Conference"
            meta ! charset "utf-8"
            meta ! httpEquiv "X-UA-Compatible" ! content "IE=edge"
            meta ! name "description" ! content "Conference project"
            meta ! name "viewport" ! content "width=device-width, initial-scale=1"
            link ! rel "stylesheet" ! type_ "text/css" ! href "styles/bootstrap4/bootstrap.min.css"
            link ! href "plugins/font-awesome-4.7.0/css/font-awesome.min.css" ! rel "stylesheet" ! type_ "text/css"
            link ! rel "stylesheet" ! type_ "text/css" ! href "plugins/OwlCarousel2-2.2.1/owl.carousel.css"
            link ! rel "stylesheet" ! type_ "text/css" ! href "plugins/OwlCarousel2-2.2.1/owl.theme.default.css"
            link ! rel "stylesheet" ! type_ "text/css" ! href "plugins/OwlCarousel2-2.2.1/animate.css"
            link ! rel "stylesheet" ! type_ "text/css" ! href "styles/main_styles.css"
            link ! rel "stylesheet" ! type_ "text/css" ! href "styles/responsive.css"

        body $ do
            H.div ! class_ "super_container" $ do
                --  Menu 
                H.div ! class_ "menu trans_500" $ do
                    H.div ! class_ "menu_content d-flex flex-column align-items-center justify-content-center text-center" $ do
                        H.div ! class_ "menu_close_container" $ H.div ! class_ "menu_close" $ mempty
                        H.div ! class_ "logo menu_logo" $ a ! href "#" $ H.div ! class_ "logo_container d-flex flex-row align-items-start justify-content-start" $ do
                            H.div ! class_ "logo_image" $ H.div $ img ! src "images/logo.png" ! alt ""
                            H.div ! class_ "logo_content" $ do
                                H.div ! class_ "logo_text logo_text_not_ie" $ "The Conference"
                                H.div ! class_ "logo_sub" $ "August 25, 2018 - Miami Marina Bay"
                        ul $ do
                            li ! class_ "menu_item" $ a ! href "index.html" $ "Home"
                            li ! class_ "menu_item" $ a ! href "#" $ "About us"
                            li ! class_ "menu_item" $ a ! href "#" $ "Speakers"
                            li ! class_ "menu_item" $ a ! href "#" $ "Tickets"
                            li ! class_ "menu_item" $ a ! href "news.html" $ "News"
                            li ! class_ "menu_item" $ a ! href "contact.html" $ "Contact"
                    H.div ! class_ "menu_social" $ do
                        H.div ! class_ "menu_social_title" $ "Follow us on Social Media"
                        ul $ do
                            li $ a ! href "#" $ i ! class_ "fa fa-pinterest" $ mempty
                            li $ a ! href "#" $ i ! class_ "fa fa-facebook" $ mempty
                            li $ a ! href "#" $ i ! class_ "fa fa-twitter" $ mempty
                            li $ a ! href "#" $ i ! class_ "fa fa-dribbble" $ mempty
                            li $ a ! href "#" $ i ! class_ "fa fa-behance" $ mempty
                            li $ a ! href "#" $ i ! class_ "fa fa-linkedin" $ mempty

                --  Home 
                H.div ! class_ "home" $ do
                    --  <div class="home_background" style="background-image: url(images/index.jpg)"></div> 
                    H.div ! class_ "parallax_background parallax-window" ! dataAttribute "parallax" "scroll" ! dataAttribute "image-src" "images/index.jpg" ! dataAttribute "speed" "0.8" $ mempty
                    --  Header 
                    header ! class_ "header" ! A.id "header" $ H.div $ do
                        H.div ! class_ "header_top" $ H.div ! class_ "container" $ H.div ! class_ "row" $ H.div ! class_ "col" $ H.div ! class_ "header_top_content d-flex flex-row align-items-center justify-content-start" $ do
                            H.div $ a ! href "#" $ H.div ! class_ "logo_container d-flex flex-row align-items-start justify-content-start" $ do
                                H.div ! class_ "logo_image" $ H.div $ img ! src "images/logo.png" ! alt ""
                                H.div ! class_ "logo_content" $ do
                                    H.div ! A.id "logo_text" ! class_ "logo_text logo_text_not_ie" $ "The Conference"
                                    H.div ! class_ "logo_sub" $ "August 25, 2018 - Miami Marina Bay"
                            H.div ! class_ "header_social ml-auto" $ ul $ do
                                li $ a ! href "#" $ i ! class_ "fa fa-pinterest" $ mempty
                                li $ a ! href "#" $ i ! class_ "fa fa-facebook" $ mempty
                                li $ a ! href "#" $ i ! class_ "fa fa-twitter" $ mempty
                                li $ a ! href "#" $ i ! class_ "fa fa-dribbble" $ mempty
                                li $ a ! href "#" $ i ! class_ "fa fa-behance" $ mempty
                                li $ a ! href "#" $ i ! class_ "fa fa-linkedin" $ mempty
                            H.div ! class_ "hamburger ml-auto" $ i ! class_ "fa fa-bars" $ mempty
                        H.div ! class_ "header_nav" ! A.id "header_nav_pin" $ H.div ! class_ "header_nav_inner" $ do
                            H.div ! class_ "header_nav_container" $ H.div ! class_ "container" $ H.div ! class_ "row" $ H.div ! class_ "col" $ H.div ! class_ "header_nav_content d-flex flex-row align-items-center justify-content-start" $ do
                                nav ! class_ "main_nav" $ ul $ do
                                    li ! class_ "active" $ a ! href "index.html" $ "Home"
                                    li $ a ! href "#" $ "About Us"
                                    li $ a ! href "speakers.html" $ "Speakers"
                                    li $ a ! href "events.html" $ "Events"
                                    li $ a ! href "news.html" $ "News"
                                    li $ a ! href "contact.html" $ "Contact"
                                H.div ! class_ "header_extra ml-auto" $ do
                                    H.div ! class_ "header_search" $ i ! class_ "fa fa-search" $ mempty
                                    H.div ! class_ "button header_button" $ a ! href "#" $ "Buy Tickets Now!"
                            H.div ! class_ "search_container" $ H.div ! class_ "container" $ H.div ! class_ "row" $ H.div ! class_ "col" $ H.div ! class_ "search_content d-flex flex-row align-items-center justify-content-end" $ H.form ! action "#" ! A.id "search_container_form" ! class_ "search_container_form" $ do
                                input ! type_ "text" ! class_ "search_container_input" ! placeholder "Search" ! required "required"
                                button ! class_ "search_container_button" $ i ! class_ "fa fa-search" $ mempty
                    H.div ! class_ "home_content_container" $ H.div ! class_ "container" $ H.div ! class_ "row" $ H.div ! class_ "col" $ H.div ! class_ "home_content" $ do
                        H.div ! class_ "home_date" $ "August 25, 2018"
                        H.div ! class_ "home_title" $ "2018 Public Policy Conference"
                        H.div ! class_ "home_location" $ "Miami Marina Bay, FL"
                        H.div ! class_ "home_text" $ "Donec quis metus ac arcu luctus accumsan. Nunc in justo tincidunt, sodales nunc id, finibus nibh. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos."
                        H.div ! class_ "home_buttons" $ do
                            H.div ! class_ "button home_button" $ a ! href "#" $ "Buy Tickets Now!"
                            H.div ! class_ "button home_button" $ a ! href "#" $ "Find out more"

                --  Intro 
                H.div ! class_ "intro" $ H.div ! class_ "intro_content d-flex flex-row flex-wrap align-items-start justify-content-between" $ do
                    --  Intro Item 
                    H.div ! class_ "intro_item" $ do
                        H.div ! class_ "intro_image" $ img ! src "images/intro_1.jpg" ! alt ""
                        H.div ! class_ "intro_body" $ do
                            H.div ! class_ "intro_title" $ a ! href "#" $ "Conference Program"
                            H.div ! class_ "intro_subtitle" $ "Donec quis metus ac arcu luctus accumsan."
                    --  Intro Item 
                    H.div ! class_ "intro_item" $ do
                        H.div ! class_ "intro_image" $ img ! src "images/intro_2.jpg" ! alt ""
                        H.div ! class_ "intro_body" $ do
                            H.div ! class_ "intro_title" $ a ! href "#" $ "Supersessions"
                            H.div ! class_ "intro_subtitle" $ "Donec quis metus ac arcu luctus accumsan."
                    --  Intro Item 
                    H.div ! class_ "intro_item" $ do
                        H.div ! class_ "intro_image" $ img ! src "images/intro_3.jpg" ! alt ""
                        H.div ! class_ "intro_body" $ do
                            H.div ! class_ "intro_title" $ a ! href "#" $ "The Speakers"
                            H.div ! class_ "intro_subtitle" $ "Donec quis metus ac arcu luctus accumsan."
                    --  Intro Item 
                    H.div ! class_ "intro_item" $ do
                        H.div ! class_ "intro_image" $ img ! src "images/intro_4.jpg" ! alt ""
                        H.div ! class_ "intro_body" $ do
                            H.div ! class_ "intro_title" $ a ! href "#" $ "Explore Sessions"
                            H.div ! class_ "intro_subtitle" $ "Donec quis metus ac arcu luctus accumsan."
                    --  Intro Item 
                    H.div ! class_ "intro_item" $ do
                        H.div ! class_ "intro_image" $ img ! src "images/intro_5.jpg" ! alt ""
                        H.div ! class_ "intro_body" $ do
                            H.div ! class_ "intro_title" $ a ! href "#" $ "Directory"
                            H.div ! class_ "intro_subtitle" $ "Donec quis metus ac arcu luctus accumsan."
                    --  Intro Item 
                    H.div ! class_ "intro_item" $ do
                        H.div ! class_ "intro_image" $ img ! src "images/intro_6.jpg" ! alt ""
                        H.div ! class_ "intro_body" $ do
                            H.div ! class_ "intro_title" $ a ! href "#" $ "Speakers Schedule"
                            H.div ! class_ "intro_subtitle" $ "Donec quis metus ac arcu luctus accumsan."

                --  Pricing 
                H.div ! class_ "pricing" $ do
                    H.div ! class_ "parallax_background parallax-window" ! dataAttribute "parallax" "scroll" ! dataAttribute "image-src" "images/pricing.jpg" ! dataAttribute "speed" "0.8" $ mempty
                    H.div ! class_ "container" $ do
                        H.div ! class_ "row" $ H.div ! class_ "col text-center" $ H.div ! class_ "pricing_section_title" $ "Choose a plan"
                        H.div ! class_ "row pricing_row" $ do
                            --  Pricing Item 
                            H.div ! class_ "col-lg-4 pricing_col" $ H.div ! class_ "pricing_item" $ H.div ! class_ "pricing_item_content" $ do
                                H.div ! class_ "pricing_level" $ "Beginner"
                                H.div ! class_ "pricing_price" $ "Free"
                                ul ! class_ "pricing_list" $ do
                                    li "3 Conference Tickets"
                                    li "Vip Table"
                                    li "Drinks"
                                    li "Special PASS"
                                    li "VIP Dinner"
                                H.div ! class_ "pricing_info" $ a ! href "#" $ "i"
                                H.div ! class_ "button pricing_button" $ a ! href "#" $ "Order plan"
                            --  Pricing Item 
                            H.div ! class_ "col-lg-4 pricing_col" $ H.div ! class_ "pricing_item pricing_item_mid" $ H.div ! class_ "pricing_item_content" $ do
                                H.div ! class_ "pricing_level" $ "recommended"
                                H.div ! class_ "pricing_price" $ do
                                    "$29"
                                    H.span "90"
                                ul ! class_ "pricing_list" $ do
                                    li "3 Conference Tickets"
                                    li "Vip Table"
                                    li "Drinks"
                                    li "Special PASS"
                                    li "VIP Dinner"
                                H.div ! class_ "pricing_info" $ a ! href "#" $ "i"
                                H.div ! class_ "button pricing_button" $ a ! href "#" $ "Order plan"
                            --  Pricing Item 
                            H.div ! class_ "col-lg-4 pricing_col" $ H.div ! class_ "pricing_item" $ H.div ! class_ "pricing_item_content" $ do
                                H.div ! class_ "pricing_level" $ "Professional"
                                H.div ! class_ "pricing_price" $ do
                                    "$59"
                                    H.span "90"
                                ul ! class_ "pricing_list" $ do
                                    li "3 Conference Tickets"
                                    li "Vip Table"
                                    li "Drinks"
                                    li "Special PASS"
                                    li "VIP Dinner"
                                H.div ! class_ "pricing_info" $ a ! href "#" $ "i"
                                H.div ! class_ "button pricing_button" $ a ! href "#" $ "Order plan"
                --  Calendar 
                H.div ! class_ "calendar" $ H.div ! class_ "container reset_container" $ H.div ! class_ "row" $ do
                    H.div ! class_ "col-xl-6 calendar_col" $ H.div ! class_ "calendar_container" $ do
                        H.div ! class_ "calendar_title_bar d-flex flex-row align-items-center justify-content-start" $ do
                            H.div $ H.div ! class_ "calendar_icon" $ img ! src "images/calendar.svg" ! alt ""
                            H.div ! class_ "calendar_title" $ "22 april events calendar"
                        H.div ! class_ "calendar_items" $ do
                            --  Calendar Item 
                            H.div ! class_ "calendar_item d-flex flex-row align-items-center justify-content-start" $ do
                                H.div $ H.div ! class_ "calendar_item_image" $ img ! src "images/event_1.jpg" ! alt ""
                                H.div ! class_ "calendar_item_time" $ do
                                    H.div "14:00"
                                    H.div "Auditorium"
                                H.div ! class_ "calendar_item_text" $ do
                                    H.div "Business 101"
                                    H.div "08 AM - 04 PM"
                                    H.div "Speaker: Daniel Hill"
                            --  Calendar Item 
                            H.div ! class_ "calendar_item d-flex flex-row align-items-center justify-content-start" $ do
                                H.div $ H.div ! class_ "calendar_item_image" $ img ! src "images/event_2.jpg" ! alt ""
                                H.div ! class_ "calendar_item_time" $ do
                                    H.div "15:00"
                                    H.div "Auditorium"
                                H.div ! class_ "calendar_item_text" $ do
                                    H.div "About technology"
                                    H.div "08 AM - 04 PM"
                                    H.div "Speaker: Daniel Hill"
                            --  Calendar Item 
                            H.div ! class_ "calendar_item d-flex flex-row align-items-center justify-content-start" $ do
                                H.div $ H.div ! class_ "calendar_item_image" $ img ! src "images/event_3.jpg" ! alt ""
                                H.div ! class_ "calendar_item_time" $ do
                                    H.div "17:00"
                                    H.div "Auditorium"
                                H.div ! class_ "calendar_item_text" $ do
                                    H.div "Conference calls"
                                    H.div "08 AM - 04 PM"
                                    H.div "Speaker: Daniel Hill"
                            --  Calendar Item 
                            H.div ! class_ "calendar_item d-flex flex-row align-items-center justify-content-start" $ do
                                H.div $ H.div ! class_ "calendar_item_image" $ img ! src "images/event_4.jpg" ! alt ""
                                H.div ! class_ "calendar_item_time" $ do
                                    H.div "20:00"
                                    H.div "Auditorium"
                                H.div ! class_ "calendar_item_text" $ do
                                    H.div "Drinks and dinner"
                                    H.div "08 AM - 04 PM"
                                    H.div "Speaker: Daniel Hill"
                    H.div ! class_ "col-xl-6 calendar_col" $ H.div ! class_ "calendar_container" $ do
                        H.div ! class_ "calendar_title_bar d-flex flex-row align-items-center justify-content-start" $ do
                            H.div $ H.div ! class_ "calendar_icon" $ img ! src "images/calendar.svg" ! alt ""
                            H.div ! class_ "calendar_title" $ "23 april events calendar"
                        H.div ! class_ "calendar_items" $ do
                            --  Calendar Item 
                            H.div ! class_ "calendar_item d-flex flex-row align-items-center justify-content-start" $ do
                                H.div $ H.div ! class_ "calendar_item_image" $ img ! src "images/event_5.jpg" ! alt ""
                                H.div ! class_ "calendar_item_time" $ do
                                    H.div "14:00"
                                    H.div "Auditorium"
                                H.div ! class_ "calendar_item_text" $ do
                                    H.div "Business 101"
                                    H.div "08 AM - 04 PM"
                                    H.div "Speaker: Daniel Hill"
                            --  Calendar Item 
                            H.div ! class_ "calendar_item d-flex flex-row align-items-center justify-content-start" $ do
                                H.div $ H.div ! class_ "calendar_item_image" $ img ! src "images/event_6.jpg" ! alt ""
                                H.div ! class_ "calendar_item_time" $ do
                                    H.div "15:00"
                                    H.div "Auditorium"
                                H.div ! class_ "calendar_item_text" $ do
                                    H.div "About technology"
                                    H.div "08 AM - 04 PM"
                                    H.div "Speaker: Daniel Hill"
                            --  Calendar Item 
                            H.div ! class_ "calendar_item d-flex flex-row align-items-center justify-content-start" $ do
                                H.div $ H.div ! class_ "calendar_item_image" $ img ! src "images/event_7.jpg" ! alt ""
                                H.div ! class_ "calendar_item_time" $ do
                                    H.div "17:00"
                                    H.div "Auditorium"
                                H.div ! class_ "calendar_item_text" $ do
                                    H.div "Conference calls"
                                    H.div "08 AM - 04 PM"
                                    H.div "Speaker: Daniel Hill"
                            --  Calendar Item 
                            H.div ! class_ "calendar_item d-flex flex-row align-items-center justify-content-start" $ do
                                H.div $ H.div ! class_ "calendar_item_image" $ img ! src "images/event_8.jpg" ! alt ""
                                H.div ! class_ "calendar_item_time" $ do
                                    H.div "20:00"
                                    H.div "Auditorium"
                                H.div ! class_ "calendar_item_text" $ do
                                    H.div "Drinks and dinner"
                                    H.div "08 AM - 04 PM"
                                    H.div "Speaker: Daniel Hill"
                --  Call to action 
                H.div ! class_ "cta" $ do
                    H.div ! class_ "parallax_background parallax-window" ! dataAttribute "parallax" "scroll" ! dataAttribute "image-src" "images/cta_1.jpg" ! dataAttribute "speed" "0.8" $ mempty
                    H.div ! class_ "container" $ H.div ! class_ "row" $ H.div ! class_ "col" $ H.div ! class_ "cta_content text-center" $ do
                        H.div ! class_ "cta_title" $ "Get your tickets now!"
                        H.div ! class_ "button cta_button" $ a ! href "#" $ "Find out more"
                --  Footer 
                footer ! class_ "footer" $ do
                    H.div ! class_ "footer_content" $ H.div ! class_ "container" $ H.div ! class_ "row" $ do
                        --  Footer Column 
                        H.div ! class_ "col-lg-4 footer_col" $ H.div ! class_ "footer_about" $ do
                            H.div $ a ! href "#" $ H.div ! class_ "logo_container d-flex flex-row align-items-start justify-content-start" $ do
                                H.div ! class_ "logo_image" $ H.div $ img ! src "images/logo.png" ! alt ""
                                H.div ! class_ "logo_content" $ do
                                    H.div ! A.id "logo_text" ! class_ "logo_text logo_text_not_ie" $ "The Conference"
                                    H.div ! class_ "logo_sub" $ "August 25, 2018 - Miami Marina Bay"
                            H.div ! class_ "footer_about_text" $ p "Donec quis metus ac arcu luctus accumsan. Nunc in justo tincidunt, sodales nunc id, finibus nibh. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos."
                        --  Footer Column 
                        H.div ! class_ "col-lg-3 footer_col" $ H.div ! class_ "footer_links" $ ul $ do
                            li $ a ! href "#" $ "About Us"
                            li $ a ! href "#" $ "Services"
                            li $ a ! href "#" $ "Speakers"
                            li $ a ! href "#" $ "Event Dates"
                            li $ a ! href "#" $ "Information"
                            li $ a ! href "#" $ "Calendar"
                        --  Footer Column 
                        H.div ! class_ "col-lg-3 footer_col" $ H.div ! class_ "footer_links" $ ul $ do
                            li $ a ! href "#" $ "Logistics"
                            li $ a ! href "#" $ "Our Partners"
                            li $ a ! href "#" $ "Testimonials"
                            li $ a ! href "#" $ "Price Plans"
                            li $ a ! href "#" $ "News"
                            li $ a ! href "#" $ "Contact"
                        --  Footer Column 
                        H.div ! class_ "col-lg-2 footer_col" $ H.div ! class_ "footer_links" $ ul $ do
                            li $ a ! href "#" $ "About Us"
                            li $ a ! href "#" $ "Services"
                            li $ a ! href "#" $ "Speakers"
                            li $ a ! href "#" $ "Event Dates"
                            li $ a ! href "#" $ "Information"
                            li $ a ! href "#" $ "Calendar"
                    H.div ! class_ "footer_extra" $ H.div ! class_ "container" $ H.div ! class_ "row" $ H.div ! class_ "col" $ H.div ! class_ "footer_extra_content d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-start justify-content-center" $ do
                        H.div ! class_ "footer_social" $ do
                            H.div ! class_ "footer_social_title" $ "Follow us on Social Media"
                            ul ! class_ "footer_social_list" $ do
                                li $ a ! href "#" $ i ! class_ "fa fa-pinterest" $ mempty
                                li $ a ! href "#" $ i ! class_ "fa fa-facebook" $ mempty
                                li $ a ! href "#" $ i ! class_ "fa fa-twitter" $ mempty
                                li $ a ! href "#" $ i ! class_ "fa fa-dribbble" $ mempty
                                li $ a ! href "#" $ i ! class_ "fa fa-behance" $ mempty
                                li $ a ! href "#" $ i ! class_ "fa fa-linkedin" $ mempty
                        H.div ! class_ "footer_extra_right ml-lg-auto text-lg-right" $ do
                            H.div ! class_ "footer_extra_links" $ ul $ do
                                li $ a ! href "contact.html" $ "Contact us"
                                li $ a ! href "#" $ "Sitemap"
                                li $ a ! href "#" $ "Privacy"
                            H.div ! class_ "copyright" $ do
                                --  Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. 
                                "Copyright"
                                script "document.write(new Date().getFullYear());"
                                "All rights reserved | This template is made with"
                                i ! class_ "fa fa-heart-o" $ mempty
                                "by"
                                a ! href "https://colorlib.com" ! target "_blank" $ "Colorlib"
                                --  Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. 
            script ! src "js/jquery-3.2.1.min.js" $ mempty
            script ! src "styles/bootstrap4/popper.js" $ mempty
            script ! src "styles/bootstrap4/bootstrap.min.js" $ mempty
            script ! src "plugins/OwlCarousel2-2.2.1/owl.carousel.js" $ mempty
            script ! src "plugins/easing/easing.js" $ mempty
            script ! src "plugins/parallax-js-master/parallax.min.js" $ mempty
            script ! src "js/custom.js" $ mempty

