//
//  ViewController.swift
//  Recipes
//
//  Created by Alex Paul on 10/29/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  // outlets
  @IBOutlet weak var recipeImage: UIImageView!
  @IBOutlet weak var recipeName: UILabel!
  @IBOutlet weak var recipeDescription: UITextView!
  
  // recipe data
  let recipes = Recipe.getRecipes()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    updateRecipeAtIndex(index: 0)
  }
  
  @IBAction func recipeChanged(_ recipeButton: UIButton) {
    updateRecipeAtIndex(index: recipeButton.tag)
  }
  
  func updateRecipeAtIndex(index: Int) {
    // recipe button tags will be 0, 1 and 2
    let recipe = recipes[index] // value of index e. 0, 1, 2
    
    // udpate UI elements using the currenr Recipe instance above
    recipeImage.image = recipe.image
    recipeName.text = recipe.name
    recipeDescription.text = recipe.recipeDescription    
  }
}

