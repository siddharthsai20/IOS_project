//
//  ViewController.swift
//  CourseDisplayapp
//
//  Created by siddharth sai on 2/11/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var imageviewol: UIImageView!
    @IBOutlet weak var crsnumol: UILabel!
    @IBOutlet weak var crstitleol: UILabel!
    @IBOutlet weak var semofferedol: UILabel!
    @IBOutlet weak var prevbtnol: UIButton!
    @IBOutlet weak var nextbtnol: UIButton!
    
    var imageindex = 0
    let courses = [["img01","44555","Network Security","Fall 2024"],
    ["img02","44663","Mobile Computing","summer 2023"],
    ["img03","44222"," data streaming","spring 2025"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //update the course details(image,crsnum,title,sem offered)with the first element in the array.
        updatecoursedetails(imageNumber: imageindex)
        
        // previous buttion is disabled
        prevbtnol.isEnabled = false
        
        //next button is enabled
        nextbtnol.isEnabled = true
    }

    
    @IBAction func prevbtnclicked(_ sender: Any) {
        
        // decrement the image
        imageindex -= 1
        
        
        
        //update the course details
        updatecoursedetails(imageNumber: imageindex)
       
        //next button should be enabled
        nextbtnol.isEnabled = true
        
        // if the image index is 0 previous button must be disabled
        if (imageindex == 0) {
            prevbtnol.isEnabled = false
        }
        
    }
    
    
    @IBAction func nextbtnclicked(_ sender: Any) {
        
        // increment  the image
        imageindex += 1
        
        // update the coyrse details
        updatecoursedetails(imageNumber: imageindex)
        
        // previous button should be enabled
        prevbtnol.isEnabled = true
        
        //check if the element is at end of the array,next button should be disabled
        if (imageindex == courses.count - 1) {
            nextbtnol.isEnabled = false
        }
        
    }
    
    func updatecoursedetails(imageNumber:Int){
        imageviewol.image = UIImage(named: courses[imageindex][0])
        crsnumol.text = courses[imageindex][1]
        crstitleol.text = courses[imageindex][2]
        semofferedol.text = courses[imageindex][3]
        
        
    }
    
}

