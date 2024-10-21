class ProjectModel {
  final int id;
  final String projectCode;
  final String projectName;
  final List<String> members;
  final String client;
  final int status;

  ProjectModel({required this.id, required this.projectCode, required this.projectName, required this.members, required this.client, required this.status});
}