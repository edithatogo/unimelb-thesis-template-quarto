#let project(
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
  set page(
    paper: "a4",
    margin: (left: 3.5cm, right: 2.5cm, top: 2.5cm, bottom: 2.5cm),
    header: locate(loc => {
      // Don't display header on title page.
      if counter(page).at(loc).first() > 1 {
        align(right, text(10pt, str(counter(page).get().at(loc).first())))
      }
    })
  )
  set text(font: "Linux Libertine", lang: "en", size: 11pt)
  set par(justify: true, leading: 0.65em, first-line-indent: 1em)

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
