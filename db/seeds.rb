# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


yoga_categories = [
    YogaCategory.create!(name: 'Core Yoga Poses', short_name: 'core_yoga_poses', description: 'Engage your abdominal muscles with core yoga poses that build a strong and stable center like Boat Pose, Dolphin Pose and Side Plank Pose.'),
    YogaCategory.create!(name: 'Seated Yoga Poses', short_name: 'seated_yoga_poses', description: 'Stay supple in your yoga practice with twisting asanas. Tone the belly, massage your internal organs, and relieve lower back pain in these seated yoga poses.'),
    YogaCategory.create!(name: 'Strengthening Yoga Poses', short_name: 'strengthening_yoga_poses', description: 'Work and tone your entire body with strengthening yoga poses like Chair Pose, Warrior I Pose and Extended Side Angle Pose.'),
    YogaCategory.create!(name: 'Chest Opening Yoga Poses', short_name: 'chest_opening_yoga_poses', description: 'Open your heart and shoulders in chest opening yoga poses like Camel Pose, Fish Pose and Wild Thing.'),
    YogaCategory.create!(name: 'Yoga Backbends', short_name: 'yoga_backbends', description: 'Discover the powerful effects of yoga backbends with step-by-step instructions, sequences, and expert advice to keep your practice pain-free.'),
    YogaCategory.create!(name: 'Forward Bend Yoga Poses', short_name: 'forward_bend_yoga_poses', description: 'Learn how to work stiff muscles safely, promote lower-body flexibility, and find correct alignment with forward bend yoga poses.'),
    YogaCategory.create!(name: 'Hip Opening Yoga Poses', short_name: 'hip_opening_yoga_poses', description: 'Loosen tight hips, improve your range of motion and circulation, alleviate back pain + more in these hip-opening yoga poses.'),
    YogaCategory.create!(name: 'Standing Yoga Poses', short_name: 'standing_yoga_poses', description: 'Develop strength and stability in your standing poses, and feel the benefits throughout your practice.'),
    YogaCategory.create!(name: 'Restorative Yoga Poses', short_name: 'restorative_yoga_poses', description: 'Restorative yoga focuses on winding down after a long day and relaxing your mind. At its core, this style focuses on body relaxation. You spend more time in fewer postures throughout the class. Many of the poses are modified to be easier and more relaxing. Like Iyengar, many props are used and are placed just right such as blankets, bolsters, and eye pillows. All of the props are there to help you sink deeper into relaxation. Restorative yoga also helps to cleanse and free your mind.'),
    YogaCategory.create!(name: 'Arm Balance Yoga Poses', short_name: 'arm_balance_yoga_poses', description: 'Move past fear, build better balance, and strengthen your body with arm balance yoga poses like Crane Pose, Plank Pose, Firefly Pose + more.'),
    YogaCategory.create!(name: 'Balancing Yoga Poses', short_name: 'balancing_yoga_poses', description: 'Build a strong foundation for your asana practice with these balancing yoga poses. Get step-by-step instructions and reap the benefits.'),
    YogaCategory.create!(name: 'Inversion Yoga Poses', short_name: 'inversion_yoga_poses', description: 'Master inversions—overcome fear and discover how to defy gravity with these step-by-step instructions. Learn how to prepare for and stay safe in inversion yoga poses.'),
]

yoga_poses_list = JSON.parse(File.read(File.join(Rails.root, "/app/assets/seed/yoga_poses.json")))

yoga_poses_list['yoga_poses'].each do |pose|
  ph = pose.to_h
  
  yoga_pose = YogaPose.new(sanskrit_name: ph['sanskrit_name'], english_name: ph['english_name'], img_url: ph['img_url'])
  yoga_pose.save
  
  ph['yoga_category_ids'].each {|c| 
    ypyc = YogaPoseYogaCategory.new(yoga_pose_id: yoga_pose.id, yoga_category_id: c)
    ypyc.save
  }
  
end