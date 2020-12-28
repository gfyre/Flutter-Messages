import '../models/story_model.dart';

List<StoryModel> getStories() {
  List<StoryModel> stories = List();
  StoryModel storyModel = StoryModel();

  // First profile

  storyModel.imgUrl =
      'https://images.unsplash.com/photo-1502823403499-6ccfcf4fb453?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8ZHVvdG9uZSUyMHByb2ZpbGV8ZW58MHx8MHw%3D&auto=format&fit=crop&w=800&q=60';
  storyModel.userName = 'Amanda';
  stories.add(storyModel);

  storyModel = StoryModel();

  // Second profile

  storyModel.imgUrl =
      'https://images.unsplash.com/photo-1503235930437-8c6293ba41f5?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8ZHVvdG9uZSUyMHByb2ZpbGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60';
  storyModel.userName = 'Jason';
  stories.add(storyModel);

  storyModel = StoryModel();

  // Third profile

  storyModel.imgUrl =
      'https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8ZHVvdG9uZSUyMHByb2ZpbGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60';
  storyModel.userName = 'Sven';
  stories.add(storyModel);

  storyModel = StoryModel();

  // Fourth profile

  storyModel.imgUrl =
      'https://images.unsplash.com/photo-1505033575518-a36ea2ef75ae?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8ZHVvdG9uZSUyMHByb2ZpbGV8ZW58MHx8MHw%3D&auto=format&fit=crop&w=800&q=60';
  storyModel.userName = 'Jennifer';
  stories.add(storyModel);

  storyModel = StoryModel();

  return stories;
}
