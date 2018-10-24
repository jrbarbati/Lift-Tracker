//
//  WorkoutTableViewController.swift
//  Lift-Tracker
//
//  Created by Joseph Barbati on 10/23/18.
//  Copyright © 2018 Joseph Barbati. All rights reserved.
//

import UIKit

class WorkoutTableViewController: UITableViewController
{
    var workoutHistories: [WorkoutHistory] = [WorkoutHistory]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    
        let squat: Workout = Workout(name: "Squat", reps: 5, sets: 5)
        let squatHistory: WorkoutHistory = WorkoutHistory(workout: squat,
                                                          weight: 220,
                                                          date: Date())
        
        let benchPress: Workout = Workout(name: "Bench Press", reps: 5, sets: 5)
        let benchPressHistory: WorkoutHistory = WorkoutHistory(workout: benchPress,
                                                               weight: 160,
                                                               date: Date())
        
        let barbellRow: Workout = Workout(name: "Barbell Row", reps: 5, sets: 5)
        let barbellRowHistory: WorkoutHistory = WorkoutHistory(workout: barbellRow,
                                                               weight: 150,
                                                               date: Date())
    
        workoutHistories.append(squatHistory)
        workoutHistories.append(benchPressHistory)
        workoutHistories.append(barbellRowHistory)
    }

    // MARK: Table View Functions

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return workoutHistories.count
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 100.0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cellIdentifier = "WorkoutTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
            as? WorkoutTableViewCell else {
                fatalError("The deqeued cell is not an instance of WorkoutTableViewCell")
        }
        
        // TODO: Figure out spacing between cells, maybe a corner radius
        
        let workoutHistory = workoutHistories[indexPath.row]
        let workout = workoutHistories[indexPath.row].workout
        
        cell.workoutNameLabel.text = workout.name
        cell.changeWeightButton.setTitle(
            "\(workoutHistory.weight)lb \(workout.sets)x\(workout.reps)",
            for: .normal
        )
        
        return cell
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect)
    {
        // Drawing code
    }
    */
}
