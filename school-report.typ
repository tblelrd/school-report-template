#let report(
  matric: 0,
  tutor: "",
  deadline: "",
  module: "",
  font: "New Computer Modern",
  body,
) = [
  #set text(
    font: font,
  )

  #set par(
    justify: true,
  )

  #set page(
    numbering: "1 of 1",
  );

  // Header that doesn't render on <noheader>
  #set page(header: context {
    // Finds the noheader tag
    let tags = query(selector(<noheader>).after(here()))

    for tag in tags {
      if tag.location().page() == here().page() { return; }
    }
    // if tags.len() > 0 {
    //   if tags.first().location().page() == here().page() { return }
    // }

    text(
      size: 0.8em,
    )[
      #align(center)[
        #grid(
          columns: (1fr, 1fr, 1fr, 1fr),

          [ #module Assignment],
          [ #matric ],
          [ Tutor: #tutor ],
          [ Date: #deadline],
        )
      ]
    ]
  })

  // Title page
  #align(center)[
    #heading(outlined: false)[#module Report] \
    Tutor: #tutor \
    Matriculation ID: #matric \
    Date: #deadline
  ] <noheader>

  #outline(title: "Table of Contents")
  #pagebreak();


  #body
];
