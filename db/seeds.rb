# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Company.destroy_all
JobOffer.destroy_all

puts "Create company"

company = Company.create!(
  password: "avance_is_awesome",
  name: "Avancé Accessories",
  industry: "Fashion",
  email: "info@avanceaccessories.com",
  description:"Unique designs, hand-crafted silver jewelry."
)

company = Company.create!(
  password: "swarovki_sparkles",
  name: "Swarovski",
  industry: "Fashion",
  email: "info@swarovski.com",
  description:"Classic"
)

company = Company.create!(
  password: "remingtonoutdoor_is_crazy",
  name: "Remington Outdoor",
  industry: "Arms",
  email: "info@remington.com",
  description:"Shots shots!"
)

company = Company.create!(
  password: "airbus_is_great",
  name: "Airbus Defence and Space",
  industry: "Aeronautics-Space",
  email: "info@airbus.com",
  description:"Space out and expand!"
)

company = Company.create!(
  password: "samick_is_great",
  name: "Samick Pianos",
  industry: "Musical Instruments and Equipment",
  email: "info@sony.com",
  description:"It's a Samick."
)

company = Company.create!(
  password: "amoy_is_great",
  name: "Amoy Foods - Taohua Daton",
  industry: "Food and Nutrition",
  email: "info@amoy.com",
  description:"Eat eat!"
)

puts "Create job application"

job = JobOffer.create!(
  name: 'Sales Associate - HKTDC Hong Kong International Jewelry Show',
  city: 'Hong Kong',
  start_date: Date.new(2016, 5, 3),
  end_date: Date.new(2017, 9, 17),
  job_description: 'The Sales Associate will work closely with a broad range of internal stakeholders including Marketing, Sales, Sales Training and other key stakeholders within the organization.  This role is based in Hong Kong, where you will be part of a dynamic organization within a fast-moving and rapidly growing area of our business.
  You must be a flexible, deadline-driven professional with the ability to juggle multiple projects simultaneously and drive daily project management. In return, we will offer you a creative and collaborative working environment with excellent benefits and competitive salary and benefits.',
  address: 'Hong Kong Convention and Exhibition Centre, 1 Expo Drive, Wan Chai, Hong Kong',
  wage: 20,
  company_id: company.id
)

job = JobOffer.create!(

  name: 'Electrician & Booth builder - Arizona Jogs Gem and Jewelry Show',
  city: 'Tucson',
  start_date: Date.new(2016, 10, 3),
  end_date: Date.new(2017, 3, 10),
  job_description: 'The Electrician & Booth builder is responsible for achieving sales objectives and growing sales volume for Essilor premium branded products in assigned accounts within an assigned geographic territory. They are also responsible for acquisition and growth of their independent ECP’s business and loyalty through the positioning and delivery of Essilor’s branded products, marketing strategies, consumer initiatives, service excellence and technical superiority.'
  address: 'Tucson Expo Center - 3750 E Irvington Rd, Tucson, Arizona 85714',
  wage: 25,
  company_id: company.id
)

job = JobOffer.create!(

  name: 'Sales Associate - Shot Show',
  city: 'Las Vegas',
  start_date: Date.new(2016, 5, 3),
  end_date: Date.new(2017, 9, 17),
  job_description: 'We are looking for a results driven retail Sales Associate to be responsible for all sales activities and sales associate job duties, from lead generation through to close. The successful candidate will be able to elevate company standards, achieve sales goals and meet clients expectations.',
  address: 'Sands Expo Center Las Vegas, The Grand Canal Shoppes, 201 Sands Ave, Las Vegas, NV 89169',
  wage: 15,
  company_id: company.id
)

job = JobOffer.create!(
  name: 'Marketing Associate - AIRTEC - International Aerospace Supply Fair',
  city: 'Frankfurt',
  start_date: Date.new(2016, 5, 3),
  end_date: Date.new(2017, 9, 17),
  job_description: 'Undertake a market analysis to include details on the market characteristics (market size and growth - dollars, units, prescriptions, days of therapy, patient types, market share development, number of competitors, market trends, market attractiveness); competitor characteristics (product characteristics, competitor marketing strategies, sales force activities, pricing analysis); prescriber characteristics (number of prescribers by specialty, physician prescription activity, desires and unmet needs).',
  address: 'Frankfurt Exhibition Center, Ludwig-Erhard-Anlage 1 60327 Frankfurt a. M.',
  wage: 13,
  company_id: company.id
)

job = JobOffer.create!(
  name: 'Sales Representative - Musikmesse Frankfurt',
  city: 'Frankfurt',
  start_date: Date.new(2016, 5, 3),
  end_date: Date.new(2017, 9, 17),
  job_description: 'As a sales representative you would sell your company’s products or services. If you ve got good people skills, and are good at persuading and negotiating, being a sales representative might be a job you would enjoy.',
  address: 'Frankfurt Exhibition Center, Ludwig-Erhard-Anlage 1 60327 Frankfurt a. M., Germany',
  wage: 13,
  company_id: company.id
)

job = JobOffer.create!(
  name: 'Translator - The 20th China (Shanghai) International Nutrition and Health Industry Expo',
  city: 'Shanghai',
  start_date: Date.new(2016, 5, 3),
  end_date: Date.new(2017, 9, 17),
  job_description: 'Translators convert written material from one or more 'source languages' into the 'target language', ensuring that the translated version conveys the meaning of the original as clearly as possible. The target language is normally the translator s mother tongue. Transcreating may also be part of the job, which is a mix of translation, localisation and copywriting, where the text is culturally and linguistically adapted to suit the reader.',
  address: 'Shanghai New International Expo Centre (SNIEC), 2345 Long Yang Road, Pudong Area, Shanghai, 201204, China',
  wage: 30,
  company_id: company.id
)

