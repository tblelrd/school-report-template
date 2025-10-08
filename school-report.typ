#let report(
  matric: 0,
  tutor: "",
  deadline: "",
  module: "",

  font: "New Computer Modern",
  header_size: 0.8em,

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

    // Don't write header if noheader tag is anywhere on the page.
    for tag in tags {
      if tag.location().page() == here().page() { return; }
    }

    text(size: header_size)[#align(center)[#grid(
      columns: (1fr, 1fr, 1fr, 1fr),

      [ #module Assignment],
      [ #matric ],
      [ Tutor: #tutor ],
      [ Date: #deadline],
    )]]
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
