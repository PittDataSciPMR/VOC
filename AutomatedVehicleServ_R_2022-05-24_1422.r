#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('AutomatedVehicleServ_DATA_2022-05-24_1422.csv')
#Setting Labels

label(data$fwat_id)="Record ID"
label(data$redcap_survey_identifier)="Survey Identifier"
label(data$working_automated_vehicle_services_for_people_with_timestamp)="Survey Timestamp"
label(data$consent_y_n)="This survey is for the Voice of the Consumer Department of Transportation (VOCDOT) research study in which we aim to collect information and opinions directly from individuals living in the United States or its territories concerning accessible autonomous vehicles (AV) and autonomous transportation systems (ATS) such as self-driving cars, automated ridesharing (e.g., Ubers without drivers), etc. We aim to obtain information from up to 2500 participants in this survey.  You are being asked to participate in this study because you are 18 years of age or older and belong to one of three groups needed as participants.  1. Person with a disability   I. Current use of one or more forms of accessible/non-accessible transportation (e.g., personal, or public) for travel to destinations in the community (currently defined as using transportation mode(s) to travel at least one time per week).  II. Has a disability - Disability will be defined according to the definition provided by the Americans with Disability (ADA) Act as a physical or mental impairment that substantially limits one or more major life activities; a record (or history) of such an impairment; or being regarded as having a disability.  OR  2. Transportation Partner/caregiver  I. You currently travel with a person with a disability (currently defined as travel to/from a location in the community with a person with a disability at least one time per week).  OR  3. Older adult (65+)  I. 65 years of age or older  Research Activities:  If you agree to participate, you will be asked to complete a short questionnaire. We developed a self-report survey to gather input from individuals with disabilities and older adults, their travel partners, and/or caregivers on the requirements and future needs & capabilities for accessible AVs and ATS. The questionnaire will take approximately 15 minutes to complete. Following completion of this questionnaire, you may stand a chance to win a $50 gift card. You will be asked to enter a phone number or email where you can be reached in the space provided so we can contact you if you win.  Risks & Benefits:  There are minimal risks involved in this investigation. Potential risks may include some fatigue with answering the survey questions. This is expected to occur rarely. If it does occur, you will have the option of answering the questions at a later date or taking rest breaks. We will collect a minimal amount of identifiable information (first name, last name, & date of birth) to try to ensure that each participant completes the questionnaire only once. Therefore, there is a slight risk of breach of confidentiality, but the research team will do everything possible to prevent this risk. There are no direct benefits to you.  Data Security & Confidentiality:  Survey data will be stored in password-protected files on a secure shared drive on the computer with restricted access. All responses are confidential. Authorized representatives of the University of Pittsburgh Office of Research Protections may review your identifiable research information to ensure the appropriate conduct of this research study. At some point, your identifiers might be removed from the private information. This de-identified information may be used by other researchers for future research studies. If this happens, we will not contact you for additional consent. Per University of Pittsburgh policy, all research records must be maintained for at least 7 years following final reporting or publication of a project.  Rights of Research Participants participate:  Your participation is voluntary, and you may withdraw from this project at any time. Any identifiable research information obtained as part of this study before the date that you withdrew your consent will continue to be used by the investigators for the purposes described above. If you want to withdraw, notify the study team. Your decision to withdraw will not affect your current or future relationship with the University of Pittsburgh.  This study is being conducted by Dr. Rory Cooper at the Human Engineering Research Laboratories (HERL), University of Pittsburgh. A study coordinator can be reached at 412-822-3700 if you have any questions. You may contact the Human Subjects Protection Advocate of the IRB Office, University of Pittsburgh (1-866-212-2668) to discuss problems, concerns, and questions; obtain information; offer input, or discuss situations that occurred during your participation.  Do you agree to participate? "
label(data$dpct)="Please choose the answer which best describes you for survey purposes.  If you are a person with dual roles, please choose first the role you most associate yourself with. Feel free to take the survey again, identifying yourself in another role as appropriate."
label(data$person_w_disabilty___1)="Please identify your disability and/or whether you are an older adult. Check all that apply (choice=Hearing difficulty, deaf or having serious difficulty hearing (DEAR).)"
label(data$person_w_disabilty___2)="Please identify your disability and/or whether you are an older adult. Check all that apply (choice=Vision difficulty, blind or having serious difficulty seeing, even when wearing glasses (DEYE).)"
label(data$person_w_disabilty___3)="Please identify your disability and/or whether you are an older adult. Check all that apply (choice=Cognitive difficulty.  Because of a physical, mental, or emotional problem, having difficulty remembering, concentrating, or making decisions (DREM).)"
label(data$person_w_disabilty___4)="Please identify your disability and/or whether you are an older adult. Check all that apply (choice=Ambulatory difficulty. Having serious difficulty walking or climbing stairs (DPHY).)"
label(data$person_w_disabilty___5)="Please identify your disability and/or whether you are an older adult. Check all that apply (choice=Self-care difficulty.  Having difficulty bathing or dressing (DDRS).)"
label(data$person_w_disabilty___6)="Please identify your disability and/or whether you are an older adult. Check all that apply (choice=Independent living difficulty.  Because of a physical, mental, or emotional problem, having difficulty doing errands alone such as visiting a doctors office or shopping (DOUT).)"
label(data$person_w_disabilty___7)="Please identify your disability and/or whether you are an older adult. Check all that apply (choice=Older Adult)"
label(data$pers_w_dis_other)="If you would like to enter your specific diagnosis you may do so here."
label(data$time_living_disability)="What is your approximate length of time living with a disability (in years)?"
label(data$req_whchar_transpo)="Do you require wheelchair accessible transportation?"
label(data$transpo_modes___1)="What are your current modes of transportation? Check all that apply. (Leisure, School, or Work) (choice=Licensed Driver or Permit holder of a Personally Owned or Leased Vehicle)"
label(data$transpo_modes___2)="What are your current modes of transportation? Check all that apply. (Leisure, School, or Work) (choice=Passenger of a Personally Owned or Leased Vehicle)"
label(data$transpo_modes___3)="What are your current modes of transportation? Check all that apply. (Leisure, School, or Work) (choice=Ground Public Transportation (e.g., paratransit, fixed route bus, train, subway, etc.))"
label(data$transpo_modes___4)="What are your current modes of transportation? Check all that apply. (Leisure, School, or Work) (choice=Ground Private Transportation (e.g., Uber, Lyft, Taxi))"
label(data$transpo_modes___5)="What are your current modes of transportation? Check all that apply. (Leisure, School, or Work) (choice=Air travel (e.g., planes, helicopters))"
label(data$transpo_modes___6)="What are your current modes of transportation? Check all that apply. (Leisure, School, or Work) (choice=Water travel (e.g., boat, ferry, water taxi))"
label(data$transpo_modes___7)="What are your current modes of transportation? Check all that apply. (Leisure, School, or Work) (choice=Others (Please specify))"
label(data$other_transpo_mode)="Please describe your Other mode of transportation."
label(data$av_systems___1)="If Autonomous Vehicles (AV) and Autonomous Transportation Systems (ATS) were available, please indicate the following types of vehicles you would be willing to use (check all that apply). (choice=Full-size buses)"
label(data$av_systems___2)="If Autonomous Vehicles (AV) and Autonomous Transportation Systems (ATS) were available, please indicate the following types of vehicles you would be willing to use (check all that apply). (choice=Mini-buses or multi-passenger van ride-share)"
label(data$av_systems___3)="If Autonomous Vehicles (AV) and Autonomous Transportation Systems (ATS) were available, please indicate the following types of vehicles you would be willing to use (check all that apply). (choice=Van or mini-vans)"
label(data$av_systems___4)="If Autonomous Vehicles (AV) and Autonomous Transportation Systems (ATS) were available, please indicate the following types of vehicles you would be willing to use (check all that apply). (choice=Cars)"
label(data$av_systems___5)="If Autonomous Vehicles (AV) and Autonomous Transportation Systems (ATS) were available, please indicate the following types of vehicles you would be willing to use (check all that apply). (choice=Light rail or train air taxi (flying vehicles or drones))"
label(data$av_systems___6)="If Autonomous Vehicles (AV) and Autonomous Transportation Systems (ATS) were available, please indicate the following types of vehicles you would be willing to use (check all that apply). (choice=Other please, list:)"
label(data$other_av_systems)="Other vehicles you would be willing to use, please, list"
label(data$arrg_ride_tech___1)="Please indicate which of the following technologies you would be able to use to arrange a ride in an AV or ATS (check all that apply): (choice=Smart Phone)"
label(data$arrg_ride_tech___2)="Please indicate which of the following technologies you would be able to use to arrange a ride in an AV or ATS (check all that apply): (choice=Landline phone)"
label(data$arrg_ride_tech___3)="Please indicate which of the following technologies you would be able to use to arrange a ride in an AV or ATS (check all that apply): (choice=Cellular phone that is not a smartphone (flip phone))"
label(data$arrg_ride_tech___4)="Please indicate which of the following technologies you would be able to use to arrange a ride in an AV or ATS (check all that apply): (choice=Tablet)"
label(data$arrg_ride_tech___5)="Please indicate which of the following technologies you would be able to use to arrange a ride in an AV or ATS (check all that apply): (choice=Laptop or desktop computer)"
label(data$arrg_ride_tech___7)="Please indicate which of the following technologies you would be able to use to arrange a ride in an AV or ATS (check all that apply): (choice=Teletypewriter (TTY))"
label(data$arrg_ride_tech___8)="Please indicate which of the following technologies you would be able to use to arrange a ride in an AV or ATS (check all that apply): (choice=Other please, list:)"
label(data$other_arrg_ride_tech)="Other arrange a ride technology, please, list"
label(data$meth_arrg_ride___1)="Please indicate which of the following methods you would be willing to use to arrange a ride in an AV or ATS (check all that apply): (choice=Mobile smartphone application (app))"
label(data$meth_arrg_ride___2)="Please indicate which of the following methods you would be willing to use to arrange a ride in an AV or ATS (check all that apply): (choice=Website)"
label(data$meth_arrg_ride___3)="Please indicate which of the following methods you would be willing to use to arrange a ride in an AV or ATS (check all that apply): (choice=Text message)"
label(data$meth_arrg_ride___4)="Please indicate which of the following methods you would be willing to use to arrange a ride in an AV or ATS (check all that apply): (choice=Calling a toll-free number and speaking to a live person)"
label(data$meth_arrg_ride___5)="Please indicate which of the following methods you would be willing to use to arrange a ride in an AV or ATS (check all that apply): (choice=Calling a toll-free number and using an automated system)"
label(data$meth_arrg_ride___6)="Please indicate which of the following methods you would be willing to use to arrange a ride in an AV or ATS (check all that apply): (choice=In-person at a kiosk or transportation center)"
label(data$meth_arrg_ride___7)="Please indicate which of the following methods you would be willing to use to arrange a ride in an AV or ATS (check all that apply): (choice=Other method  please list....)"
label(data$other_method_arrg)="Other Method, please list"
label(data$activities_access___1)="Please indicate which activities you would use AV or ATS to access (check all that apply)?  (choice=Medical appointments)"
label(data$activities_access___2)="Please indicate which activities you would use AV or ATS to access (check all that apply)?  (choice=Self-care (e.g., haircuts, nails, massage))"
label(data$activities_access___3)="Please indicate which activities you would use AV or ATS to access (check all that apply)?  (choice=Work/school)"
label(data$activities_access___4)="Please indicate which activities you would use AV or ATS to access (check all that apply)?  (choice=Shopping)"
label(data$activities_access___5)="Please indicate which activities you would use AV or ATS to access (check all that apply)?  (choice=Visiting family/friends)"
label(data$activities_access___6)="Please indicate which activities you would use AV or ATS to access (check all that apply)?  (choice=Leisure or entertainment)"
label(data$activities_access___7)="Please indicate which activities you would use AV or ATS to access (check all that apply)?  (choice=Other please, list:)"
label(data$other_act_access)="Other, activities you would you use AV or ATS to access, please, list:"
label(data$services_use___1)="Please indicate what kinds of services you would use AV and ATS for (check all that apply)? (choice=Personal transportation)"
label(data$services_use___2)="Please indicate what kinds of services you would use AV and ATS for (check all that apply)? (choice=Professional transportation (e.g., work or school))"
label(data$services_use___3)="Please indicate what kinds of services you would use AV and ATS for (check all that apply)? (choice=Family transportation (e.g., to transport children, other family member))"
label(data$services_use___4)="Please indicate what kinds of services you would use AV and ATS for (check all that apply)? (choice=Package delivery)"
label(data$services_use___5)="Please indicate what kinds of services you would use AV and ATS for (check all that apply)? (choice=Groceries or prepared foods (e.g., Uber Eats, Grubhub, or Doordash))"
label(data$services_use___6)="Please indicate what kinds of services you would use AV and ATS for (check all that apply)? (choice=Other please, list:)"
label(data$length_time_max)="What is the maximum length of time you would find acceptable to book a ride with an AV or ATS? (Select one answer) "
label(data$other_services_use)="Other, services you would you use AV or ATS for, please, list:"
label(data$fixed_rte_opt___1)="If AV and ATS were available for fixed routes (fixed schedule) similar to public bus schedules, please indicate the types of options you would use. (check all that apply) (choice=Start Point-to-End point with multiple stops)"
label(data$fixed_rte_opt___2)="If AV and ATS were available for fixed routes (fixed schedule) similar to public bus schedules, please indicate the types of options you would use. (check all that apply) (choice=Start Point-to-End point without any stops)"
label(data$fixed_rte_opt___3)="If AV and ATS were available for fixed routes (fixed schedule) similar to public bus schedules, please indicate the types of options you would use. (check all that apply) (choice=Start Point-to-End point always the same familiar route)"
label(data$fixed_rte_opt___4)="If AV and ATS were available for fixed routes (fixed schedule) similar to public bus schedules, please indicate the types of options you would use. (check all that apply) (choice=Start Point-to-End point with variable routes)"
label(data$fixed_rte_opt___5)="If AV and ATS were available for fixed routes (fixed schedule) similar to public bus schedules, please indicate the types of options you would use. (check all that apply) (choice=Other(s), please, list.)"
label(data$other_rte_opt)="Other(s), route options you would use, please list:"
label(data$custom_rtes___1)="If AV and ATS were available for custom routes (on-demand/not on a fixed schedule, customized pick-up and drop-off points), please indicate the types of options you would use (check all that apply). (choice=Start Point-to-End point without any stops)"
label(data$custom_rtes___2)="If AV and ATS were available for custom routes (on-demand/not on a fixed schedule, customized pick-up and drop-off points), please indicate the types of options you would use (check all that apply). (choice=Start Point-to-End point with multiple stops)"
label(data$custom_rtes___3)="If AV and ATS were available for custom routes (on-demand/not on a fixed schedule, customized pick-up and drop-off points), please indicate the types of options you would use (check all that apply). (choice=Start Point-to-End point always the same familiar route)"
label(data$custom_rtes___4)="If AV and ATS were available for custom routes (on-demand/not on a fixed schedule, customized pick-up and drop-off points), please indicate the types of options you would use (check all that apply). (choice=Start Point-to-End point with variable routes)"
label(data$custom_rtes___5)="If AV and ATS were available for custom routes (on-demand/not on a fixed schedule, customized pick-up and drop-off points), please indicate the types of options you would use (check all that apply). (choice=Other(s), please, list)"
label(data$other_custom_rte)="Other(s), custom routes you would use, please list:"
label(data$access_features___1)="Please indicate which of the following accessibility features of an AV and/or ATS you would require (select all that apply). (choice=Communication with AV and/or ATS (e.g., audio and/or visual aids, vehicle communicates where it is, ability to request human assistance or help, in-vehicle status indicators in different formats: audio, visual, or text))"
label(data$access_features___2)="Please indicate which of the following accessibility features of an AV and/or ATS you would require (select all that apply). (choice=A user profile for the type of AV (e.g., needed to get the right type of vehicle and the  adjustments or features required for me to ride in it))"
label(data$access_features___3)="Please indicate which of the following accessibility features of an AV and/or ATS you would require (select all that apply). (choice=Assistance with personal items (e.g., packages, bags, etc.))"
label(data$access_features___4)="Please indicate which of the following accessibility features of an AV and/or ATS you would require (select all that apply). (choice=Storage capacity (e.g., for assistive devices, equipment, packages, bags, etc.))"
label(data$access_features___5)="Please indicate which of the following accessibility features of an AV and/or ATS you would require (select all that apply). (choice=Accommodation for transportation partners and/or service dog)"
label(data$access_features___6)="Please indicate which of the following accessibility features of an AV and/or ATS you would require (select all that apply). (choice=Grab bars and hand holds)"
label(data$access_features___7)="Please indicate which of the following accessibility features of an AV and/or ATS you would require (select all that apply). (choice=Ease of entry/exit (e.g., Seat that can be repositioned to ease entry/exit))"
label(data$access_features___8)="Please indicate which of the following accessibility features of an AV and/or ATS you would require (select all that apply). (choice=Wheelchair accessibility (e.g., physical access getting into/out of the vehicle, moving around within the vehicle, automated wheelchair tie-downs and occupant restraints))"
label(data$access_features___9)="Please indicate which of the following accessibility features of an AV and/or ATS you would require (select all that apply). (choice=Other(s), please, list.)"
label(data$other_access_features)="Other(s) accessibility features required, please list:"
label(data$max_pay)="If AV and ATS were available what is the maximum amount you would you be willing to pay for a direct to destination (no passenger stops) local trip (< 10 miles)?"
label(data$connect_transpo)="How important would it be for a public AV or ATS to be connected to other forms of transportation?"
label(data$other_forms_transpo___1)="What other forms of transportation would you like to be able to access using AV and ATS? (check all that apply) (choice=Airlines (e.g., Airport))"
label(data$other_forms_transpo___2)="What other forms of transportation would you like to be able to access using AV and ATS? (check all that apply) (choice=Railway - Train Station)"
label(data$other_forms_transpo___3)="What other forms of transportation would you like to be able to access using AV and ATS? (check all that apply) (choice=Light Rail (e.g., local rail transit))"
label(data$other_forms_transpo___4)="What other forms of transportation would you like to be able to access using AV and ATS? (check all that apply) (choice=Subway or Metro)"
label(data$other_forms_transpo___5)="What other forms of transportation would you like to be able to access using AV and ATS? (check all that apply) (choice=Long-haul bus terminal (e.g., Greyhound))"
label(data$other_forms_transpo___6)="What other forms of transportation would you like to be able to access using AV and ATS? (check all that apply) (choice=Local Fixed-Route Bus System)"
label(data$other_forms_transpo___7)="What other forms of transportation would you like to be able to access using AV and ATS? (check all that apply) (choice=Other(s), please, list.)"
label(data$other_forms_transpo___8)="What other forms of transportation would you like to be able to access using AV and ATS? (check all that apply) (choice=None)"
label(data$other_transpo_access)="Other(s) forms of transportation, please list."
label(data$ave_one_way_trip)="How far do you think your average one-way trip would be with an AV or ATS? (Check One)"
label(data$max_trip_distance)="How far would you like to be able to travel (maximum trip distance) using AV and ATS? (Check One)"
label(data$av_services_using___1)="Which of the following AV services can you see yourself using? (select all that apply) (choice=Own, rent, or lease one of your own)"
label(data$av_services_using___2)="Which of the following AV services can you see yourself using? (select all that apply) (choice=Pay a monthly subscription fee)"
label(data$av_services_using___3)="Which of the following AV services can you see yourself using? (select all that apply) (choice=Buy a multi-trip pass)"
label(data$av_services_using___4)="Which of the following AV services can you see yourself using? (select all that apply) (choice=Buy a fixed set of travel miles)"
label(data$av_services_using___5)="Which of the following AV services can you see yourself using? (select all that apply) (choice=Pay as needed)"
label(data$av_services_using___6)="Which of the following AV services can you see yourself using? (select all that apply) (choice=Paid by a third party (e.g., paid by the government, school, employer))"
label(data$av_services_using___7)="Which of the following AV services can you see yourself using? (select all that apply) (choice=Covered as a health insurance benefit)"
label(data$comfortable_av)="How comfortable would you feel in a AV or ATS if there wasnt a human driver in the vehicle?"
label(data$pers_vehicle_asst_feat___1)="If you had a personal vehicle which of the following automated or automated driver assist features would you be interested in having in the vehicle? (Check all that apply) (choice=Incapacitated driver detection and response.)"
label(data$pers_vehicle_asst_feat___2)="If you had a personal vehicle which of the following automated or automated driver assist features would you be interested in having in the vehicle? (Check all that apply) (choice=Distracted driver detection and response.)"
label(data$pers_vehicle_asst_feat___3)="If you had a personal vehicle which of the following automated or automated driver assist features would you be interested in having in the vehicle? (Check all that apply) (choice=Automated route navigation.)"
label(data$pers_vehicle_asst_feat___4)="If you had a personal vehicle which of the following automated or automated driver assist features would you be interested in having in the vehicle? (Check all that apply) (choice=Accessible entrance localization (e.g., AV can identify an accessible location to enter/exit the vehicle).)"
label(data$pers_vehicle_asst_feat___5)="If you had a personal vehicle which of the following automated or automated driver assist features would you be interested in having in the vehicle? (Check all that apply) (choice=Self-parking (requires no interaction with driver))"
label(data$pers_vehicle_asst_feat___6)="If you had a personal vehicle which of the following automated or automated driver assist features would you be interested in having in the vehicle? (Check all that apply) (choice=Parking assist (works with driver or initiated by driver, e.g., parallel parking))"
label(data$pers_vehicle_asst_feat___7)="If you had a personal vehicle which of the following automated or automated driver assist features would you be interested in having in the vehicle? (Check all that apply) (choice=Lane keep assistance (AV keeps vehicle in the center of the lane).)"
label(data$pers_vehicle_asst_feat___8)="If you had a personal vehicle which of the following automated or automated driver assist features would you be interested in having in the vehicle? (Check all that apply) (choice=Adaptive cruise control.)"
label(data$pers_vehicle_asst_feat___9)="If you had a personal vehicle which of the following automated or automated driver assist features would you be interested in having in the vehicle? (Check all that apply) (choice=Collision avoidance of stationary objects.)"
label(data$pers_vehicle_asst_feat___10)="If you had a personal vehicle which of the following automated or automated driver assist features would you be interested in having in the vehicle? (Check all that apply) (choice=Collision avoidance of moving objects.)"
label(data$pers_vehicle_asst_feat___11)="If you had a personal vehicle which of the following automated or automated driver assist features would you be interested in having in the vehicle? (Check all that apply) (choice=Road sign recognition and communication.)"
label(data$pers_vehicle_asst_feat___12)="If you had a personal vehicle which of the following automated or automated driver assist features would you be interested in having in the vehicle? (Check all that apply) (choice=Self-driving mode (e.g., driverless acceleration, control and braking).)"
label(data$pers_vehicle_asst_feat___13)="If you had a personal vehicle which of the following automated or automated driver assist features would you be interested in having in the vehicle? (Check all that apply) (choice=Other(s), please, list)"
label(data$other_auto_assist_feat)="Other(s), automated or automated driver assist features, please list:"
label(data$pers_av_value___1)="Where would a personally owned AV be most valuable to you (Check all that apply). (choice=Suburban roads)"
label(data$pers_av_value___2)="Where would a personally owned AV be most valuable to you (Check all that apply). (choice=Urban roads)"
label(data$pers_av_value___3)="Where would a personally owned AV be most valuable to you (Check all that apply). (choice=Rural roads)"
label(data$pers_av_value___4)="Where would a personally owned AV be most valuable to you (Check all that apply). (choice=Highways)"
label(data$pers_av_value___5)="Where would a personally owned AV be most valuable to you (Check all that apply). (choice=Interstate Highways)"
label(data$pers_av_value___6)="Where would a personally owned AV be most valuable to you (Check all that apply). (choice=Other(s), please, list.)"
label(data$other_pers_av_value)="Other(s), where a personally owned AV is most valuable to you, please list:"
label(data$rank_pref_a)="Retrofit your current vehicle to be autonomous:"
label(data$rank_pref_b)="Buy, rent, or lease an AV that is an electric vehicle:"
label(data$rank_pref_c)="Buy, rent or lease an AV that is an internal combustion engine vehicle (e.g., uses gasoline/diesel):"
label(data$attach_points)="If you use a wheelchair or scooter, would it be acceptable to you to require attachment points on your mobility device to help automate the securement system in the vehicle?"
label(data$price_range)="What is the purchase price range that you would expect a personal AV to cost?  (Check One)"
label(data$cost_range_modify)="What do you expect the typical cost range will be to modify an AV to be a wheelchair accessible vehicle? (Check One)"
label(data$impt_access_feat_com)="Communication with AV and/or ATS (e.g., audio and/or visual aids, vehicle communicates where it is, ability to request human assistance or help, in-vehicle status indicators in different formats: audio, visual, or text)"
label(data$impt_access_feat_profile)="A user profile for the type of AV (e.g., needed to get the right type of vehicle and the  adjustments or features required for me to ride in it)"
label(data$impt_access_feat_pers_item)="Assistance with personal items (e.g., packages, bags, etc.)"
label(data$impt_access_feat_store)="Storage capacity (e.g., for assistive devices, equipment, packages, bags, etc.)"
label(data$impt_access_feat_accom)="Accommodation for transportation partners and/or service dog"
label(data$impt_access_feat_grab)="Grab bars and hand holds"
label(data$impt_access_feat_ease)="Ease of entry/exit (e.g., Seat that can be repositioned to ease entry/exit)"
label(data$impt_access_feat_wc_access)="Wheelchair accessibility (e.g., physical access getting into/out of the vehicle, moving around within the vehicle, automated wheelchair tie-downs and occupant restraints)"
label(data$incap_dvr_detect)="Incapacitated driver detection and response."
label(data$distract_dvr_det)="Distracted driver detection and response."
label(data$auto_route_nav)="Automated route navigation."
label(data$access_entrance_local)="Accessible entrance localization (e.g., AV can identify an accessible location to enter/exit the vehicle)."
label(data$self_park)="Self-parking (requires no interaction with driver)."
label(data$park_assist)="Parking assist (works with driver or initiated by driver, e.g., parallel parking)."
label(data$lane_keep)="Lane keeping assistance (AV keeps vehicle in the center of the lane)."
label(data$adapt_cruise_crtl)="Adaptive cruise control."
label(data$coll_avoid_station)="Collision avoidance of stationary objects."
label(data$coll_avoid_moving)="Collision avoidance of moving objects."
label(data$road_sign_rec)="Road sign recognition and communication"
label(data$self_drive_mode)="Self-driving mode (e.g., driverless acceleration, control and braking)."
label(data$ptnr_caregiv___1)="What is your relationship to the individual(s) with disability you provide care to? (check all that apply) (choice=Spouse or Partner)"
label(data$ptnr_caregiv___2)="What is your relationship to the individual(s) with disability you provide care to? (check all that apply) (choice=Parent)"
label(data$ptnr_caregiv___3)="What is your relationship to the individual(s) with disability you provide care to? (check all that apply) (choice=Child)"
label(data$ptnr_caregiv___4)="What is your relationship to the individual(s) with disability you provide care to? (check all that apply) (choice=Sibling)"
label(data$ptnr_caregiv___5)="What is your relationship to the individual(s) with disability you provide care to? (check all that apply) (choice=Friend)"
label(data$ptnr_caregiv___6)="What is your relationship to the individual(s) with disability you provide care to? (check all that apply) (choice=Paid Caregiver)"
label(data$ptnr_caregiv___7)="What is your relationship to the individual(s) with disability you provide care to? (check all that apply) (choice=Unpaid caregiver)"
label(data$ptnr_caregiv___8)="What is your relationship to the individual(s) with disability you provide care to? (check all that apply) (choice=Other (please specify))"
label(data$ptnr_caregiv_relationship)="Other  - Type of Relationship. Please explain:"
label(data$caregive_years___1)="How many years have you been providing care to person(s) with a disability? (choice=Less than 1)"
label(data$caregive_years___2)="How many years have you been providing care to person(s) with a disability? (choice=1-5)"
label(data$caregive_years___3)="How many years have you been providing care to person(s) with a disability? (choice=6-10)"
label(data$caregive_years___4)="How many years have you been providing care to person(s) with a disability? (choice=11-15)"
label(data$caregive_years___5)="How many years have you been providing care to person(s) with a disability? (choice=16-20)"
label(data$caregive_years___6)="How many years have you been providing care to person(s) with a disability? (choice=21-25)"
label(data$caregive_years___7)="How many years have you been providing care to person(s) with a disability? (choice=25+)"
label(data$caregive_transpo_mode___1)="What modes of transportation do you currently use when traveling with the person(s) with disability that you provide care to? Check all that apply. (choice=Licensed Driver or Permit holder of a Personally Owned or Leased Vehicle)"
label(data$caregive_transpo_mode___2)="What modes of transportation do you currently use when traveling with the person(s) with disability that you provide care to? Check all that apply. (choice=Passenger of a Personally Owned or Leased Vehicle)"
label(data$caregive_transpo_mode___3)="What modes of transportation do you currently use when traveling with the person(s) with disability that you provide care to? Check all that apply. (choice=Ground Public Transportation (e.g., paratransit, fixed route bus, train, subway, etc.))"
label(data$caregive_transpo_mode___4)="What modes of transportation do you currently use when traveling with the person(s) with disability that you provide care to? Check all that apply. (choice=Ground Private Transportation (e.g., Uber, Lyft, Taxi))"
label(data$caregive_transpo_mode___5)="What modes of transportation do you currently use when traveling with the person(s) with disability that you provide care to? Check all that apply. (choice=Air travel (e.g., planes, helicopters))"
label(data$caregive_transpo_mode___6)="What modes of transportation do you currently use when traveling with the person(s) with disability that you provide care to? Check all that apply. (choice=Water travel (e.g., boat, ferry, water taxi))"
label(data$caregive_transpo_mode___7)="What modes of transportation do you currently use when traveling with the person(s) with disability that you provide care to? Check all that apply. (choice=Others (Please specify))"
label(data$other_caregive_transpo_mode)="Other modes of transportation used. Please explain:"
label(data$ethnicity)="What is your ethnicity?"
label(data$race)="What is your race?"
label(data$race_other)="Please specify your race."
label(data$gender)="To which gender identity do you most identify?"
label(data$self_describe)="How do you describe your gender?"
label(data$age)="What is your age?"
label(data$marit_stat)="Marital Status"
label(data$hous_sit)="What is your housing situation?"
label(data$education)="What is the highest level of education you have completed?"
label(data$edu_othr_spec)="Please specify "
label(data$state)="Where do you live? (State/Territory)"
label(data$lived_other)="Please enter where you live. "
label(data$zip_cd)="What is your zip code?"
label(data$community)="What type of community setting do you live in?"
label(data$employment)="What is your current employment status? "
label(data$occupation)="What is your your occupation. "
label(data$work_frm_home)="Do you work from home?  "
label(data$income)="What is your household income?"
label(data$transpo_work)="What is your primary mode of transportation for work?"
label(data$pri_othr_transpo_mode)="Other modes of transportation for work? (please describe)"
label(data$veteran)="Do you or have you ever served in the US Armed Forces?"
label(data$last)="You may provide your last name. (not required)"
label(data$first)="You may provide your first name. (not required)"
label(data$birthday)="You may provide your date of birth. (not required)"
label(data$email)="Following completion of this questionnaire, you stand a chance to win a $50 gift card. Please enter an email address or telephone number in the text box if you would like to participate in the drawing. If not leave text box blank."
label(data$concerns)="If you have any brief thoughts or concerns you would like to share concerning this ASPIRE Voice of the Consumer survey please feel free to enter them here. "
label(data$working_automated_vehicle_services_for_people_with_complete)="Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
data$consent_y_n.factor = factor(data$consent_y_n,levels=c("1","0"))
data$dpct.factor = factor(data$dpct,levels=c("1","2","3"))
data$person_w_disabilty___1.factor = factor(data$person_w_disabilty___1,levels=c("0","1"))
data$person_w_disabilty___2.factor = factor(data$person_w_disabilty___2,levels=c("0","1"))
data$person_w_disabilty___3.factor = factor(data$person_w_disabilty___3,levels=c("0","1"))
data$person_w_disabilty___4.factor = factor(data$person_w_disabilty___4,levels=c("0","1"))
data$person_w_disabilty___5.factor = factor(data$person_w_disabilty___5,levels=c("0","1"))
data$person_w_disabilty___6.factor = factor(data$person_w_disabilty___6,levels=c("0","1"))
data$person_w_disabilty___7.factor = factor(data$person_w_disabilty___7,levels=c("0","1"))
data$time_living_disability.factor = factor(data$time_living_disability,levels=c("1","2","3","4","5","6","7"))
data$req_whchar_transpo.factor = factor(data$req_whchar_transpo,levels=c("1","0"))
data$transpo_modes___1.factor = factor(data$transpo_modes___1,levels=c("0","1"))
data$transpo_modes___2.factor = factor(data$transpo_modes___2,levels=c("0","1"))
data$transpo_modes___3.factor = factor(data$transpo_modes___3,levels=c("0","1"))
data$transpo_modes___4.factor = factor(data$transpo_modes___4,levels=c("0","1"))
data$transpo_modes___5.factor = factor(data$transpo_modes___5,levels=c("0","1"))
data$transpo_modes___6.factor = factor(data$transpo_modes___6,levels=c("0","1"))
data$transpo_modes___7.factor = factor(data$transpo_modes___7,levels=c("0","1"))
data$av_systems___1.factor = factor(data$av_systems___1,levels=c("0","1"))
data$av_systems___2.factor = factor(data$av_systems___2,levels=c("0","1"))
data$av_systems___3.factor = factor(data$av_systems___3,levels=c("0","1"))
data$av_systems___4.factor = factor(data$av_systems___4,levels=c("0","1"))
data$av_systems___5.factor = factor(data$av_systems___5,levels=c("0","1"))
data$av_systems___6.factor = factor(data$av_systems___6,levels=c("0","1"))
data$arrg_ride_tech___1.factor = factor(data$arrg_ride_tech___1,levels=c("0","1"))
data$arrg_ride_tech___2.factor = factor(data$arrg_ride_tech___2,levels=c("0","1"))
data$arrg_ride_tech___3.factor = factor(data$arrg_ride_tech___3,levels=c("0","1"))
data$arrg_ride_tech___4.factor = factor(data$arrg_ride_tech___4,levels=c("0","1"))
data$arrg_ride_tech___5.factor = factor(data$arrg_ride_tech___5,levels=c("0","1"))
data$arrg_ride_tech___7.factor = factor(data$arrg_ride_tech___7,levels=c("0","1"))
data$arrg_ride_tech___8.factor = factor(data$arrg_ride_tech___8,levels=c("0","1"))
data$meth_arrg_ride___1.factor = factor(data$meth_arrg_ride___1,levels=c("0","1"))
data$meth_arrg_ride___2.factor = factor(data$meth_arrg_ride___2,levels=c("0","1"))
data$meth_arrg_ride___3.factor = factor(data$meth_arrg_ride___3,levels=c("0","1"))
data$meth_arrg_ride___4.factor = factor(data$meth_arrg_ride___4,levels=c("0","1"))
data$meth_arrg_ride___5.factor = factor(data$meth_arrg_ride___5,levels=c("0","1"))
data$meth_arrg_ride___6.factor = factor(data$meth_arrg_ride___6,levels=c("0","1"))
data$meth_arrg_ride___7.factor = factor(data$meth_arrg_ride___7,levels=c("0","1"))
data$activities_access___1.factor = factor(data$activities_access___1,levels=c("0","1"))
data$activities_access___2.factor = factor(data$activities_access___2,levels=c("0","1"))
data$activities_access___3.factor = factor(data$activities_access___3,levels=c("0","1"))
data$activities_access___4.factor = factor(data$activities_access___4,levels=c("0","1"))
data$activities_access___5.factor = factor(data$activities_access___5,levels=c("0","1"))
data$activities_access___6.factor = factor(data$activities_access___6,levels=c("0","1"))
data$activities_access___7.factor = factor(data$activities_access___7,levels=c("0","1"))
data$services_use___1.factor = factor(data$services_use___1,levels=c("0","1"))
data$services_use___2.factor = factor(data$services_use___2,levels=c("0","1"))
data$services_use___3.factor = factor(data$services_use___3,levels=c("0","1"))
data$services_use___4.factor = factor(data$services_use___4,levels=c("0","1"))
data$services_use___5.factor = factor(data$services_use___5,levels=c("0","1"))
data$services_use___6.factor = factor(data$services_use___6,levels=c("0","1"))
data$length_time_max.factor = factor(data$length_time_max,levels=c("1","2","3","4"))
data$fixed_rte_opt___1.factor = factor(data$fixed_rte_opt___1,levels=c("0","1"))
data$fixed_rte_opt___2.factor = factor(data$fixed_rte_opt___2,levels=c("0","1"))
data$fixed_rte_opt___3.factor = factor(data$fixed_rte_opt___3,levels=c("0","1"))
data$fixed_rte_opt___4.factor = factor(data$fixed_rte_opt___4,levels=c("0","1"))
data$fixed_rte_opt___5.factor = factor(data$fixed_rte_opt___5,levels=c("0","1"))
data$custom_rtes___1.factor = factor(data$custom_rtes___1,levels=c("0","1"))
data$custom_rtes___2.factor = factor(data$custom_rtes___2,levels=c("0","1"))
data$custom_rtes___3.factor = factor(data$custom_rtes___3,levels=c("0","1"))
data$custom_rtes___4.factor = factor(data$custom_rtes___4,levels=c("0","1"))
data$custom_rtes___5.factor = factor(data$custom_rtes___5,levels=c("0","1"))
data$access_features___1.factor = factor(data$access_features___1,levels=c("0","1"))
data$access_features___2.factor = factor(data$access_features___2,levels=c("0","1"))
data$access_features___3.factor = factor(data$access_features___3,levels=c("0","1"))
data$access_features___4.factor = factor(data$access_features___4,levels=c("0","1"))
data$access_features___5.factor = factor(data$access_features___5,levels=c("0","1"))
data$access_features___6.factor = factor(data$access_features___6,levels=c("0","1"))
data$access_features___7.factor = factor(data$access_features___7,levels=c("0","1"))
data$access_features___8.factor = factor(data$access_features___8,levels=c("0","1"))
data$access_features___9.factor = factor(data$access_features___9,levels=c("0","1"))
data$max_pay.factor = factor(data$max_pay,levels=c("1","2","3","4","5"))
data$connect_transpo.factor = factor(data$connect_transpo,levels=c("1","2","3","4","5"))
data$other_forms_transpo___1.factor = factor(data$other_forms_transpo___1,levels=c("0","1"))
data$other_forms_transpo___2.factor = factor(data$other_forms_transpo___2,levels=c("0","1"))
data$other_forms_transpo___3.factor = factor(data$other_forms_transpo___3,levels=c("0","1"))
data$other_forms_transpo___4.factor = factor(data$other_forms_transpo___4,levels=c("0","1"))
data$other_forms_transpo___5.factor = factor(data$other_forms_transpo___5,levels=c("0","1"))
data$other_forms_transpo___6.factor = factor(data$other_forms_transpo___6,levels=c("0","1"))
data$other_forms_transpo___7.factor = factor(data$other_forms_transpo___7,levels=c("0","1"))
data$other_forms_transpo___8.factor = factor(data$other_forms_transpo___8,levels=c("0","1"))
data$ave_one_way_trip.factor = factor(data$ave_one_way_trip,levels=c("1","2","3","4","5","6"))
data$max_trip_distance.factor = factor(data$max_trip_distance,levels=c("1","2","3","4","5","6"))
data$av_services_using___1.factor = factor(data$av_services_using___1,levels=c("0","1"))
data$av_services_using___2.factor = factor(data$av_services_using___2,levels=c("0","1"))
data$av_services_using___3.factor = factor(data$av_services_using___3,levels=c("0","1"))
data$av_services_using___4.factor = factor(data$av_services_using___4,levels=c("0","1"))
data$av_services_using___5.factor = factor(data$av_services_using___5,levels=c("0","1"))
data$av_services_using___6.factor = factor(data$av_services_using___6,levels=c("0","1"))
data$av_services_using___7.factor = factor(data$av_services_using___7,levels=c("0","1"))
data$comfortable_av.factor = factor(data$comfortable_av,levels=c("1","2","3"))
data$pers_vehicle_asst_feat___1.factor = factor(data$pers_vehicle_asst_feat___1,levels=c("0","1"))
data$pers_vehicle_asst_feat___2.factor = factor(data$pers_vehicle_asst_feat___2,levels=c("0","1"))
data$pers_vehicle_asst_feat___3.factor = factor(data$pers_vehicle_asst_feat___3,levels=c("0","1"))
data$pers_vehicle_asst_feat___4.factor = factor(data$pers_vehicle_asst_feat___4,levels=c("0","1"))
data$pers_vehicle_asst_feat___5.factor = factor(data$pers_vehicle_asst_feat___5,levels=c("0","1"))
data$pers_vehicle_asst_feat___6.factor = factor(data$pers_vehicle_asst_feat___6,levels=c("0","1"))
data$pers_vehicle_asst_feat___7.factor = factor(data$pers_vehicle_asst_feat___7,levels=c("0","1"))
data$pers_vehicle_asst_feat___8.factor = factor(data$pers_vehicle_asst_feat___8,levels=c("0","1"))
data$pers_vehicle_asst_feat___9.factor = factor(data$pers_vehicle_asst_feat___9,levels=c("0","1"))
data$pers_vehicle_asst_feat___10.factor = factor(data$pers_vehicle_asst_feat___10,levels=c("0","1"))
data$pers_vehicle_asst_feat___11.factor = factor(data$pers_vehicle_asst_feat___11,levels=c("0","1"))
data$pers_vehicle_asst_feat___12.factor = factor(data$pers_vehicle_asst_feat___12,levels=c("0","1"))
data$pers_vehicle_asst_feat___13.factor = factor(data$pers_vehicle_asst_feat___13,levels=c("0","1"))
data$pers_av_value___1.factor = factor(data$pers_av_value___1,levels=c("0","1"))
data$pers_av_value___2.factor = factor(data$pers_av_value___2,levels=c("0","1"))
data$pers_av_value___3.factor = factor(data$pers_av_value___3,levels=c("0","1"))
data$pers_av_value___4.factor = factor(data$pers_av_value___4,levels=c("0","1"))
data$pers_av_value___5.factor = factor(data$pers_av_value___5,levels=c("0","1"))
data$pers_av_value___6.factor = factor(data$pers_av_value___6,levels=c("0","1"))
data$rank_pref_a.factor = factor(data$rank_pref_a,levels=c("1","2","3"))
data$rank_pref_b.factor = factor(data$rank_pref_b,levels=c("1","2","3"))
data$rank_pref_c.factor = factor(data$rank_pref_c,levels=c("1","2","3"))
data$attach_points.factor = factor(data$attach_points,levels=c("1","0"))
data$price_range.factor = factor(data$price_range,levels=c("1","2","3","4","5","6","7","8","9"))
data$cost_range_modify.factor = factor(data$cost_range_modify,levels=c("1","2","3","4","5","6","7","8","9"))
data$impt_access_feat_com.factor = factor(data$impt_access_feat_com,levels=c("1","2","3"))
data$impt_access_feat_profile.factor = factor(data$impt_access_feat_profile,levels=c("1","2","3"))
data$impt_access_feat_pers_item.factor = factor(data$impt_access_feat_pers_item,levels=c("1","2","3"))
data$impt_access_feat_store.factor = factor(data$impt_access_feat_store,levels=c("1","2","3"))
data$impt_access_feat_accom.factor = factor(data$impt_access_feat_accom,levels=c("1","2","3"))
data$impt_access_feat_grab.factor = factor(data$impt_access_feat_grab,levels=c("1","2","3"))
data$impt_access_feat_ease.factor = factor(data$impt_access_feat_ease,levels=c("1","2","3"))
data$impt_access_feat_wc_access.factor = factor(data$impt_access_feat_wc_access,levels=c("1","2","3"))
data$incap_dvr_detect.factor = factor(data$incap_dvr_detect,levels=c("1","2","3"))
data$distract_dvr_det.factor = factor(data$distract_dvr_det,levels=c("1","2","3"))
data$auto_route_nav.factor = factor(data$auto_route_nav,levels=c("1","2","3"))
data$access_entrance_local.factor = factor(data$access_entrance_local,levels=c("1","2","3"))
data$self_park.factor = factor(data$self_park,levels=c("1","2","3"))
data$park_assist.factor = factor(data$park_assist,levels=c("1","2","3"))
data$lane_keep.factor = factor(data$lane_keep,levels=c("1","2","3"))
data$adapt_cruise_crtl.factor = factor(data$adapt_cruise_crtl,levels=c("1","2","3"))
data$coll_avoid_station.factor = factor(data$coll_avoid_station,levels=c("1","2","3"))
data$coll_avoid_moving.factor = factor(data$coll_avoid_moving,levels=c("1","2","3"))
data$road_sign_rec.factor = factor(data$road_sign_rec,levels=c("1","2","3"))
data$self_drive_mode.factor = factor(data$self_drive_mode,levels=c("1","2","3"))
data$ptnr_caregiv___1.factor = factor(data$ptnr_caregiv___1,levels=c("0","1"))
data$ptnr_caregiv___2.factor = factor(data$ptnr_caregiv___2,levels=c("0","1"))
data$ptnr_caregiv___3.factor = factor(data$ptnr_caregiv___3,levels=c("0","1"))
data$ptnr_caregiv___4.factor = factor(data$ptnr_caregiv___4,levels=c("0","1"))
data$ptnr_caregiv___5.factor = factor(data$ptnr_caregiv___5,levels=c("0","1"))
data$ptnr_caregiv___6.factor = factor(data$ptnr_caregiv___6,levels=c("0","1"))
data$ptnr_caregiv___7.factor = factor(data$ptnr_caregiv___7,levels=c("0","1"))
data$ptnr_caregiv___8.factor = factor(data$ptnr_caregiv___8,levels=c("0","1"))
data$caregive_years___1.factor = factor(data$caregive_years___1,levels=c("0","1"))
data$caregive_years___2.factor = factor(data$caregive_years___2,levels=c("0","1"))
data$caregive_years___3.factor = factor(data$caregive_years___3,levels=c("0","1"))
data$caregive_years___4.factor = factor(data$caregive_years___4,levels=c("0","1"))
data$caregive_years___5.factor = factor(data$caregive_years___5,levels=c("0","1"))
data$caregive_years___6.factor = factor(data$caregive_years___6,levels=c("0","1"))
data$caregive_years___7.factor = factor(data$caregive_years___7,levels=c("0","1"))
data$caregive_transpo_mode___1.factor = factor(data$caregive_transpo_mode___1,levels=c("0","1"))
data$caregive_transpo_mode___2.factor = factor(data$caregive_transpo_mode___2,levels=c("0","1"))
data$caregive_transpo_mode___3.factor = factor(data$caregive_transpo_mode___3,levels=c("0","1"))
data$caregive_transpo_mode___4.factor = factor(data$caregive_transpo_mode___4,levels=c("0","1"))
data$caregive_transpo_mode___5.factor = factor(data$caregive_transpo_mode___5,levels=c("0","1"))
data$caregive_transpo_mode___6.factor = factor(data$caregive_transpo_mode___6,levels=c("0","1"))
data$caregive_transpo_mode___7.factor = factor(data$caregive_transpo_mode___7,levels=c("0","1"))
data$ethnicity.factor = factor(data$ethnicity,levels=c("1","2","3"))
data$race.factor = factor(data$race,levels=c("1","2","3","4","5","6","7","8"))
data$gender.factor = factor(data$gender,levels=c("1","2","3","4","5","6","7"))
data$age.factor = factor(data$age,levels=c("1","2","3","4","5","6","7","8"))
data$marit_stat.factor = factor(data$marit_stat,levels=c("1","2","3","4","5","6"))
data$hous_sit.factor = factor(data$hous_sit,levels=c("1","2","3","4","5"))
data$education.factor = factor(data$education,levels=c("1","2","3","4","5","6","7","8","9"))
data$state.factor = factor(data$state,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","58","52","53","54","55","56","57"))
data$community.factor = factor(data$community,levels=c("1","2","3"))
data$employment.factor = factor(data$employment,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$work_frm_home.factor = factor(data$work_frm_home,levels=c("1","2","3"))
data$income.factor = factor(data$income,levels=c("1","2","3","4","5","6","7","8"))
data$transpo_work.factor = factor(data$transpo_work,levels=c("1","2","3","4","5","6","7","8"))
data$veteran.factor = factor(data$veteran,levels=c("1","0"))
data$working_automated_vehicle_services_for_people_with_complete.factor = factor(data$working_automated_vehicle_services_for_people_with_complete,levels=c("0","1","2"))

levels(data$consent_y_n.factor)=c("Yes","No")
levels(data$dpct.factor)=c("Person with a disability","Partner/Caregiver of person(s) with a disability","Older Adult (65+)")
levels(data$person_w_disabilty___1.factor)=c("Unchecked","Checked")
levels(data$person_w_disabilty___2.factor)=c("Unchecked","Checked")
levels(data$person_w_disabilty___3.factor)=c("Unchecked","Checked")
levels(data$person_w_disabilty___4.factor)=c("Unchecked","Checked")
levels(data$person_w_disabilty___5.factor)=c("Unchecked","Checked")
levels(data$person_w_disabilty___6.factor)=c("Unchecked","Checked")
levels(data$person_w_disabilty___7.factor)=c("Unchecked","Checked")
levels(data$time_living_disability.factor)=c("Less than 1 year","1-5","6-10","11-15","16-20","21-25","25+")
levels(data$req_whchar_transpo.factor)=c("Yes","No")
levels(data$transpo_modes___1.factor)=c("Unchecked","Checked")
levels(data$transpo_modes___2.factor)=c("Unchecked","Checked")
levels(data$transpo_modes___3.factor)=c("Unchecked","Checked")
levels(data$transpo_modes___4.factor)=c("Unchecked","Checked")
levels(data$transpo_modes___5.factor)=c("Unchecked","Checked")
levels(data$transpo_modes___6.factor)=c("Unchecked","Checked")
levels(data$transpo_modes___7.factor)=c("Unchecked","Checked")
levels(data$av_systems___1.factor)=c("Unchecked","Checked")
levels(data$av_systems___2.factor)=c("Unchecked","Checked")
levels(data$av_systems___3.factor)=c("Unchecked","Checked")
levels(data$av_systems___4.factor)=c("Unchecked","Checked")
levels(data$av_systems___5.factor)=c("Unchecked","Checked")
levels(data$av_systems___6.factor)=c("Unchecked","Checked")
levels(data$arrg_ride_tech___1.factor)=c("Unchecked","Checked")
levels(data$arrg_ride_tech___2.factor)=c("Unchecked","Checked")
levels(data$arrg_ride_tech___3.factor)=c("Unchecked","Checked")
levels(data$arrg_ride_tech___4.factor)=c("Unchecked","Checked")
levels(data$arrg_ride_tech___5.factor)=c("Unchecked","Checked")
levels(data$arrg_ride_tech___7.factor)=c("Unchecked","Checked")
levels(data$arrg_ride_tech___8.factor)=c("Unchecked","Checked")
levels(data$meth_arrg_ride___1.factor)=c("Unchecked","Checked")
levels(data$meth_arrg_ride___2.factor)=c("Unchecked","Checked")
levels(data$meth_arrg_ride___3.factor)=c("Unchecked","Checked")
levels(data$meth_arrg_ride___4.factor)=c("Unchecked","Checked")
levels(data$meth_arrg_ride___5.factor)=c("Unchecked","Checked")
levels(data$meth_arrg_ride___6.factor)=c("Unchecked","Checked")
levels(data$meth_arrg_ride___7.factor)=c("Unchecked","Checked")
levels(data$activities_access___1.factor)=c("Unchecked","Checked")
levels(data$activities_access___2.factor)=c("Unchecked","Checked")
levels(data$activities_access___3.factor)=c("Unchecked","Checked")
levels(data$activities_access___4.factor)=c("Unchecked","Checked")
levels(data$activities_access___5.factor)=c("Unchecked","Checked")
levels(data$activities_access___6.factor)=c("Unchecked","Checked")
levels(data$activities_access___7.factor)=c("Unchecked","Checked")
levels(data$services_use___1.factor)=c("Unchecked","Checked")
levels(data$services_use___2.factor)=c("Unchecked","Checked")
levels(data$services_use___3.factor)=c("Unchecked","Checked")
levels(data$services_use___4.factor)=c("Unchecked","Checked")
levels(data$services_use___5.factor)=c("Unchecked","Checked")
levels(data$services_use___6.factor)=c("Unchecked","Checked")
levels(data$length_time_max.factor)=c("A day in advance","Within a few hours (e.g., less than 4)","Within the hour (e.g., less than 1 hour)","On-demand (e.g., less than 30 minutes)")
levels(data$fixed_rte_opt___1.factor)=c("Unchecked","Checked")
levels(data$fixed_rte_opt___2.factor)=c("Unchecked","Checked")
levels(data$fixed_rte_opt___3.factor)=c("Unchecked","Checked")
levels(data$fixed_rte_opt___4.factor)=c("Unchecked","Checked")
levels(data$fixed_rte_opt___5.factor)=c("Unchecked","Checked")
levels(data$custom_rtes___1.factor)=c("Unchecked","Checked")
levels(data$custom_rtes___2.factor)=c("Unchecked","Checked")
levels(data$custom_rtes___3.factor)=c("Unchecked","Checked")
levels(data$custom_rtes___4.factor)=c("Unchecked","Checked")
levels(data$custom_rtes___5.factor)=c("Unchecked","Checked")
levels(data$access_features___1.factor)=c("Unchecked","Checked")
levels(data$access_features___2.factor)=c("Unchecked","Checked")
levels(data$access_features___3.factor)=c("Unchecked","Checked")
levels(data$access_features___4.factor)=c("Unchecked","Checked")
levels(data$access_features___5.factor)=c("Unchecked","Checked")
levels(data$access_features___6.factor)=c("Unchecked","Checked")
levels(data$access_features___7.factor)=c("Unchecked","Checked")
levels(data$access_features___8.factor)=c("Unchecked","Checked")
levels(data$access_features___9.factor)=c("Unchecked","Checked")
levels(data$max_pay.factor)=c("Up to $5","$5 to $10","10 to $15","$15 to $20","More than $20")
levels(data$connect_transpo.factor)=c("Not at all","A Little","Medium","Important","Extremely Important")
levels(data$other_forms_transpo___1.factor)=c("Unchecked","Checked")
levels(data$other_forms_transpo___2.factor)=c("Unchecked","Checked")
levels(data$other_forms_transpo___3.factor)=c("Unchecked","Checked")
levels(data$other_forms_transpo___4.factor)=c("Unchecked","Checked")
levels(data$other_forms_transpo___5.factor)=c("Unchecked","Checked")
levels(data$other_forms_transpo___6.factor)=c("Unchecked","Checked")
levels(data$other_forms_transpo___7.factor)=c("Unchecked","Checked")
levels(data$other_forms_transpo___8.factor)=c("Unchecked","Checked")
levels(data$ave_one_way_trip.factor)=c("Less than a mile","1 to 3 miles",">3 but < 5 miles",">5 but < 10 miles",">10 miles but < 20 miles",">20 miles")
levels(data$max_trip_distance.factor)=c("< 5miles","5 to < 10 miles","10 to < 20 miles","20 to < 30 miles","30 to < 50 miles","> 50 miles")
levels(data$av_services_using___1.factor)=c("Unchecked","Checked")
levels(data$av_services_using___2.factor)=c("Unchecked","Checked")
levels(data$av_services_using___3.factor)=c("Unchecked","Checked")
levels(data$av_services_using___4.factor)=c("Unchecked","Checked")
levels(data$av_services_using___5.factor)=c("Unchecked","Checked")
levels(data$av_services_using___6.factor)=c("Unchecked","Checked")
levels(data$av_services_using___7.factor)=c("Unchecked","Checked")
levels(data$comfortable_av.factor)=c("Very comfortable","Moderately comfortable","Not at all comfortable")
levels(data$pers_vehicle_asst_feat___1.factor)=c("Unchecked","Checked")
levels(data$pers_vehicle_asst_feat___2.factor)=c("Unchecked","Checked")
levels(data$pers_vehicle_asst_feat___3.factor)=c("Unchecked","Checked")
levels(data$pers_vehicle_asst_feat___4.factor)=c("Unchecked","Checked")
levels(data$pers_vehicle_asst_feat___5.factor)=c("Unchecked","Checked")
levels(data$pers_vehicle_asst_feat___6.factor)=c("Unchecked","Checked")
levels(data$pers_vehicle_asst_feat___7.factor)=c("Unchecked","Checked")
levels(data$pers_vehicle_asst_feat___8.factor)=c("Unchecked","Checked")
levels(data$pers_vehicle_asst_feat___9.factor)=c("Unchecked","Checked")
levels(data$pers_vehicle_asst_feat___10.factor)=c("Unchecked","Checked")
levels(data$pers_vehicle_asst_feat___11.factor)=c("Unchecked","Checked")
levels(data$pers_vehicle_asst_feat___12.factor)=c("Unchecked","Checked")
levels(data$pers_vehicle_asst_feat___13.factor)=c("Unchecked","Checked")
levels(data$pers_av_value___1.factor)=c("Unchecked","Checked")
levels(data$pers_av_value___2.factor)=c("Unchecked","Checked")
levels(data$pers_av_value___3.factor)=c("Unchecked","Checked")
levels(data$pers_av_value___4.factor)=c("Unchecked","Checked")
levels(data$pers_av_value___5.factor)=c("Unchecked","Checked")
levels(data$pers_av_value___6.factor)=c("Unchecked","Checked")
levels(data$rank_pref_a.factor)=c("1","2","3")
levels(data$rank_pref_b.factor)=c("1","2","3")
levels(data$rank_pref_c.factor)=c("1","2","3")
levels(data$attach_points.factor)=c("Yes","No")
levels(data$price_range.factor)=c("< $20,000","$20,000 to < $30,000","$30,000 to < $40,000","$40,000 to < $50,000","$50,000 to < $60,000","$60,000 to < $70,000","$70,000 to < $80,000","$80,000 to < $100,000",">$100,000")
levels(data$cost_range_modify.factor)=c("< $20,000","$20,000 to < $30,000","$30,000 to < $40,000","$40,000 to < $50,000","$50,000 to < $60,000","$60,000 to < $70,000","$70,000 to < $80,000","$80,000 to < $100,000",">$100,000")
levels(data$impt_access_feat_com.factor)=c("1","2","3")
levels(data$impt_access_feat_profile.factor)=c("1","2","3")
levels(data$impt_access_feat_pers_item.factor)=c("1","2","3")
levels(data$impt_access_feat_store.factor)=c("1","2","3")
levels(data$impt_access_feat_accom.factor)=c("1","2","3")
levels(data$impt_access_feat_grab.factor)=c("1","2","3")
levels(data$impt_access_feat_ease.factor)=c("1","2","3")
levels(data$impt_access_feat_wc_access.factor)=c("1","2","3")
levels(data$incap_dvr_detect.factor)=c("1","2","3")
levels(data$distract_dvr_det.factor)=c("1","2","3")
levels(data$auto_route_nav.factor)=c("1","2","3")
levels(data$access_entrance_local.factor)=c("1","2","3")
levels(data$self_park.factor)=c("1","2","3")
levels(data$park_assist.factor)=c("1","2","3")
levels(data$lane_keep.factor)=c("1","2","3")
levels(data$adapt_cruise_crtl.factor)=c("1","2","3")
levels(data$coll_avoid_station.factor)=c("1","2","3")
levels(data$coll_avoid_moving.factor)=c("1","2","3")
levels(data$road_sign_rec.factor)=c("1","2","3")
levels(data$self_drive_mode.factor)=c("1","2","3")
levels(data$ptnr_caregiv___1.factor)=c("Unchecked","Checked")
levels(data$ptnr_caregiv___2.factor)=c("Unchecked","Checked")
levels(data$ptnr_caregiv___3.factor)=c("Unchecked","Checked")
levels(data$ptnr_caregiv___4.factor)=c("Unchecked","Checked")
levels(data$ptnr_caregiv___5.factor)=c("Unchecked","Checked")
levels(data$ptnr_caregiv___6.factor)=c("Unchecked","Checked")
levels(data$ptnr_caregiv___7.factor)=c("Unchecked","Checked")
levels(data$ptnr_caregiv___8.factor)=c("Unchecked","Checked")
levels(data$caregive_years___1.factor)=c("Unchecked","Checked")
levels(data$caregive_years___2.factor)=c("Unchecked","Checked")
levels(data$caregive_years___3.factor)=c("Unchecked","Checked")
levels(data$caregive_years___4.factor)=c("Unchecked","Checked")
levels(data$caregive_years___5.factor)=c("Unchecked","Checked")
levels(data$caregive_years___6.factor)=c("Unchecked","Checked")
levels(data$caregive_years___7.factor)=c("Unchecked","Checked")
levels(data$caregive_transpo_mode___1.factor)=c("Unchecked","Checked")
levels(data$caregive_transpo_mode___2.factor)=c("Unchecked","Checked")
levels(data$caregive_transpo_mode___3.factor)=c("Unchecked","Checked")
levels(data$caregive_transpo_mode___4.factor)=c("Unchecked","Checked")
levels(data$caregive_transpo_mode___5.factor)=c("Unchecked","Checked")
levels(data$caregive_transpo_mode___6.factor)=c("Unchecked","Checked")
levels(data$caregive_transpo_mode___7.factor)=c("Unchecked","Checked")
levels(data$ethnicity.factor)=c("Hispanic or Latino","Not Hispanic or Latino","Prefer not to answer")
levels(data$race.factor)=c("Black or African American","Asian","White or Caucasian","American Indian or Alaskan Native","Native Hawaiian or other Pacific Islander","Two or more races","Other (Please specify below.)","Prefer not to answer")
levels(data$gender.factor)=c("Female","Male","Non-binary/third gender","Prefer to self-describe (Please see below)","Prefer not to answer","Transgender:  Male to Female","Transgender: Female to Male")
levels(data$age.factor)=c("Under 18","18-24","25-34","35-44","45-54","55-64","65-74","75+")
levels(data$marit_stat.factor)=c("Single","Engaged/In a Committed Relationship","Married","Divorced/Separated","Widowed","Prefer not to answer")
levels(data$hous_sit.factor)=c("Own/Rent a Home or Apartment","Assisted Living","Independent Living Home/Apartment","Group Home","Nursing Home facility")
levels(data$education.factor)=c("Some high school","High school diploma or equivalent (GED)?","Some college, but no degree","Associate degree","Bachelors degree","Masters degree","Professional Degree -MD, DDS, JD, MS","Doctorate level degree- MD, DO, PhD, DPT, DOT","Other?")
levels(data$state.factor)=c("AL","AK","AZ","AR","CA","CO","CT","DE","FL","GA","HI","ID","IL","IN","IA","KS","KY","LA","ME","MD","MA","MI","MN","MS","MO","MT","NE","NV","NH","NJ","NM","NY","NC","ND","OH","OK","OR","PA","RI","SC","SD","TN","TX","UT","VT","VA","WA","WV","WI","WY","AS American Samoa","DC Washington","GU Guam","MP Northern Mariana Islands","PR Puerto Rico","UM US Minor Outlying Islands","US Virgin Island","Other")
levels(data$community.factor)=c("Urban (city)","Suburban (residential area around or outside of city)","Rural (country)")
levels(data$employment.factor)=c("Employed full time (40 or more hours per week)","Employed part time (less than 40 hours per week)","Unemployed and currently looking for work","Unemployed and not currently looking for work","Student (full time)","Student (part time)","Retired","Homemaker","Self-employed","Unable to work")
levels(data$work_frm_home.factor)=c("Yes for 100% of my work","Yes for a portion of my work","No")
levels(data$income.factor)=c("Under $15,000","$15,000 to $24,999","$25,000 to $49,999","$50,000 to $74,999","$75,000 to $100,000","Over $100,000","I dont know","I prefer not to answer")
levels(data$transpo_work.factor)=c("Licensed Driver or Permit holder of a Personally Owned or Leased Vehicle","Passenger of a Personally Owned or Leased Vehicle","Ground Public Transportation (e.g., paratransit, fixed route bus, train, subway, etc.)","Ground Private Transportation (e.g., Uber, Lyft, Taxi)","Air travel (e.g., planes, helicopters)","Water travel (e.g., boat, ferry, water taxi)","None of the above - I work from home","Others (Please specify)")
levels(data$veteran.factor)=c("Yes","No")
levels(data$working_automated_vehicle_services_for_people_with_complete.factor)=c("Incomplete","Unverified","Complete")
