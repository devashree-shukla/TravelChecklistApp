//
//  ChecklistItemsViewModel.swift
//  TravelChecklist
//
//  Created by devashree shukla on 26/03/24.
//

import Foundation

let defaultChecklistItems = [ItemChecklist(name: "Tooth paste", category: .OralCare, isPacked: false),
                             ItemChecklist(name: "Tooth brush", category: .OralCare, isPacked: false),
                             ItemChecklist(name: "Toung cleaner", category: .OralCare, isPacked: false),
                              
                              ItemChecklist(name: "Shampoo", category: .HairCare, isPacked: false),
                              ItemChecklist(name: "Conditioner", category: .HairCare, isPacked: false),
                              ItemChecklist(name: "Hair oil", category: .HairCare, isPacked: false),
                              ItemChecklist(name: "Hair serum", category: .HairCare, isPacked: false),
                              ItemChecklist(name: "Comb", category: .HairCare, isPacked: false),
                              
                              ItemChecklist(name: "Shower Gel / Soap", category: .BodyCare, isPacked: false),
                              ItemChecklist(name: "Moisturiser", category: .BodyCare, isPacked: false),
                              ItemChecklist(name: "Loofah", category: .BodyCare, isPacked: false),
                              ItemChecklist(name: "Nail cutter", category: .BodyCare, isPacked: false),
                              ItemChecklist(name: "Powder", category: .BodyCare, isPacked: false),
                              ItemChecklist(name: "Earbugs", category: .BodyCare, isPacked: false),
                              
                              ItemChecklist(name: "Fash wash", category: .FaceCare, isPacked: false),
                              ItemChecklist(name: "Lip balm", category: .FaceCare, isPacked: false),
                               
                              ItemChecklist(name: "Shose for treks/hikes", category: .Footwear, isPacked: false),
                              ItemChecklist(name: "Casual Footwear for city tours", category: .Footwear, isPacked: false),
                              ItemChecklist(name: "Shoe Bags", category: .Footwear, isPacked: false),
                              
                              ItemChecklist(name: "Power bank (should not be in Check-in bag, should be in hand luggage)", category: .Electronics, isPacked: false),
                              ItemChecklist(name: "Mobile", category: .Electronics, isPacked: false),
                              ItemChecklist(name: "Laptop", category: .Electronics, isPacked: false),
                              ItemChecklist(name: "Health activity tracker", category: .Electronics, isPacked: false),
                              ItemChecklist(name: "Earbud / Headphone", category: .Electronics, isPacked: false),
                              ItemChecklist(name: "Power bank charger", category: .Electronics, isPacked: false),
                              ItemChecklist(name: "Mobile charger", category: .Electronics, isPacked: false),
                              ItemChecklist(name: "Laptop charger", category: .Electronics, isPacked: false),
                              ItemChecklist(name: "Health activity tracker charger", category: .Electronics, isPacked: false),
                              ItemChecklist(name: "Earbud charger", category: .Electronics, isPacked: false),
                               
                              ItemChecklist(name: "Dresses", category: .Clothing, isPacked: false),
                              ItemChecklist(name: "Socks", category: .Clothing, isPacked: false),
                              ItemChecklist(name: "Undergarments", category: .Clothing, isPacked: false),
                              ItemChecklist(name: "Night dress", category: .Clothing, isPacked: false),
                              ItemChecklist(name: "Power bank charger", category: .Clothing, isPacked: false),
                              ItemChecklist(name: "Mobile charger", category: .Clothing, isPacked: false),
                               
                              ItemChecklist(name: "Belt", category: .Essential, isPacked: false),
                              ItemChecklist(name: "Watch", category: .Essential, isPacked: false),
                              ItemChecklist(name: "Spacks", category: .Essential, isPacked: false),
                              ItemChecklist(name: "Bath towels (quick dry preferred)", category: .Essential, isPacked: false),
                              ItemChecklist(name: "Napkins", category: .Essential, isPacked: false),
                              ItemChecklist(name: "Hankerchief", category: .Essential, isPacked: false),
                              ItemChecklist(name: "Sanitizer", category: .Essential, isPacked: false),
                              ItemChecklist(name: "Extra Backpack for mini tours", category: .Essential, isPacked: false),
                              ItemChecklist(name: "Working Debit Cards", category: .Essential, isPacked: false),
                              ItemChecklist(name: "Working Credit Cards", category: .Essential, isPacked: false),
                              ItemChecklist(name: "Identity Proofs", category: .Essential, isPacked: false),
                              ItemChecklist(name: "Lock/Number Lock for luggage protection", category: .Essential, isPacked: false),
                              ItemChecklist(name: "Wet Laundry Bags (to carry wet cloths, if any)", category: .Essential, isPacked: false),
                              ItemChecklist(name: "Money in Cash, well distributed", category: .Essential, isPacked: false),
                              ItemChecklist(name: "Keep a name card with address + all info in all the bags.", category: .Essential, isPacked: false),
                              
                              ItemChecklist(name: "Plastic bags", category: .Extra, isPacked: false),
                              ItemChecklist(name: "Newspaper", category: .Extra, isPacked: false),
                              ItemChecklist(name: "Lightweight Warm Shawl or Blanket [ Mainly for train journey if you don't like public blankets much]", category: .Extra, isPacked: false),
                              ItemChecklist(name: "Lightweight Bed sheet [ Mainly for train journey if you don't like public bedsheets much]", category: .Extra, isPacked: false),
                              ItemChecklist(name: "Cable Connector / Extension if planning for worcation , 4 slots enough", category: .Extra, isPacked: false),
                              ItemChecklist(name: "Home remedies like ajwain , long, mukhwas, sonth, hajma, jaljeera etc for stomuch problems", category: .Extra, isPacked: false),
                              ItemChecklist(name: "Mini Scents / Attars / Deodorants (Should be in check-in bag, not hand luggage)", category: .Extra, isPacked: false),
                              ItemChecklist(name: "Masks", category: .Extra, isPacked: false),
                              ItemChecklist(name: "Water bottle (can use the first plastic bottle you buy on trip)", category: .Extra, isPacked: false),
                              ItemChecklist(name: "Mouth freshner", category: .Extra, isPacked: false),
                              ItemChecklist(name: "Peperments", category: .Extra, isPacked: false),
                              ItemChecklist(name: "Purse / hang bag to carry around", category: .Extra, isPacked: false),
                              ItemChecklist(name: "Disposable dish", category: .Extra, isPacked: false),
                              ItemChecklist(name: "Glass", category: .Extra, isPacked: false),
                              ItemChecklist(name: "Knife", category: .Extra, isPacked: false),
                              ItemChecklist(name: "Spoon", category: .Extra, isPacked: false),
                              
                              ItemChecklist(name: "Some snacks", category: .Food, isPacked: false),
                              
                              ItemChecklist(name: "Bandage", category: .Health, isPacked: false),
                              ItemChecklist(name: "Pudinhara", category: .Health, isPacked: false),
                              ItemChecklist(name: "PCM", category: .Health, isPacked: false),
                              ItemChecklist(name: "Sinarest", category: .Health, isPacked: false),
                              ItemChecklist(name: "Dolo", category: .Health, isPacked: false),
                              ItemChecklist(name: "Other medicines", category: .Health, isPacked: false)]
