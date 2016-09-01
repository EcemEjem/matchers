Company.destroy_all
JobOffer.destroy_all
WorkExperience.destroy_all
Employee.destroy_all

puts "Create company..."

company_avance = Company.create!(
  password: "avance",
  name: "Avancé Accessories LLC",
  industry: "Jewelry and accessories",
  email: "info@avanceaccessories.com",
  description:"B2B wholesale company focused on sterling silver jewelry and precious gem stones.",
  photo: File.open(Rails.root.join("db/fixtures/images/avance_mainpic2.jpg"))
)

company_swarovski = Company.create!(
  password: "swarovki_sparkles",
  name: "Swarovski",
  industry: "Fashion",
  email: "info@swarovski.com",
  description:"Classic"
)

company_remington = Company.create!(
  password: "remingtonoutdoor_is_crazy",
  name: "Remington Outdoor",
  industry: "Arms",
  email: "info@remington.com",
  description:"Shots shots!"
)

company_airbus = Company.create!(
  password: "airbus_is_great",
  name: "Airbus Defence and Space",
  industry: "Aeronautics-Space",
  email: "info@airbus.com",
  description:"Space out and expand!"
)

company_samick = Company.create!(
  password: "samick_is_great",
  name: "Samick Pianos",
  industry: "Musical Instruments and Equipment",
  email: "info@sony.com",
  description:"It's a Samick."
)

company_amoy = Company.create!(
  password: "amoy_is_great",
  name: "Amoy Foods - Taohua Daton",
  industry: "Food and Nutrition",
  email: "info@amoy.com",
  description:"Eat eat!"
)

puts "Create job offers..."

job = JobOffer.create!(

  name: 'Sales Representative',
  event: 'UBM Asia Trade Show',
  city: 'Hong Kong',
  start_date: Date.new(2016, 9, 15),
  end_date: Date.new(2016, 9, 19),
  job_description: 'The Sales Representative will work closely with a broad range of internal stakeholders including Marketing, Sales, Sales Training and other key stakeholders within the organization. This role is based in Hong Kong, where you will be part of a dynamic organization within a fast-moving and rapidly growing area of our business. You must be a flexible, deadline-driven professional with the ability to juggle multiple projects simultaneously and drive daily project management. In return, we will offer you a creative and collaborative working environment with excellent benefits and competitive salary and benefits.',
  address: 'Hong Kong Convention and Exhibition Centre, 1 Expo Drive, Wan Chai, Hong Kong',
  wage: 15,
  company: company_avance,
  photo: File.open(Rails.root.join("db/fixtures/images/HK_harbour_copy.jpg"))
)

job = JobOffer.create!(

  name: 'Electrician',
  event: 'Fixtures Fine Mineral Wholesale Show',
  city: 'Tucson',
  start_date: Date.new(2017, 12, 5),
  end_date: Date.new(2017, 12, 9),
  job_description: 'The electrician will build the electricity network of the trade show booths before the show. S/he will be responsible for disassembling the electricity and booth lights post-show.',
  address: '500 W Grant Road Tucson, AZ 85705 United States',
  wage: 25,
  company: company_avance,
  photo: File.open(Rails.root.join("db/fixtures/images/hk_goodpics_copy.jpg"))
)

job = JobOffer.create!(
  name: 'Sales Associates',
  event: 'Accessories the Show',
  city: 'New York',
  start_date: Date.new(2016, 10, 3),
  end_date: Date.new(2016, 10, 10),
  job_description: 'We are looking for a results driven wholesale Sales Associate to be responsible for all sales activities and sales associate job duties, from lead generation through to close. The successful candidate will be able to achieve sales goals set for the trade show and meet clients expectations.',
  address: 'Javits Center  655 W 34th St, New York, NY 10001 USA',
  wage: 17,
  company: company_avance,
  photo: File.open(Rails.root.join("db/fixtures/images/accessories_nyc_show_model.jpg"))
)

job = JobOffer.create!(
  name: 'Model',
  event: 'Arizona Jogs Gem and Jewelry Show',
  city: 'Tucson',
  start_date: Date.new(2016, 8, 8),
  end_date: Date.new(2016, 9, 11),
  job_description: '',
  address: 'Tucson Expo Center - 3750 E Irvington Rd, Tucson, Arizona 85714',
  wage: 15,
  company: company_avance,
  photo: File.open(Rails.root.join("db/fixtures/images/avance_jogs_shoot.jpg"))
)

job = JobOffer.create!(
  name: 'Sales Asssociate',
  event: 'JCK Las Vegas Show',
  city: 'Las Vegas',
  start_date: Date.new(2016, 6, 5),
  end_date: Date.new(2016, 6, 8),
  job_description: 'As a sales associate, you will do sales as well as networking with potential clients. During the tradeshow, you will target international B2B companies as well as national companies based in the US (mainly California, Arizona, North Carolina, Nevada, and New York). Patience, persuasiveness and attentiveness are a must for the position.',
  address: 'Mandalay Bay Resort & Casino, 3950 S Las Vegas Blvd, Las Vegas, NV 89119 USA',
  wage: 12,
  company: company_avance,
  photo: File.open(Rails.root.join("db/fixtures/images/las_vegas_copy.jpg"))
)

job = JobOffer.create!(
  name: 'Translator - Cantonese',
  event: 'Asia World Expo - HKTDC Hong Kong International Jewelry Show',
  city: 'Hong Kong',
  start_date: Date.new(2016, 9, 15),
  end_date: Date.new(2016, 9, 19),
  job_description: "Liaise with Cantonese-speaking clients in the Asia World Expo. Assist in sales and translations between the company and other B2B companies. Focus mainly on East Asian clients.",
  address: 'Hong Kong Convention and Exhibition Centre 1 Expo Drive, Wan Chai, Hong Kong',
  wage: 20,
  company: company_avance,
  photo: File.open(Rails.root.join("db/fixtures/images/HK_convention_copy.jpg"))
)

employee_heyjude = Employee.create!(
  email: 'hey@jude.com',
  password: 123456,
  first_name: 'Hey',
  last_name: 'Jude',
  age: 27,
  gender: 'F',
  location: 'Hong Kong',
  availability: 10,
  photo: File.open(Rails.root.join("db/fixtures/images/heyjude_avance.jpg"))
)

employee_margarita = Employee.create!(
  email: 'margarita@gmail.com',
  password: 123456,
  first_name: 'Margarita',
  last_name: 'Itaj',
  age: 20,
  gender: 'F',
  location: 'Luxembourg',
  availability: 10,
  photo: File.open(Rails.root.join("db/fixtures/images/suggested_margarita.jpg"))
)

employee_charles = Employee.create!(
  email: 'charles@gmail.com',
  password: 123456,
  first_name: 'Charles',
  last_name: 'De Poortere',
  age: 20,
  gender: 'M',
  location: 'Brussels',
  availability: 10,
  photo: File.open(Rails.root.join("db/fixtures/images/suggested_charles.JPG"))
)

employee_ecem = Employee.create!(
  email: 'ecemerseker@gmail.com',
  password: 123456,
  first_name: 'Ecem',
  last_name: 'Erseker',
  age: 20,
  gender: 'F',
  location: 'Istanbul',
  availability: 10,
  photo: File.open(Rails.root.join("db/fixtures/images/suggested_ecem.jpg"))
)

work_experience = WorkExperience.create!(
  employee_id: employee_heyjude.id,
  industry:'Fashion',
  experience: 5,
  company:'Swarovski',
  title: 'Sales Associate',
  description: 'Increased sales by 20%.',
  start_date: '2013-09-09',
  end_date: '2016-09-09'
)

work_experience = WorkExperience.create!(
  employee_id: employee_heyjude.id,
  industry:'Modeling',
  experience: 5,
  company:'Urban Co',
  title: 'Catalog Model',
  description: 'Modeled for different brand lines for catalog shoots.',
  start_date: '2013-01-17',
  end_date: '2016-01-20'
)

work_experience = WorkExperience.create!(
  employee_id: employee_heyjude.id,
  industry:'Translation and languages',
  experience: 4,
  company:'Independent',
  title: 'Translator',
  description: 'Independent, freelance translator of Cantonese to English for various businesses.',
  start_date: '2014-01-17',
  end_date: '2016-01-20'
)

work_experience = WorkExperience.create!(
  employee_id: employee_heyjude.id,
  industry:'Fashion',
  experience: 5,
  company:'Pandora',
  title: 'Sales Assistant',
  description: 'Assisted in B2B wholesale marketing and sales.',
  start_date: '2011-09-09',
  end_date: '2013-09-09'
)

work_experience = WorkExperience.create!(
  employee_id: employee_heyjude.id,
  industry:'Modeling',
  experience: 5,
  company:'Coast',
  title: 'Catalog Model',
  description: 'Catwalk model.',
  start_date: '2011-01-17',
  end_date: '2013-01-20'
)

work_experience = WorkExperience.create!(
  employee_id: employee_heyjude.id,
  industry:'Translation and languages',
  experience: 4,
  company:'Park & Choi Manufacturing',
  title: 'Translator',
  description: 'Independent, freelance translator.',
  start_date: '2012-01-17',
  end_date: '2014-01-20'
)
