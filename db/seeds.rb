# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# puts "Cleaning database..."
Company.destroy_all
JobOffer.destroy_all

puts "Create company..."

company_avance = Company.create!(
  password: "avance",
  name: "Avancé Accessories LLC",
  industry: "Jewelry and accessories",
  email: "info@avanceaccessories.com",
  description:"B2B wholesale company focused on sterling silver jewelry and precious gem stones."
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
  name: 'Sales Associate',
  event: 'Asia World Expo - HKTDC Hong Kong International Jewelry Show',
  city: 'Hong Kong',
  start_date: Date.new(2016, 9, 15),
  end_date: Date.new(2016, 9, 19),
  job_description: 'The Sales Associate will work closely with a broad range of internal stakeholders including Marketing, Sales, Sales Training and other key stakeholders within the organization.  This role is based in Hong Kong, where you will be part of a dynamic organization within a fast-moving and rapidly growing area of our business.
  You must be a flexible, deadline-driven professional with the ability to juggle multiple projects simultaneously and drive daily project management. In return, we will offer you a creative and collaborative working environment with excellent benefits and competitive salary and benefits.',
  address: 'Hong Kong Convention and Exhibition Centre, 1 Expo Drive, Wan Chai, Hong Kong',
  wage: 12,
  company: company_avance,
  photo: File.open(Rails.root.join("db/fixtures/images/01_job_offer.jpg"))
)

job = JobOffer.create!(

  name: 'Electrician & Booth builder',
  event: 'Arizona Jogs Gem and Jewelry Show',
  city: 'Tucson',
  start_date: Date.new(2016, 10, 3),
  end_date: Date.new(2017, 3, 10),
  job_description: 'The Electrician & Booth builder is responsible for achieving sales objectives and growing sales volume for Essilor premium branded products in assigned accounts within an assigned geographic territory. They are also responsible for acquisition and growth of their independent ECP’s business and loyalty through the positioning and delivery of Essilor’s branded products, marketing strategies, consumer initiatives, service excellence and technical superiority.',
  address: 'Tucson Expo Center - 3750 E Irvington Rd, Tucson, Arizona 85714',
  wage: 25,
  company: company_avance,
  photo: File.open(Rails.root.join("db/fixtures/images/02_job_offer.jpg"))
)

job = JobOffer.create!(

  name: 'Sales Associate',
  event: 'Shot Show',
  city: 'Las Vegas',
  start_date: Date.new(2016, 5, 3),
  end_date: Date.new(2017, 9, 17),
  job_description: 'We are looking for a results driven retail Sales Associate to be responsible for all sales activities and sales associate job duties, from lead generation through to close. The successful candidate will be able to elevate company standards, achieve sales goals and meet clients expectations.',
  address: 'Sands Expo Center Las Vegas, The Grand Canal Shoppes, 201 Sands Ave, Las Vegas, NV 89169',
  wage: 15,
  company: company_avance,
  photo: File.open(Rails.root.join("db/fixtures/images/03_job_offer.jpg"))
)

job = JobOffer.create!(
  name: 'Marketing Associate',
  event: 'AIRTEC - International Aerospace Supply Fair',
  city: 'Frankfurt',
  start_date: Date.new(2016, 5, 3),
  end_date: Date.new(2017, 9, 17),
  job_description: 'Undertake a market analysis to include details on the market characteristics (market size and growth - dollars, units, prescriptions, days of therapy, patient types, market share development, number of competitors, market trends, market attractiveness); competitor characteristics (product characteristics, competitor marketing strategies, sales force activities, pricing analysis); prescriber characteristics (number of prescribers by specialty, physician prescription activity, desires and unmet needs).',
  address: 'Frankfurt Exhibition Center, Ludwig-Erhard-Anlage 1 60327 Frankfurt a. M.',
  wage: 13,
  company: company_amoy,
  photo: File.open(Rails.root.join("db/fixtures/images/04_job_offer.jpg"))
)

job = JobOffer.create!(
  name: 'Sales Representative',
  event: 'Musikmesse Frankfurt',
  city: 'Frankfurt',
  start_date: Date.new(2016, 5, 3),
  end_date: Date.new(2017, 9, 17),
  job_description: 'As a sales associate, you will do sales as well as networking with potential clients. During the tradeshow, you will target B2B companies mainly based in the US and in East Asia. Patience, persuasiveness and attentiveness are a must for the position.',
  address: 'Frankfurt Exhibition Center, Ludwig-Erhard-Anlage 1 60327 Frankfurt a. M., Germany',
  wage: 13,
  company: company_amoy,
  photo: File.open(Rails.root.join("db/fixtures/images/05_job_offer.jpg"))
)

job = JobOffer.create!(
  name: 'Translator',
  event: 'The 20th China (Shanghai) International Nutrition and Health Industry Expo',
  city: 'Shanghai',
  start_date: Date.new(2016, 5, 3),
  end_date: Date.new(2017, 9, 17),
  job_description: "Translators convert written material from one or more 'source languages' into the 'target language', ensuring that the translated version conveys the meaning of the original as clearly as possible. The target language is normally the translator s mother tongue. Transcreating may also be part of the job, which is a mix of translation, localisation and copywriting, where the text is culturally and linguistically adapted to suit the reader.",
  address: 'Shanghai New International Expo Centre (SNIEC), 2345 Long Yang Road, Pudong Area, Shanghai, 201204, China',
  wage: 30,
  company: company_amoy,
  photo: File.open(Rails.root.join("db/fixtures/images/06_job_offer.jpg"))
)

