class Job {
  String company;
  String title;
  String logoUrl;
  bool isMark;
  String location;
  String time;
  List<String> req;
  Job(this.company, this.title, this.logoUrl, this.isMark, this.location,
      this.time, this.req);

  static List<Job> generateJob() {
    return [
      Job('pistol academy', 'Making pistols', 'assets/images/logo.jpg', false,
          'Kathmandu  Nepal', 'Full time', [
        'Job requirements include the skills,',
        'Employers generally seek candidates .'
            'When applying for jobs, '
      ]),
      Job('Humanity', 'Savint the earth', 'assets/images/logo.jpg', false,
          "Mahankal, Kathmandu", 'Part Time', [
        'Skills',
        'this is the sample requirement',
        'non of them are correct in their own mankind'
      ]),
      Job('fact academy', 'Learning the real facts', 'assets/images/logo.jpg',
          false, 'Kathmandu  Nepal', 'Full time', [
        'Job requirements include the skills,',
        'Employers generally seek candidates who  .'
            'When applying for jobs,s '
      ]),
      Job('Preservation', 'presevation of world', 'assets/images/logo.jpg',
          false, "Mahankal, Kathmandu", 'Part Time', [
        'Skills',
        'this is the sample requirement',
        'non of them are correct in their own mankind'
      ])
    ];
  }
}
