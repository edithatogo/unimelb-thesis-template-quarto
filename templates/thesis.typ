#let thesis(
  title: "The Title",
  author: "The Author",
  date: "",
  college: "",
  degree: "",
  year: "",
  supervisors: "",
  wordcount: "",
  keywords: (),
  bibliography: none,
  body
) = {
  // Set the document's basic properties.
  set document(author: author, title: title)
  set text(font: "Linux Libertine", lang: "en")

  // Title page.
  show-title-page(
    title: title,
    author: author,
    date: date,
    college: college,
    degree: degree,
    year: year,
    supervisors: supervisors
  )

  // Set the body of the document
  body
}

#show heading(level: 1): it => {
  set text(size: 2em)
  it
}

// A function to generate the title page
#let show-title-page(title:, author:, date:, college:, degree:, year:, supervisors:) = {
  set text(size: 1.2em, weight: "bold")
  align(center, title)
  v(2em)
  set text(size: 1em, weight: "regular")
  align(center, author)
  v(1em)
  align(center, date)
  v(10em)
  align(center, college)
  v(1em)
  align(center, degree)
  v(1em)
  align(center, year)
  v(2em)
  align(center, "Supervisors:")
  align(center, supervisors)
}
