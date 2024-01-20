bool isEmpty(dynamic value) => ['null', '', '[]', '{}', '0'].contains("$value");

bool isNotEmpty(dynamic value) =>
    !['null', '', '[]', '{}', '0'].contains("$value");
