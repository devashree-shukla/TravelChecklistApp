//
//  ChecklistItemsViewModel.swift
//  TravelChecklist
//
//  Created by devashree shukla on 26/03/24.
//

import Foundation

let defaultChecklistItems = [ItemChecklist(name: "Tooth paste", category: ItemCategory.OralCare.rawValue, isPacked: false),
                             ItemChecklist(name: "Tooth brush", category: ItemCategory.OralCare.rawValue, isPacked: false),
                             ItemChecklist(name: "Toung cleaner", category: ItemCategory.OralCare.rawValue, isPacked: false),
                              
                              ItemChecklist(name: "Shampoo", category: ItemCategory.HairCare.rawValue, isPacked: false),
                              ItemChecklist(name: "Conditioner", category: ItemCategory.HairCare.rawValue, isPacked: false),
                              ItemChecklist(name: "Hair oil", category: ItemCategory.HairCare.rawValue, isPacked: false),
                              ItemChecklist(name: "Hair serum", category: ItemCategory.HairCare.rawValue, isPacked: false),
                              ItemChecklist(name: "Comb", category: ItemCategory.HairCare.rawValue, isPacked: false),
                              
                              ItemChecklist(name: "Shower Gel / Soap", category: ItemCategory.BodyCare.rawValue, isPacked: false),
                              ItemChecklist(name: "Moisturiser", category: ItemCategory.BodyCare.rawValue, isPacked: false),
                              ItemChecklist(name: "Loofah", category: ItemCategory.BodyCare.rawValue, isPacked: false),
                              ItemChecklist(name: "Nail cutter", category: ItemCategory.BodyCare.rawValue, isPacked: false),
                              ItemChecklist(name: "Powder", category: ItemCategory.BodyCare.rawValue, isPacked: false),
                              ItemChecklist(name: "Earbugs", category: ItemCategory.BodyCare.rawValue, isPacked: false),
                              
                              ItemChecklist(name: "Fash wash", category: ItemCategory .FaceCare.rawValue, isPacked: false),
                              ItemChecklist(name: "Lip balm", category: ItemCategory .FaceCare.rawValue, isPacked: false),
                               
                              ItemChecklist(name: "Shose for treks/hikes", category: ItemCategory .Footwear.rawValue, isPacked: false),
                              ItemChecklist(name: "Casual Footwear for city tours", category: ItemCategory .Footwear.rawValue, isPacked: false),
                              ItemChecklist(name: "Shoe Bags", category: ItemCategory .Footwear.rawValue, isPacked: false),
                              
                              ItemChecklist(name: "Power bank (should not be in Check-in bag, should be in hand luggage)", category: ItemCategory .Electronics.rawValue, isPacked: false),
                              ItemChecklist(name: "Mobile", category: ItemCategory .Electronics.rawValue, isPacked: false),
                              ItemChecklist(name: "Laptop", category: ItemCategory .Electronics.rawValue, isPacked: false),
                              ItemChecklist(name: "Health activity tracker", category: ItemCategory .Electronics.rawValue, isPacked: false),
                              ItemChecklist(name: "Earbud / Headphone", category: ItemCategory .Electronics.rawValue, isPacked: false),
                              ItemChecklist(name: "Power bank charger", category: ItemCategory .Electronics.rawValue, isPacked: false),
                              ItemChecklist(name: "Mobile charger", category: ItemCategory .Electronics.rawValue, isPacked: false),
                              ItemChecklist(name: "Laptop charger", category: ItemCategory .Electronics.rawValue, isPacked: false),
                              ItemChecklist(name: "Health activity tracker charger", category: ItemCategory .Electronics.rawValue, isPacked: false),
                              ItemChecklist(name: "Earbud charger", category: ItemCategory .Electronics.rawValue, isPacked: false),
                               
                              ItemChecklist(name: "Dresses", category: ItemCategory .Clothing.rawValue, isPacked: false),
                              ItemChecklist(name: "Socks", category: ItemCategory .Clothing.rawValue, isPacked: false),
                              ItemChecklist(name: "Undergarments", category: ItemCategory .Clothing.rawValue, isPacked: false),
                              ItemChecklist(name: "Night dress", category: ItemCategory .Clothing.rawValue, isPacked: false),
                              ItemChecklist(name: "Power bank charger", category: ItemCategory .Clothing.rawValue, isPacked: false),
                              ItemChecklist(name: "Mobile charger", category: ItemCategory .Clothing.rawValue, isPacked: false),
                               
                              ItemChecklist(name: "Belt", category: ItemCategory .Essential.rawValue, isPacked: false),
                              ItemChecklist(name: "Watch", category: ItemCategory .Essential.rawValue, isPacked: false),
                              ItemChecklist(name: "Spacks", category: ItemCategory .Essential.rawValue, isPacked: false),
                              ItemChecklist(name: "Bath towels (quick dry preferred)", category: ItemCategory .Essential.rawValue, isPacked: false),
                              ItemChecklist(name: "Napkins", category: ItemCategory .Essential.rawValue, isPacked: false),
                              ItemChecklist(name: "Hankerchief", category: ItemCategory .Essential.rawValue, isPacked: false),
                              ItemChecklist(name: "Sanitizer", category: ItemCategory .Essential.rawValue, isPacked: false),
                              ItemChecklist(name: "Extra Backpack for mini tours", category: ItemCategory .Essential.rawValue, isPacked: false),
                              ItemChecklist(name: "Working Debit Cards", category: ItemCategory .Essential.rawValue, isPacked: false),
                              ItemChecklist(name: "Working Credit Cards", category: ItemCategory .Essential.rawValue, isPacked: false),
                              ItemChecklist(name: "Identity Proofs", category: ItemCategory .Essential.rawValue, isPacked: false),
                              ItemChecklist(name: "Lock/Number Lock for luggage protection", category: ItemCategory .Essential.rawValue, isPacked: false),
                              ItemChecklist(name: "Wet Laundry Bags (to carry wet cloths, if any)", category: ItemCategory .Essential.rawValue, isPacked: false),
                              ItemChecklist(name: "Money in Cash, well distributed", category: ItemCategory .Essential.rawValue, isPacked: false),
                              ItemChecklist(name: "Keep a name card with address + all info in all the bags.", category: ItemCategory .Essential.rawValue, isPacked: false),
                              
                              ItemChecklist(name: "Plastic bags", category: ItemCategory .Extra.rawValue, isPacked: false),
                              ItemChecklist(name: "Newspaper", category: ItemCategory .Extra.rawValue, isPacked: false),
                              ItemChecklist(name: "Lightweight Warm Shawl or Blanket [ Mainly for train journey if you don't like public blankets much]", category: ItemCategory .Extra.rawValue, isPacked: false),
                              ItemChecklist(name: "Lightweight Bed sheet [ Mainly for train journey if you don't like public bedsheets much]", category: ItemCategory .Extra.rawValue, isPacked: false),
                              ItemChecklist(name: "Cable Connector / Extension if planning for worcation , 4 slots enough", category: ItemCategory .Extra.rawValue, isPacked: false),
                              ItemChecklist(name: "Home remedies like ajwain , long, mukhwas, sonth, hajma, jaljeera etc for stomuch problems", category: ItemCategory .Extra.rawValue, isPacked: false),
                              ItemChecklist(name: "Mini Scents / Attars / Deodorants (Should be in check-in bag, not hand luggage)", category: ItemCategory .Extra.rawValue, isPacked: false),
                              ItemChecklist(name: "Masks", category: ItemCategory .Extra.rawValue, isPacked: false),
                              ItemChecklist(name: "Water bottle (can use the first plastic bottle you buy on travel)", category: ItemCategory .Extra.rawValue, isPacked: false),
                              ItemChecklist(name: "Mouth freshner", category: ItemCategory .Extra.rawValue, isPacked: false),
                              ItemChecklist(name: "Peperments", category: ItemCategory .Extra.rawValue, isPacked: false),
                              ItemChecklist(name: "Purse / hang bag to carry around", category: ItemCategory .Extra.rawValue, isPacked: false),
                              ItemChecklist(name: "Disposable dish", category: ItemCategory .Extra.rawValue, isPacked: false),
                              ItemChecklist(name: "Glass", category: ItemCategory .Extra.rawValue, isPacked: false),
                              ItemChecklist(name: "Knife", category: ItemCategory .Extra.rawValue, isPacked: false),
                              ItemChecklist(name: "Spoon", category: ItemCategory .Extra.rawValue, isPacked: false),
                              
                              ItemChecklist(name: "Some snacks", category: ItemCategory .Food.rawValue, isPacked: false),
                              
                              ItemChecklist(name: "Bandage", category: ItemCategory .Health.rawValue, isPacked: false),
                              ItemChecklist(name: "Pudinhara", category: ItemCategory .Health.rawValue, isPacked: false),
                              ItemChecklist(name: "PCM", category: ItemCategory .Health.rawValue, isPacked: false),
                              ItemChecklist(name: "Sinarest", category: ItemCategory .Health.rawValue, isPacked: false),
                              ItemChecklist(name: "Dolo", category: ItemCategory .Health.rawValue, isPacked: false),
                              ItemChecklist(name: "Other medicines", category: ItemCategory .Health.rawValue, isPacked: false)
]

