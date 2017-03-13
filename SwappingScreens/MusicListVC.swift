//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Bettina on 3/12/17.
//  Copyright © 2017 Bettina Prophete. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func load3rdScreenButtonPressed(_ sender: Any) {
        let songTitle = "Bye Bye Bye"
        performSegue(withIdentifier: "musicListToPlaySong", sender: songTitle)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
            if let song = sender as? String {
                destination.selectedSong = song
            }
            
        }
        }
        
        
}
