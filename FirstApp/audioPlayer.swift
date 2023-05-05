//
//  audioPlayer.swift
//  FirstApp
//
//  Created by Zemise on 2023/5/5.
//

import Foundation
import AVFoundation

// MARK: - 音频播放器
var audioPlayer: AVAudioPlayer? // 可选类型，因为存在可能在初始化时候出现问题

func playerSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        }catch {
            print("不能播放指定的音效文件")
        }
    }
}
