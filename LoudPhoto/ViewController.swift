//
//  ViewController.swift
//  LoudPhoto
//
//  Created by AdrenResi on 10/19/20.
//

import UIKit
import AVFoundation

// call setupAudioSessionForRecording() during controlling view load
// call startRecording() to start recording in a later UI call

class ViewController: UIViewController {
    
    @IBOutlet weak var photo: UIImageView!
    var isRecording: Bool = false
    
    let audioObject = RecordAudio()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        audioObject.setupAudioSessionForRecording()
        
    }
    @IBAction func takePhoto(_ sender: Any) {
        if isRecording == false {
            audioObject.startRecording()
            isRecording = true
        } else {
            audioObject.stopRecording()
            isRecording = false
        }
        
    }
    
    
    
}

