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
  description:"Unique designs, hand-crafted silver jewelry.")

company = Company.create!(
  password: "swarovki_sparkles",
  name: "Swarovski",
  industry: "Fashion",
  email: "info@swarovski.com",
  description:"Classic.")

company = Company.create!(
  password: "swarovski_is_crazy",
  name: "Remington Outdoor",
  industry: "Arms",
  email: "info@remington.com",
  description:"Shots shots!")

company = Company.create!(
  password: "airbus_is_great",
  name: "Airbus Defence and Space",
  industry: "Aeronautics-Space",
  email: "info@airbus.com",
  description:"Space out and expand!")

company = Company.create!(
  password: "sony_is_great",
  name: "Samick Pianos",
  industry: "Musical Instruments and Equipment",
  email: "info@sony.com",
  description:"It's a Samick.")

company = Company.create!(
  password: "amoy_is_great",
  name: "Amoy Foods - Taohua Daton",
  industry: "Food and Nutrition",
  email: "info@amoy.com",
  description:"Eat eat!")

puts "Create job application"

job = JobOffer.create!(
  name: 'Sales Associate - HKTDC Hong Kong International Jewelry Show',
  city: 'Hong Kong',
  date: 'September 15 - 19, 2016',
  address: 'Hong Kong Convention and Exhibition Centre, 1 Expo Drive, Wan Chai, Hong Kong',
  wage: 20,
  company_id: company.id)

job = JobOffer.create!(

  name: 'Electrician & Booth builder - Arizona Jogs Gem and Jewelry Show',
  city: 'Tucson',
  date: 'January 26 - February 6, 2017',
  address: 'Tucson Expo Center - 3750 E Irvington Rd, Tucson, Arizona 85714',
  wage: 25,
  company_id: company.id)

job = JobOffer.create!(
name: 'Sales Associate - Shot Show',
city: 'Las Vegas',
date: 'January 17 - 20, 2017',
address: 'Sands Expo Center Las Vegas, The Grand Canal Shoppes, 201 Sands Ave, Las Vegas, NV 89169',
wage: 15,
company_id: company.id)

job = JobOffer.create!(
name: 'Marketing Associate - AIRTEC - International Aerospace Supply Fair',
city: 'Frankfurt',
date: 'October 25 - 27, 2016',
address: 'Frankfurt Exhibition Center, Ludwig-Erhard-Anlage 1 60327 Frankfurt a. M.',
wage: 13,
company_id: company.id)

job = JobOffer.create!(
name: 'Sales Representative - Musikmesse Frankfurt',
city: 'Frankfurt',
date: 'April 5-8, 2017',
address: 'Frankfurt Exhibition Center, Ludwig-Erhard-Anlage 1 60327 Frankfurt a. M., Germany',
wage: 13,
company_id: company.id)

job = JobOffer.create!(
name: 'Translator - The 20th China (Shanghai) International Nutrition and Health Industry Expo',
city: 'Shanghai',
date: 'September 17-19, 2016',
address: 'Shanghai New International Expo Centre (SNIEC), 2345 Long Yang Road, Pudong Area, Shanghai, 201204, China',
wage: 30,
company_id: company.id)

