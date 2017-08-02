//
//  QA.swift
//  Oregon Nail Test
//
//  Created by Bounnoy Phanthavong on 7/9/17.
//  Copyright © 2017 Bounnoy Phanthavong. All rights reserved.
//

import Foundation

// UI-independent

struct QA {
    
    enum Mode: Int {
        case study
        case practice
        case test
    }
    
    enum TestType: Int {
        case law
        case nail
    }
    
    let mode: Mode
    let type: TestType
    
    // Hard coded the questions and answers. There's definitely a better way to write this, but don't really need to.
    let law: [(q: String, A: String, B: String, C: String, D: String, a: String)] = [
        (
            "...means a written authorization that allows a practitioner to practice outside or away from a licensed facility.",
            "Exfoliate",
            "Adequate ventilation.",
            "Registration",
            "Freelance authorization.",
            "D"
        ),
        (
            "...means an area of facility which is used by all practitioners performing services including but not limited to reception areas, dispensing areas, sinks, shampoo bowls, hair dryer areas, and employee lounge areas.",
            "Work area.",
            "Cosmetology.",
            "Board",
            "Common area.",
            "D"
        ),
        (
            "...means an original document verifying licensing history and status, including information disclosing all unresolved or outstanding penalties and disciplinary actions. The document is issued and signed by the regulatory authority in the state which issued the licenses with an official seal or stamp affixed to the document. It is not the certificate or license form issued which authorizes the holder to practice.",
            "License",
            "Affidavit of licensure.",
            "Field of practice.",
            "Official transcript.",
            "B"
        ),
        (
            "...means chemical agent, which has demonstrated Tuberculocidal activity and is registered with the EPA.",
            "Dispensing area.",
            "Low level disinfectant.",
            "Disinfect",
            "High level disinfectant.",
            "D"
        ),
        (
            "...means that all portable articles and instruments, which the practitioner can carry to use in the performance of services on clients, including but not limited to combs, shears, clippers, and yoyettes.",
            "Equipment",
            "Soiled",
            "Material and supplies.",
            "Tools and implement.",
            "D"
        ),
        (
            "...means a written authorization for the holder to perform services in one or more fields of practice.",
            "Disinfect",
            "Permit",
            "Ethical",
            "Certificate",
            "D"
        ),
        (
            "...means an article that has been used and has not been cleaned or disinfected before use on the next client.",
            "School",
            "Board",
            "Soiled",
            "Facility",
            "C"
        ),
        (
            "...means the entire area of the facility, licensed by the agency and designated as a facility.",
            "Premises",
            "Permit",
            "Soiled",
            "License",
            "A"
        ),
        (
            "...means those items which may occasionally pierce or cut the skin and draw blood, including razors, cuticle nippers, cuticle pushers, nail clippers, tweezers, comdone extractors, shears, and metal nail files.",
            "Demonstration permit.",
            "Materials and supplies.",
            "Tools and implement.",
            "Sharp edged or pointed, non-electrical tools and implements.",
            "D"
        ),
        (
            "...means ventilation by natural or mechanical methods which conditions from occurring in accordance with OAR 437, Division 2 and/or to allow the free flow of air in a room in proportion to the size of the room and the capacity of the room.",
            "Registration",
            "Freelance authorization.",
            "Adequate ventilation.",
            "Exfoliate or exfoliation.",
            "C"
        ),
        (
            "A branch of the Federal Government, which approves and registers chemical compounds and agents.",
            "FDA",
            "EPA",
            "Board",
            "Agency",
            "B"
        ),
        (
            "A catalyst must be stored away from...",
            "Solvents",
            "Lotions",
            "Working area.",
            "Dispensary area.",
            "A"
        ),
        (
            "All electrical tools and implements, except clipper blades, must be disinfected...",
            "After each use.",
            "Before each use.",
            "Before and after each use.",
            "None of the above.",
            "B"
        ),
        (
            "All electrical tools and implements are disinfected with...",
            "Low level disinfectant.",
            "High level disinfectant.",
            "Sanitation",
            "Antiseptic",
            "A"
        ),
        (
            "A chemical agent which has demonstrated bactericidal, germicidal, fungicidal, and limited virucidal activity and is registered with the EPA.",
            "Low level disinfectant.",
            "High level disinfectant.",
            "Medium level.",
            "All of the above.",
            "A"
        ),
        (
            "A chemical agent which has demonstrated tuberculocidal.",
            "High level disinfectant.",
            "Low level disinfectant.",
            "Sanitation",
            "All of the above.",
            "A"
        ),
        (
            "A chemical agent, which has demonstrated tuberculocidal activity and is registered with the EPA.",
            "Antiseptic",
            "Low level disinfectant.",
            "High level disinfectant.",
            "None of the above.",
            "C"
        ),
        (
            "A completed application form prescribed by agency for facility license.",
            "Proof of being 18 years of age.",
            "It is in a rural area, must have a map or direction to the facility.",
            "A list of authorization holders providing services in the facility.",
            "All of the above.",
            "D"
        ),
        (
            "A contractual agreement exists that indicates specific responsibility for the cleanliness of a shared or ... within the facility.",
            "Common area.",
            "Reception area.",
            "Dispensing area.",
            "All of the above.",
            "A"
        ),
        (
            "A cotton ball is a...",
            "Material",
            "Equipment",
            "Implement",
            "Nail cosmetic.",
            "A"
        ),
        (
            "A demonstration permit or a temporary facility permit is...",
            "License",
            "Permit",
            "Certificate",
            "Freelance authorization.",
            "B"
        ),
        (
            "A dispensary area must have...",
            "Hot and cold running water.",
            "Proper ventilation.",
            "Clean towels.",
            "Both A & B.",
            "D"
        ),
        (
            "A dispensary area must have...",
            "Hot and cold water.",
            "Cold water only.",
            "Proper ventilation, hot and cold water.",
            "Adequate ventilation.",
            "C"
        ),
        (
            "A dispensary area must have...",
            "Hot and cold running water.",
            "Proper ventilation.",
            "Clean towels.",
            "Both A & B.",
            "D"
        ),
        (
            "A document that list previous licenses and status is...",
            "Certificate",
            "Freelance authorization.",
            "Affidavit of licensure.",
            "License history.",
            "C"
        ),
        (
            "A facility located in a home must be easily identified by:",
            "A map.",
            "Direction",
            "A house number and a sign that is easily visible from the street.",
            "All of the above.",
            "C"
        ),
        (
            "A holder of a freelance authorization must provide each client ... for comments on any of the services received or on any of the sanitary procedures followed while performing services.",
            "Only the agency's name.",
            "The agency's name, address, and phone number.",
            "Only the agency's phone number.",
            "The agency's name and phone number.",
            "B"
        ),
        (
            "A holder of a freelance authorization must...",
            "Provide each client with the agency's name, address and telephone number, also display the Practitioner certificate number and freelance number.",
            "Be subject to random audit to verify compliance with safety, infection control and licensing requirements.",
            "Allow the agency's representatives to conduct an investigation pursuant to obstructing or hindering the normal progress of an investigation, threatening or exerting physical harm, or enabling another individual to impede an investigation may result in disciplinary action.",
            "All of the above.",
            "D"
        ),
        (
            "A metal air-tight container or other approved container are...",
            "Fire retardant container.",
            "Metal can without lid.",
            "Plastic can with lid.",
            "All of the above.",
            "A"
        ),
        (
            "A natural person may hold more than one facility license but must submit a separate application and...",
            "Only pay required fees.",
            "Only qualify for a facility license for each location.",
            "Pay required fees and qualify for a facility license for each location.",
            "None of the above.",
            "C"
        ),
        (
            "A neck strip or towel must be placed around the client's neck to ... between a common used hair cloth or cape and cloth or cape and the client's skin.",
            "Prevent direct contact.",
            "Prevent cross contamination.",
            "Prevent bacteria growth.",
            "All of the above.",
            "A"
        ),
        (
            "A passing score on the Oregon Law and Rules examination within ___ before the date of application.",
            "30 days.",
            "1 year.",
            "3 years.",
            "2 years.",
            "D"
        ),
        (
            "A practitioner's license must be renewed every...",
            "5 years.",
            "2 years.",
            "4 years.",
            "3 years.",
            "B"
        ),
        (
            "A practitioner or client is not allowed to smoke during:",
            "Any chemical service.",
            "Manicuring",
            "Pedicuring",
            "Waxing",
            "A"
        ),
        (
            "A practitioner providing service or working in a facility after diagnosis of an immunodeficiency disease or condition or Hepatitis B, C, or D, shall observe and follow all current guideline set by:",
            "Occupational Safety and Health Administration (OSHA)",
            "Stop working.",
            "Center for Disease Control (CDC)",
            "See a physician.",
            "C"
        ),
        (
            "A practitioner, after diagnosis of immune deficiency disease, condition or Hepatitis B...",
            "Shall observe and follow all current Centers for Disease Control. (CDC)",
            "See a physician.",
            "Follow the rules or OSHA.",
            "Stop working.",
            "A"
        ),
        (
            "A practitioner who holds a certification of identification can...",
            "Work outside a licensed facility.",
            "Renew their certificate every 5 years.",
            "Does not have to take a safety and infection control exam.",
            "Automatically renew the certificate of identification.",
            "A"
        ),
        (
            "A practitioner who qualifies as an independent contractor and who is not under the control and direction of a facility license holder is...",
            "Professor",
            "Freelance authorization.",
            "Independent contractor.",
            "Facility owner.",
            "C"
        ),
        (
            "A practitioner who has an open sore or bleeding lesions must wear protective gloves when providing service to a client.",
            "True",
            "False",
            "Both of the above.",
            "None of the above.",
            "A"
        ),
        (
            "A salon applicant must be ... years old.",
            "21",
            "18",
            "25",
            "19",
            "B"
        ),
        (
            "A solution of hydrogen peroxide that may be safe to use on a minor cut...",
            "1-2%",
            "3-5%",
            "4-5%",
            "0%",
            "B"
        ),
        (
            "A solution of many single molecules together is...",
            "Nail polish.",
            "Monomer",
            "Polymer",
            "Catalyst",
            "B"
        ),
        (
            "A written authorization for a person to practice and teach one or more fields of practice on a temporary limited basis of a maximum of 30 consecutive days.",
            "Freelance authorization.",
            "Demonstration permit.",
            "Workers permit.",
            "Certificate",
            "B"
        ),
        (
            "Adequate, disinfecting & sterilizing equipment must be maintained for...",
            "The volume of business.",
            "Usage requirements.",
            "The number of authorization holders performing services.",
            "All of the above.",
            "D"
        ),
        (
            "What agency approves chemical compounds and agents for people to use safely?",
            "OSHA",
            "MSDS",
            "EPA",
            "FDA",
            "C"
        ),
        (
            "After using protective gloves, a practitioner disinfected them and they were clean to reuse.",
            "True",
            "False",
            "All of the above.",
            "None of the above.",
            "B"
        ),
        (
            "All article related to the performance of services shall be deposited in a ___ to avoid the potential for cross contamination through release of or exposure to infectious waste materia.",
            "Plastic cup without a lid.",
            "Covered container.",
            "Backpack",
            "Bank",
            "B"
        ),
        (
            "All certificate and license must be posted in...",
            "In a safe place.",
            "Under lock and key.",
            "In the owner's office.",
            "In public view.",
            "D"
        ),
        (
            "All certificates, Independent Contractor Registration, and Licenses must be posted in public view.",
            "True",
            "False",
            "All of the above.",
            "None of the above.",
            "A"
        ),
        (
            "All facilities shall be governed under the Oregon indoor air act and provide...",
            "Hot water.",
            "Cold water.",
            "Adequate ventilation.",
            "All of the above.",
            "C"
        ),
        (
            "Only mix chemicals in the dispensary area which has...",
            "Adequate ventilation.",
            "MSDS",
            "Foam",
            "Closed containers.",
            "A"
        ),
        (
            "All facility liquid waste must be:",
            "Discharged into a tank.",
            "Discharged into facility sewer.",
            "Discharged into drain field.",
            "Discharged into public sewer, septic tank or meet the drain field requirements.",
            "D"
        ),
        (
            "All facility liquid waste shall be discharged directly into:",
            "Public sewer.",
            "Septic tank.",
            "Drain field requirement.",
            "All of the above.",
            "D"
        ),
        (
            "All facilities shall provide ___ to substitute for drying hands.",
            "Individual cloth towel.",
            "Individual paper towel.",
            "Air-blower.",
            "All of the above.",
            "D"
        ),
        (
            "All manual or mechanical devices or equipment in the practice of barbering esthetic, hair design, nail technology must be used in accordance with the 'product safe requirements' imposed by:",
            "Any federal state county or local authority.",
            "EPA",
            "CDC",
            "OSHA",
            "A"
        ),
        (
            "All material which come into direct contact with the client's skin that cannot be cleaned or disinfected shall be disposed of in a:",
            "Hamper immediately after use.",
            "Cover waste receptacle.",
            "Fire retardant container immediately after use.",
            "All of the above.",
            "B"
        ),
        (
            "All portable articles and instrument, which the practitioner can carry to use in the performance of services clients are?",
            "Tools",
            "Implement",
            "Machine",
            "A & B",
            "D"
        ),
        (
            "All surfaces contaminate by blood or other potentially infectious materials must be disinfected with:",
            "Low level solution.",
            "Antiseptic",
            "High level solution.",
            "A & C",
            "C"
        ),
        (
            "All waste unrelated to performance of service shall be deposited in:",
            "Waste disposal container that requires a lid.",
            "Septic tank.",
            "Waste disposal container that does not require a lid.",
            "Public sewer.",
            "C"
        ),
        (
            "All waste which contains blood or other potentially infectious materials must be disposed of in:",
            "Covered container.",
            "Closed container.",
            "A glove or plastic bag.",
            "All of the above.",
            "C"
        ),
        (
            "An applicant obtaining a facility license must be ... and at least ... years old of age.",
            "Adult and 21 years old.",
            "Disabled and 18 years old.",
            "Natural and 18 years old.",
            "A & C",
            "C"
        ),
        (
            "An area where service preparations are conducted:",
            "Dispensing area.",
            "Work area.",
            "Shampoo area.",
            "All of the above.",
            "D"
        ),
        (
            "An authorization to practice, demonstrate, teach on a limited basis for a maximum of 30 consecutive days.",
            "Demonstration permit.",
            "Permit",
            "Practitioner",
            "Temporary facility.",
            "A"
        ),
        (
            "An EPA registered disinfectant must be:",
            "Ready to use at all times.",
            "Dry",
            "High level.",
            "Easily accessible.",
            "A"
        ),
        (
            "An establishment operated on a regular or irregular basis for the purpose of providing services in one more field of practice.",
            "Store",
            "Salon",
            "Market",
            "Facility or premises.",
            "D"
        ),
        (
            "An establishment such as certificate, license, demonstration permit can be called:",
            "Authorization",
            "Contract",
            "Registration",
            "Official transcript.",
            "A"
        ),
        (
            "An example of a communicable disease is...",
            "Cancer",
            "Diabetes",
            "Stroke",
            "Poison oak.",
            "D"
        ),
        (
            "An original document authorized by the appropriate office in the Oregon Department of Education or certified by an educational institution indicating applicant identity information:",
            "Document",
            "File",
            "Official transcript.",
            "License",
            "C"
        ),
        (
            "An original document verifying licensing history and status including information disclosing all unresolved or outstanding penalties and/or disciplinary actions.",
            "License",
            "Certificate",
            "Diploma",
            "Affidavit of licensure.",
            "D"
        ),
        (
            "Any action or behavior, during and after the testing process will be...",
            "Soliciting",
            "Removing materials.",
            "Impeding behavior.",
            "Any of the above.",
            "D"
        ),
        (
            "Any item which compliment services provided in the practice of barbering, hair design, facial technology and nail technology.",
            "Article",
            "Items",
            "Equipment",
            "All of the above.",
            "A"
        ),
        (
            "Any public place in a facility shall be governed under the Oregon Indoor Clean Air Act.",
            "True",
            "False",
            "All of the above.",
            "None of the above.",
            "A"
        ),
        (
            "Applicants facility located in a residence have to have a ___ which is easily visible from the street and indicates the location of the facility.",
            "House number or sign.",
            "Business name.",
            "Map above.",
            "All of the above.",
            "A"
        ),
        (
            "Approved methods of disinfection tools and implements...",
            "Used according to self experience.",
            "Are not important.",
            "Are not required.",
            "Used according to manufacturer's instructions.",
            "D"
        ),
        (
            "At the end of a business day, chemical waste should be disposed of in:",
            "Covered container.",
            "Disposables",
            "In a fire retardant container.",
            "Sealable bag.",
            "C"
        ),
        (
            "An authorization to practice in barbering hair design esthetics and/or nail technology as an independent contractor.",
            "License",
            "Registration",
            "Permit",
            "Applicant",
            "B"
        ),
        (
            "Authorization holders must have scalable rigid containers available for use:",
            "Only if it is necessary.",
            "When customers request.",
            "At all times services are being performed.",
            "All of the above.",
            "C"
        ),
        (
            "Authorization holders must have sealable plastic bags and sealable rigid containers available for use:",
            "Only if it is necessary.",
            "When customers request.",
            "At all times services are being performed.",
            "All of the above.",
            "C"
        ),
        (
            "Authorization holders must observe:",
            "Department of Human Services",
            "Oregon Health Authority",
            "Other city, county, and state regulations.",
            "All of the above.",
            "D"
        ),
        (
            "Authorization other than independent contractor registration or freelance authorization may be INACTIVE for up to...",
            "1 year.",
            "2 years.",
            "3 years.",
            "4 years.",
            "C"
        ),
        (
            "Authorization other than independent contractor registration or freelance authorization that has been inactive for more than 3 years is considered...",
            "Dormant",
            "Inactive",
            "Expired",
            "Suspended",
            "C"
        ),
        (
            "Bar soap or common towels are...",
            "Prohibited",
            "Allowed",
            "Recommended",
            "Required",
            "A"
        ),
        (
            "Boils pustules and infected wound contain a bacterium known as...",
            "Poison oak.",
            "Staphylococci",
            "Tuberculosis",
            "Hydroxide",
            "B"
        ),
        (
            "Buffered concentrations of...",
            "Alpha-hydroxy acids of 10-30% and where pH is more than 7.",
            "Alpha-hydroxy acids of 10-30% and where pH is less than 5.",
            "Alpha-hydroxy acids of 10-30% and where pH is less than 3.",
            "Alpha-hydroxy acids of 10-30% and where pH is more than 3.",
            "C"
        ),
        (
            "Buffing during a manicure increase:",
            "Blood circulation to fingertip.",
            "Pigmentation",
            "Nail polishes frying.",
            "Nail growth.",
            "A"
        ),
        (
            "Capable of causing an unplanned, uncontrolled reaction which could present a hazard to practitioner or client by explosion, fire, release of toxic gases, or byproducts, or physical or chemical burns.",
            "Hazardous",
            "Cautious",
            "Corrosive",
            "Acidic",
            "A"
        ),
        (
            "Certified oils make ... not attached to each other.",
            "Cuticle remover.",
            "Monomer",
            "Primer",
            "Polymer",
            "B"
        ),
        (
            "Chemical containers holding 1 gallon or less may be stored in the same area or in the same storage cabinet with materials which they could react with if one of the following is met?",
            "Separate, but minimum of 12 inches.",
            "Glass bottle treated to make them break-resistant or stored in rubber buckets.",
            "On the floor closest to the place where it is cool.",
            "Either A or B.",
            "D"
        ),
        (
            "Chemicals may be stored in containers approved by the ... for shipping.",
            "FDA",
            "Oregon Department of Transportation",
            "The Federal Government",
            "All of the above.",
            "B"
        ),
        (
            "Chemicals must be stored safely to avoid:",
            "Fire",
            "Explosion",
            "Bodily infury.",
            "All of the above.",
            "D"
        ),
        (
            "Chemicals shall be stored where the temperature does not exceed:",
            "32 degrees.",
            "0 degrees.",
            "50 degrees.",
            "140 degrees.",
            "D"
        ),
        (
            "Chemical waste material shall be deposited in a ___ at the conclusion of each service.",
            "Open container.",
            "Closed container.",
            "Bucket with no lid.",
            "River",
            "B"
        ),
        (
            "Chemical waste material shall be deposited in a ___ at the close of each business day.",
            "Fire retardant container.",
            "Paper bag.",
            "Open container.",
            "Truck",
            "A"
        ),
        (
            "Chemical waste should be disposed of in:",
            "A covered fire retardant container.",
            "A covered container.",
            "Outside in the dumpster.",
            "A rubber hamper.",
            "A"
        ),
        (
            "Chemically soiled towels or linens shall be stored in:",
            "A plastic bag.",
            "Fire retardant container.",
            "Closable container.",
            "Bucket",
            "B"
        ),
        (
            "Chemical containers greater than one gallon must be stored...",
            "In separate cabinets.",
            "In safety valve containers.",
            "In a separate location.",
            "All of the above.",
            "D"
        ),
        (
            "Chemicals may be only mixed in:",
            "Work area.",
            "Common area.",
            "Dispensary",
            "Away from flame.",
            "C"
        ),
        (
            "Chemicals must be stored in containers approved by the ___ for shipping.",
            "FDA",
            "Oregon Department of Transportation",
            "The Federal Government",
            "All of the above.",
            "B"
        ),
        (
            "Chemicals must be stored safely to avoid...",
            "Fire",
            "Explosion",
            "Bodily injury.",
            "All of the above.",
            "A"
        ),
        (
            "Clean towels and linen shall be stored in a:",
            "Work area.",
            "Clean area.",
            "Dispensary area.",
            "Shampoo area.",
            "B"
        ),
        (
            "Clean towels and tools should be stored...",
            "In a clean storage.",
            "In a cabinet labeled cleaned.",
            "In a cabinet labeled the last day cleaned.",
            "All of the above.",
            "A"
        ),
        (
            "Clean towels or linen shall be used for:",
            "Cleaning only.",
            "Each shift.",
            "8 hours each.",
            "Each client.",
            "D"
        ),
        (
            "Completely saturate clipper blades with high level disinfectant ___ used according to the manufacturer's instructions.",
            "Spray",
            "Solution",
            "Foam",
            "All of the above.",
            "D"
        ),
        (
            "Completely saturate clipper blades with a ___ end use according to manufacturer's instructions.",
            "Lysol",
            "All purpose cleaner.",
            "EPA registered high level or spray.",
            "A, B, and C.",
            "C"
        ),
        (
            "Conforming to professional standards of conduct in all occupational practice is:",
            "Good behavior.",
            "Conduct",
            "Ethical",
            "Misconduct",
            "C"
        ),
        (
            "Containers of reactive chemicals are separated by locations of sufficient distance of at least...",
            "12 yards.",
            "12 inches.",
            "10 inches.",
            "7 inches.",
            "B"
        ),
        (
            "Containers of reactive chemicals are separated by locations of sufficient distance, for example at least ___ apart or on different shelves to prevent their reaction.",
            "One inch.",
            "Seventy inches.",
            "Twelve inches.",
            "Five inches.",
            "C"
        ),
        (
            "Disease caused by pathogenic microorganisms that are easily spread.",
            "Non-communicable disease.",
            "Cancer",
            "Infectious disease.",
            "Tuberculocidal",
            "C"
        ),
        (
            "Disinfectant is replaced...",
            "In 2 days.",
            "According to manufacturer's direction.",
            "Once a week.",
            "When it is cloudy.",
            "B"
        ),
        (
            "Disinfectant solution should be replaced...",
            "According to manufacturer's direction.",
            "After each client.",
            "At the end of the day.",
            "At practitioner's discretion.",
            "A"
        ),
        (
            "Disinfected implements should be stored in...",
            "Wet areas.",
            "Dry areas.",
            "Separate from unclean implements.",
            "Both A & B.",
            "C"
        ),
        (
            "An air tight metal or other approved for the use of disposing chemical waste is called...",
            "Closed container.",
            "Fire retardant container.",
            "Rigid container.",
            "Closed plastic.",
            "B"
        ),
        (
            "Disposable material that has come into contact with blood or body fluid shall be disposed of in a...",
            "Reused plastic bag.",
            "Trash can.",
            "Recycled paper bag.",
            "Sealable plastic bag to prevent cross contamination.",
            "D"
        ),
        (
            "Disposable materials coming into contact with blood and/or body fluids shall be disposed of in a...",
            "Sealable plastic bag.",
            "Separate from sealable trash.",
            "Separate from sealable garbage liners.",
            "All of the above.",
            "D"
        ),
        (
            "Disposable sharp objects that come in contact with blood and body fluid shall be disposed of in:",
            "Sealable rigid containers. (Puncture proof container.)",
            "Sealable plastic bag.",
            "Garbage bag.",
            "Container with no lid.",
            "A"
        ),
        (
            "Each facility or practitioner shall provide ___ to store all soiled towels or linen after use.",
            "Closable container.",
            "Large enough container.",
            "Sturdy enough container.",
            "All of the above.",
            "D"
        ),
        (
            "Each section of the written examination will be scored individually. A passing score is...",
            "75%",
            "80%",
            "85%",
            "90%",
            "A"
        ),
        (
            "Emery boards, cosmetic sponges, orange wood sticks and single use nail bits shall be...",
            "Given to clients or disposed of after each use.",
            "Kept for next client.",
            "Kept and have a used label.",
            "All of the above.",
            "A"
        ),
        (
            "Facility licenses must be posted in ___.",
            "Public view.",
            "Back of work area.",
            "Below cash register.",
            "Employee area.",
            "A"
        ),
        (
            "Facilities located in a residence must...",
            "Have a house number or sign which is easily visible from the street.",
            "Maintain separation between the facility and the residential living area.",
            "Have solid walls from door to ceiling, with connecting doors between the facility and the residential living area and must be kept closed during operation or when serving clients.",
            "All of the above.",
            "D"
        ),
        (
            "Facility water supplies shall have a minimum of ... pounds per square inch in accordance with the State Plumbing Code.",
            "100",
            "20",
            "1",
            "15",
            "B"
        ),
        (
            "Facility water supplies shall have a minimum of...",
            "20 pounds per square inch.",
            "20 tons pressure.",
            "30 pounds per square inch.",
            "7 pounds lux.",
            "A"
        ),
        (
            "Failed section of a written examination may be retaken:",
            "Seven calendar days after first, second, fourth, and fifth attempt.",
            "30 calendar days after third and sixth failed attempt, plus official transcript certifying additional training from school.",
            "After seventh failed attempt, retake will be determined by the board on a case by case basis.",
            "All of the above.",
            "D"
        ),
        (
            "Failed section of a written examination may be retaken:",
            "After first, second, fourth, fifth failed attempts, applicant may not retake for seven calendar days.",
            "After third and sixth failed attempt, applicant may not retake for 30 calendar days and submit an official transcript certifying additional training from an educational institution on a form prescribed by the agency and must pay application fees.",
            "After seventh failed attempt, ability to retake or requirements for retake or both is determined by the board on a case by case basis.",
            "All of the above.",
            "D"
        ),
        (
            "Failure to produce proper photographic proof will result in:",
            "A penalty fee.",
            "Lawsuit",
            "Imprisonment",
            "Automatic failure.",
            "A"
        ),
        (
            "Floor surface in a working area should be:",
            "Non-absorbant and clean.",
            "A little wet.",
            "Dirty only when servicing customers.",
            "Carpet",
            "A"
        ),
        (
            "Floor surface should be non-absorbant in:",
            "Working area.",
            "Reception area.",
            "Dispensary area.",
            "All of the above.",
            "A"
        ),
        (
            "For practice of professional standards, practitioners must:",
            "Use professional products.",
            "Safeguard the public's health, safety, and welfare.",
            "Shall be appropriately clothed while providing services and shall be subject to public decency laws.",
            "All of the above.",
            "D"
        ),
        (
            "Hazardous material capable of causing an unplanned or uncontrolled reaction.",
            "Cell phones.",
            "Oxidizers and corrosives.",
            "Outside food or drink.",
            "None of the above.",
            "B"
        ),
        (
            "Hazardous chemicals must be stored:",
            "Away from oxidizers.",
            "Away from flames.",
            "In safety valve container.",
            "All of the above.",
            "D"
        ),
        (
            "Head lice may be treated at the discretion of the...",
            "Anyone",
            "Doctor",
            "Physician",
            "Authorization holder.",
            "D"
        ),
        (
            "Head lice may be treated at the discretion of the authorization holder.",
            "True",
            "False",
            "All of the above.",
            "None of the above.",
            "A"
        ),
        (
            "Head lice may be treated at the discretion of the...",
            "Anyone",
            "Doctor",
            "Physician",
            "Practitioner and facility owner.",
            "D"
        ),
        (
            "Health rules say toxic and hazardous substances are:",
            "Corrosive and flammable.",
            "Aerosol, gas, liquid and/or solid.",
            "Oxidizers",
            "All of the above.",
            "D"
        ),
        (
            "High level disinfectant is used to prevent:",
            "Disease and disorder.",
            "Blood borne diseases.",
            "Infection",
            "Inflammation",
            "C"
        ),
        (
            "How long do you need to contact the agency in writing to make an arrangement for the inspector to inspect the salon when they were unable to perform because the business was closed?",
            "Six months.",
            "One year.",
            "One month.",
            "Two years.",
            "B"
        ),
        (
            "How many days must you inform the Board when you change your name, address, phone number, and an employment status?",
            "30",
            "40",
            "20",
            "10",
            "A"
        ),
        (
            "How many minutes to travel from one work location is considered 'reasonably accessible'?",
            "1",
            "2",
            "3",
            "4",
            "C"
        ),
        (
            "How many years until Freelance Authorization or Independent Contractor Registration status becomes inactive?",
            "1",
            "2",
            "5",
            "3",
            "A"
        ),
        (
            "If a client gets a minor cut, you should first apply...",
            "Alum powder or styptic powder.",
            "Band aid.",
            "Antiseptic",
            "All of the above.",
            "A"
        ),
        (
            "If only natural hair care services are provided, a sink located in the restroom qualifies as a water source.",
            "True",
            "False",
            "All of the above.",
            "None of the above.",
            "A"
        ),
        (
            "Independent Contractors must notify the Board in person or by mail...",
            "Prior to a change in work location.",
            "After a change in work location.",
            "Only when necessary.",
            "When a client asks.",
            "A"
        ),
        (
            "Independent Contractors must notify the OHLA and state in person or by mail prior to a change in work location.",
            "True",
            "False",
            "All of the above.",
            "None of the above.",
            "A"
        ),
        (
            "Item needed to run a facility which include waiting chair, barber, style chairs, sink or shampoo chair is...",
            "Tool",
            "Material",
            "Implement",
            "Equipment",
            "D"
        ),
        (
            "Item which come in direct contact with the client's skin that do not require disinfecting shall be:",
            "Discarded",
            "Given to the client.",
            "Cleaned",
            "All of the above.",
            "C"
        ),
        (
            "Items needed to run a facility which includes a waiting chair, styling chair, barber cabinets, sinks, shampoo bowls, stationary dryers, and nail technology tables.",
            "Equipment",
            "Materials",
            "Tools",
            "Implements",
            "A"
        ),
        (
            "Items that complements the use of tools:",
            "Materials",
            "Implements",
            "Equipment",
            "None of the above.",
            "A"
        ),
        (
            "Items which comes in direct contact with the client's skin that do not require disinfecting shall be ___.",
            "Discarded",
            "Given to the client.",
            "Cleaned",
            "All of the above.",
            "C"
        ),
        (
            "Items which complements services provided in the practice of barbering, hair design, esthetic, or nail.",
            "Tools",
            "Materials",
            "Implements",
            "Article",
            "D"
        ),
        (
            "Items which may on occasion pierce or cut the skin and draw blood include razors, cuticle nippers, cuticle pushers and nail clippers are...",
            "Demonstration permit.",
            "Materials and supplies.",
            "Sharp edged or pointed, non-electrical tools and implements.",
            "Tools and implements.",
            "C"
        ),
        (
            "Items which may pierce or cut the skin and draw blood. (sharp edges or pointed non-electrical tools or implements)",
            "Cuticle nippers.",
            "Nail clippers.",
            "Razors, cuticle pushers...",
            "All of the above.",
            "D"
        ),
        (
            "If a hair dresser performs a manicure, the Board may...",
            "Issue a certificate.",
            "Access a civil penalty.",
            "Issue a Freelance Authorization.",
            "Issue a facility license.",
            "B"
        ),
        (
            "Low level disinfectant is used for...",
            "Clippers",
            "Manicure table.",
            "Nippers",
            "Combs and brushes.",
            "D"
        ),
        (
            "Manicure tables, shampoo bowls, and chairs are:",
            "Material",
            "Equipment",
            "Implement",
            "Tools",
            "B"
        ),
        (
            "Manipulating means: articulation or massage, pressure, friction, tapping, stroking or kneading by manual or mechanical.",
            "True",
            "False",
            "All of the above.",
            "None of the above.",
            "A"
        ),
        (
            "Nail polish remover in container greater than one gallon must be stored in...",
            "Safety valve container.",
            "A location isolated from other chemicals.",
            "Separate cabinets.",
            "Any of these.",
            "D"
        ),
        (
            "Non-electrical implement with sharp edges and points should be disinfected with:",
            "Low level disinfectant.",
            "High level disinfectant.",
            "Sterilization",
            "Antiseptic",
            "C"
        ),
        (
            "One type of microorganism is:",
            "Hydrogen peroxide.",
            "Bacteria",
            "Aerosol",
            "Oxidizer",
            "B"
        ),
        (
            "Optional sterilization equipment used in a field of disinfectants must be checked ___ to ensure it reaches the temperature and/or pressure required by the manufacturer's instruction.",
            "Daily",
            "Monthly",
            "Weekly",
            "Anually",
            "D"
        ),
        (
            "Original document including information disclosing unresolved or outstanding penalties and verifications.",
            "Licensing history.",
            "Status",
            "Disciplinary actions.",
            "All of the above.",
            "D"
        ),
        (
            "OSHA stands for:",
            "Occupational Safety and Health Administration",
            "Occupational Sanitation and Health Administration",
            "Occupations Safety and Healthiness Administration",
            "Occupational Sanitation and Helping Administration",
            "A"
        ),
        (
            "Persons who are acting under authority of a hospital, or a long time care facility licensed or a residential facility licensed, exemption person are limited to providing well-being care and personal hygiene services.",
            "Individuals who reside at hospital or long term care facility licensed.",
            "Employees of the hospital or long term care facility licensed.",
            "Relative of employees, or person who reside at the hospital.",
            "All of the above.",
            "A"
        ),
        (
            "Pets or other animals are not permitted in the business facility, except animal service or fish in aquarium or non-poisonous reptiles in terrariums.",
            "True",
            "False",
            "All of the above.",
            "None of the above.",
            "A"
        ),
        (
            "Pets or other animals are not permitted in the business facility, with the exception of...",
            "Dog in cage.",
            "Fish in aquariums.",
            "Poisonous reptiles in terrariums.",
            "All of the above.",
            "B"
        ),
        (
            "Poison control should be called when:",
            "Someone cannot breathe.",
            "When a chemical is accidentally consumed.",
            "If a client receives a minor cut.",
            "If there is suspected gas leak.",
            "B"
        ),
        (
            "Practitioners and facility owners shall have both sealable plastic bags and sealable rigid containers available for use...",
            "At all times services are being performed.",
            "Only when a client asks.",
            "To hold their lunch.",
            "When paper bags are not available.",
            "A"
        ),
        (
            "Practitioner's certificate is good for 2 years and becomes inactive on the last day of the month...",
            "3 years from the date issued.",
            "1 year from the date issued.",
            "2 years from the date issued.",
            "4 years from the date issued.",
            "C"
        ),
        (
            "Practitioner's certificate must be posted in public view. The...",
            "Address may be blocked. (conceal or cover)",
            "Phone number may be blocked. (conceal or cover)",
            "Name of facility may be blocked. (conceal or cover)",
            "All of the above.",
            "A"
        ),
        (
            "Practitioners and facility owners and independent contractors shall observe and be subjected to...",
            "Department of Human Services",
            "Health services.",
            "Other city, county, and state regulations pertaining to public health and safety.",
            "All of the above.",
            "D"
        ),
        (
            "Practitioners must...",
            "Be guided by the highest standards of professional conduct.",
            "Act and practice in a manner which safeguard the public's health, safety, and welfare.",
            "Shall be appropriately clothed while providing services and shall be subject to public decency laws.",
            "All of the above.",
            "D"
        ),
        (
            "Practitioners must observe and follow thorough hand washing techniques with soap and water or other alternative hand washing products such as gel, aerosol spray, foam, or pre-packaged hand wiper, immediately...",
            "Before serving each client.",
            "After serving each client.",
            "To prevent cross contamination.",
            "All of the above.",
            "D"
        ),
        (
            "Practitioners that provide services outside the premises of a licensed facility, on persons confined to their residence through medical disability or restriction.",
            "License",
            "Certificate",
            "Independent Contractor",
            "Freelance Authorization",
            "D"
        ),
        (
            "Practitioners shall observe and follow thorough hand washing techniques with soap and water or other alternative hand washing products such as:",
            "Gel",
            "Aerosol",
            "Foam or pre-packaged hand wipes.",
            "All of the above.",
            "D"
        ),
        (
            "Practitioners shall wear eye goggles, shields, and/or mask if ___ is likely to occur while services are performed.",
            "Explosion",
            "Spattering",
            "Ignition",
            "Injury",
            "B"
        ),
        (
            "Practitioners cannot work when they have:",
            "Onychia",
            "Contaminated",
            "Communicable disease.",
            "Non-disease.",
            "C"
        ),
        (
            "Practitioners shall wear eye goggles and shield/mask if ... is more likely to occur while services are being performed.",
            "Explosion",
            "Ignition",
            "Spattering",
            "Injury",
            "C"
        ),
        (
            "Practitioners shall wear protective eye glasses or goggles and ... if spattering is likely to occur while services are being performed.",
            "Nothing at all.",
            "Shield/mask.",
            "Gloves on.",
            "C & B",
            "B"
        ),
        (
            "Practitioners, facility owners, and independent contractors shall observe and be subjected to:",
            "Department of Human Services",
            "Health services.",
            "Other city, county, and state regulations pertaining to public health and safety.",
            "All of the above.",
            "D"
        ),
        (
            "Process used to destroy harmful organisms including bacteria, viruses, germs, and fungi is dinfectant.",
            "True",
            "False",
            "All of the above.",
            "None of the above.",
            "A"
        ),
        (
            "Process used to destroy harmful organisms including bacteria, viruses, germs, and fungi is sanitary.",
            "True",
            "False",
            "All of the above.",
            "None of the above.",
            "B"
        ),
        (
            "Protection gloves may be cleaned & disinfected to reuse if they have blood.",
            "True",
            "False",
            "All of the above.",
            "None of the above.",
            "B"
        ),
        (
            "___ shall be provided if the facility serves beverages.",
            "Alcohol",
            "Disposable cups.",
            "Coffee",
            "Water",
            "B"
        ),
        (
            "Protection gloves ___.",
            "Can be cleaned, disinfected.",
            "Can be reused without cleaning.",
            "Can be cleaned without disinfecting.",
            "Can be thrown away.",
            "A"
        ),
        (
            "'Segregated in storage' means away from any source of ignition, not mixed near open flame, and have adequate ventilation.",
            "True",
            "False",
            "All of the above.",
            "None of the above.",
            "B"
        ),
        (
            "Protective gloves that are not washed with soap and water and disinfected must be...",
            "Given to clients.",
            "Disposed of after use on a client.",
            "Stored in a container with lid.",
            "Sealed in a plastic bag.",
            "B"
        ),
        (
            "Restrooms shall be...",
            "For employees.",
            "Cleaned",
            "Accessible",
            "All of the above.",
            "D"
        ),
        (
            "Shampoo bowls and sinks must be...",
            "Clean and free of hair and residue.",
            "New",
            "Wet",
            "All of the above.",
            "A"
        ),
        (
            "Shampoo bowls, sinks, and back bar should be cleaned with...",
            "Water",
            "Low level disinfectant.",
            "Soap",
            "High level disinfectant.",
            "D"
        ),
        (
            "Sharp edged or pointed non-electrical tools and implement items which may pierce or cut the skin and draw blood.",
            "Shampoo bowls, styling chairs, waiting chairs.",
            "Stationary dryers, barber cabinets, nail technology tables.",
            "Razors, cuticle nippers, cuticle pushers, nail clippers, tweezers, comedone extractors, shears, metal nail files.",
            "Protective gloves, sealed plastic bags, containers with lids.",
            "C"
        ),
        (
            "Shelves that store chemicals must be...",
            "Non-absorbant and clean.",
            "Have a label 'this is a clean area'.",
            "Have a label 'the last day cleaned'.",
            "All of the above.",
            "A"
        ),
        (
            "Sinks located in a restroom do not qualify as water source...",
            "For clients.",
            "For the facility.",
            "For the city.",
            "For washing hands.",
            "B"
        ),
        (
            "Sinks located in the restroom do not qualify as a water source for the facility.",
            "True",
            "False",
            "All of the above.",
            "None of the above.",
            "A"
        ),
        (
            "Sinks located in the restroom qualifies as a water source for the facility.",
            "True",
            "False",
            "All of the above.",
            "None of the above.",
            "B"
        ),
        (
            "Smoking by either practitioner or client is prohibited...",
            "At dispensary area.",
            "Outside",
            "Reception area.",
            "None of the above.",
            "A"
        ),
        (
            "Soiled towels should be stored in...",
            "Waste basket.",
            "Plastic bag.",
            "Trash",
            "Covered fire retardant container.",
            "D"
        ),
        (
            "Steam sterilizers, dry heat or autoclave must be registered and listed with...",
            "Occupational Safety and Health Administration",
            "Environmental Protection Agency",
            "US Food and Drug Administration",
            "Material Safety Data Sheet",
            "C"
        ),
        (
            "Steam sterilizers, must be registered and listed with the EPA.",
            "True",
            "False",
            "All of the above.",
            "None of the above.",
            "B"
        ),
        (
            "Steam sterilizers, must be registered and listed with OSHA.",
            "True",
            "False",
            "All of the above.",
            "None of the above.",
            "B"
        ),
        (
            "Tetanus and lock jaw is produced by which pathogenic bacterium?",
            "Tuberculocidal",
            "Bacilli",
            "Poison oak.",
            "Staphylococci",
            "B"
        ),
        (
            "The ability of the body to destroy and resist infection is...",
            "Perseverance",
            "Immunity",
            "Perspiration",
            "Inflammation",
            "B"
        ),
        (
            "The agency responsible for disinfection is...",
            "EPA",
            "FDA",
            "OSHA",
            "State government.",
            "A"
        ),
        (
            "The Board can inspect a salon.",
            "Any time that it is open for business.",
            "At noon.",
            "At the end of the day.",
            "None of the above.",
            "A"
        ),
        (
            "The cleanliness and sanitary condition of any shared or common area used by practitioners for separately licensed facilities or independent contractors located at a premise is the responsibility of:",
            "Facility owner.",
            "Practitioner",
            "Each licensee or registration holder at the premise.",
            "Client being serviced.",
            "C"
        ),
        (
            "The document authorizing the holder to perform services in a field of practice is...",
            "Board",
            "Certificate",
            "EPA",
            "Agency",
            "B"
        ),
        (
            "The entire area of the facility licensed by the agency and designated as a facility is called 'premises'.",
            "True",
            "False",
            "All of the above.",
            "None of the above.",
            "A"
        ),
        (
            "The entire area of the facility licensed by the agency and designated as a facility.",
            "Dispensary area.",
            "Work area.",
            "Employee lounge area.",
            "Premises",
            "D"
        ),
        (
            "The first and most important step to prepare manicuring service.",
            "Disinfect the table.",
            "Arrange color polish.",
            "Prepare implements on the table.",
            "Set antiseptic agents on the table.",
            "A"
        ),
        (
            "The first step in the decontamination process is called...",
            "Sterilization",
            "Liquidation",
            "Sanitation",
            "Disinfection",
            "C"
        ),
        (
            "The following terms are being used as defined by the general occupational safety and health rules, toxic and hazardous substances are...",
            "Corrosives",
            "Flammables",
            "Oxidizers",
            "All of the above.",
            "D"
        ),
        (
            "The process of destroying harmful organisms, including bacteria, viruses, germs, and fungi is:",
            "Disinfect",
            "Exfoliate",
            "Clean",
            "None of the above.",
            "A"
        ),
        (
            "The state board requires that a map is submitted to your salon when...",
            "It is in an urban area.",
            "It is in another state.",
            "It is in a rural area.",
            "All of the above.",
            "C"
        ),
        (
            "The towel used to clean up spilled polish remover must be placed in a...",
            "Closed container.",
            "Plastic bag.",
            "Fire retardant container.",
            "A, B & C",
            "C"
        ),
        (
            "The use of any product which restructures or changes the shape or appearance of hair, skin, or nails.",
            "Manicure",
            "Chemical service.",
            "Pedicure",
            "Exfoliation",
            "B"
        ),
        (
            "The Board shall authorize disinfecting agents approved by the...",
            "EPA",
            "FDA",
            "OSHA",
            "MSDS",
            "A"
        ),
        (
            "Those items which may on occasion pierce or cut the skin and draw blood includes razors, cuticle nippers, and cuticle pushers.",
            "Sharp edged or pointed electrical tools and implements.",
            "Sharp edged or pointed non-electrical tools and implements.",
            "Materials",
            "Equipment",
            "B"
        ),
        (
            "Tinea is an example of...",
            "Vegetable parasite.",
            "Communicable disease.",
            "Tuberculocidal",
            "Staphylococci",
            "A"
        ),
        (
            "To disinfect all non-electrical tools or implement, first...",
            "Rinse thoroughly with clean water.",
            "Remove all hair residues.",
            "Clean thoroughly with soap and water.",
            "All of the above.",
            "D"
        ),
        (
            "To disinfect electrical tools and implements...",
            "Remove all hair.",
            "Remove all foreign material.",
            "Disinfect with low level disinfectant.",
            "All of the above.",
            "D"
        ),
        (
            "To obtain a facility license, the applicant must meet the requirements:",
            "Proof of being 18 years of age.",
            "A map or direction to the facility if located in a rural area.",
            "A list of licensee providing services in the facility.",
            "All of the above.",
            "D"
        ),
        (
            "To treat callous for clients, we use:",
            "Credo knife.",
            "Emery board.",
            "Scissors",
            "Foot files.",
            "D"
        ),
        (
            "Toilet waste must be discharged into:",
            "Public sewer.",
            "A septic tank.",
            "Drain field.",
            "All of the above.",
            "D"
        ),
        (
            "Unbuffered alpha hydroxy acids at concentrations greater than...",
            "10%",
            "15%",
            "20%",
            "25%",
            "B"
        ),
        (
            "Use of bar soap and common towel is prohibited.",
            "True",
            "False",
            "All of the above.",
            "None of the above.",
            "A"
        ),
        (
            "Ventilation by natural or mechanical methods which remove fumes, vapor, or dust.",
            "Vacuum",
            "Strong ventilation.",
            "Adequate ventilation.",
            "B & C",
            "C"
        ),
        (
            "Ventilation by natural or mechanical methods which remove or exhausts fumes, vapors or dust to prevent hazardous conditions is ___ ventilation.",
            "Adequate",
            "Strong",
            "Excessive",
            "Inadequate",
            "A"
        ),
        (
            "Walls and ceiling shall be clean and free of excessive...",
            "Mildew",
            "Condensation",
            "Peeling paint.",
            "All of the above.",
            "D"
        ),
        (
            "What animals are allowed in a facility?",
            "Trained guide dogs.",
            "Fish",
            "Birds",
            "A & B",
            "A"
        ),
        (
            "What animals are allowed in a facility?",
            "Dogs",
            "Fish in aquarium.",
            "Birds",
            "All of the above.",
            "B"
        ),
        (
            "What documents inform the cosmetologist about hazardous chemicals?",
            "The product direction on the label.",
            "Product knowledge courses.",
            "MSDS",
            "DSMS",
            "C"
        ),
        (
            "What is 'common area'?",
            "Dispensing area and office.",
            "Sinks",
            "Front desk of a salon.",
            "An area of a facility that is used by all practitioners.",
            "D"
        ),
        (
            "What is 'fire retardant'?",
            "Air tight and metal container.",
            "An air tight plastic can.",
            "Closable container.",
            "None of the above.",
            "A"
        ),
        (
            "What should a salon floor be?",
            "Non-absorbant.",
            "Disinfectant",
            "Sanitary",
            "Absorbant",
            "A"
        ),
        (
            "What should the back bar be?",
            "Cool, dry place.",
            "Clean",
            "Wooden floor.",
            "Non-absorbant.",
            "D"
        ),
        (
            "What should you and your clients wear when working with chemicals?",
            "Protective eyes.",
            "Glove",
            "Mask",
            "Apron",
            "B"
        ),
        (
            "When an authorization (certificate) is expired, the Freelance Authorization or Independent Contractor Registration becomes...",
            "Dormant",
            "Inactive",
            "Expired",
            "B & C",
            "A"
        ),
        (
            "When disinfecting a manicure table, you should:",
            "Disinfectant",
            "Clean",
            "Let it dry.",
            "All of the above.",
            "D"
        ),
        (
            "When disinfecting implements or tools, which methods can we use?",
            "Totally immersed in high level disinfectant.",
            "Steam",
            "Dry heat & UV.",
            "All of the above.",
            "D"
        ),
        (
            "When disinfecting implements or tools using high level disinfectant they should be...",
            "Half immersed.",
            "Dry",
            "Totally immersed.",
            "Wet",
            "C"
        ),
        (
            "When disinfecting implements or tools, which methods can we use?",
            "Totally immersed in high level disinfectant.",
            "Steam heat.",
            "Dry heat and UV light.",
            "All of the above.",
            "D"
        ),
        (
            "When do you need a new license for a facility?",
            "Relocation",
            "To stay legal.",
            "New owner.",
            "All of the above.",
            "C"
        ),
        (
            "When implements contact blood or fluid, they should be disposed in a...",
            "Plastic bag.",
            "Sealable rigid container.",
            "Waste basket.",
            "Covered trash can.",
            "B"
        ),
        (
            "When mixing chemicals, you should...",
            "Do it in a closed room.",
            "Throw unused chemicals down the drain.",
            "Not mix near open flame or other sources of potential ignition.",
            "Mix anywhere as long as it's clean.",
            "C"
        ),
        (
            "When mixing chemicals in the dispensing area, you should...",
            "Move away from any source of ignition.",
            "Not mix near an open flame.",
            "Have adequate ventilation.",
            "All of the above.",
            "D"
        ),
        (
            "When paper or fabric (cloth) application is used, it is binded by...",
            "Nail glue.",
            "Tips",
            "Resin wraps.",
            "Polish",
            "C"
        ),
        (
            "When performing a service or procedure that routinely involves exposure to blood or other potentially infectious materials, you need to wear...",
            "Eye goggles.",
            "Mask/shield.",
            "Single use disposable protective gloves.",
            "Clothing",
            "C"
        ),
        (
            "When someone is performing in an unethical, unprofessional or dishonest manner, acts involving violence is defined as:",
            "Default",
            "Probation",
            "Misconduct",
            "Negligence",
            "C"
        ),
        (
            "When there is bodily fluid oozing, the practitioners must...",
            "Wear gloves.",
            "Wait to heal scab phase.",
            "Refuse service.",
            "Apply antiseptic.",
            "A"
        ),
        (
            "When using linen as a cushion during nail technology services, the practitioner may use a protective disposable cover on the linen or towel to:",
            "Keep linen or towel clean.",
            "Prevent contact with the client's skin.",
            "Avoid cleaning.",
            "Use on more than one client.",
            "B"
        ),
        (
            "When you have a Freelance Authorization, you have the ability to practice...",
            "Outside of licensed facility.",
            "In your home.",
            "In client's home.",
            "In any facility.",
            "A"
        ),
        (
            "Which area needs to be non-porous (absorbant)?",
            "Reception area.",
            "Restroom",
            "Working area.",
            "All of the above.",
            "C"
        ),
        (
            "While loosening the cuticle, keep the cuticle...",
            "Sanitized",
            "Clean",
            "Moist",
            "Dry",
            "C"
        ),
        (
            "Who can be an applicant for obtaining a facility license?",
            "Disabled person.",
            "Natural person.",
            "Male applicant only.",
            "All of the above.",
            "B"
        ),
        (
            "Written authorization issued to a person to operate a facility for providing services.",
            "Permit",
            "Certificate",
            "License",
            "Independent Contractor",
            "C"
        ),
        (
            "You may renew your license ___ days before it expires.",
            "15",
            "30",
            "45",
            "60",
            "C"
        ),
        (
            "Your certificate is suspended when:",
            "You work without caring.",
            "You do not follow safety steps.",
            "You have a communicable disease, but you still keep working.",
            "All of the above.",
            "C"
        )
    ]
}






























































