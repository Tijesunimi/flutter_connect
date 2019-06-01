class Mentor {
    final String _name;
    final String _description;
    final String _job;
    final String _pictureUrl;

    Mentor(this._name, this._description, this._job, this._pictureUrl);

    String get name => _name;

    String get description => _description;

    String get job => _job;

    String get pictureUrl => _pictureUrl;
}