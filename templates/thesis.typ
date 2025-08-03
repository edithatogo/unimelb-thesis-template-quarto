// templates/thesis.typ

// A function that takes the document body and styles it.
// Quarto will pass the document content to this function.
#let project(
  // Document metadata
  title,
  author,
  date,
  // Thesis-specific metadata from _quarto.yml
  thesis,
  // The document body
  body
) = {
  // 1. Set up the document's style
  set document(title: title, author: author)
  set page(
    paper: "a4",
    margin: (top: 3cm, bottom: 3cm, left: 3cm, right: 3cm),
    header: locate(loc => {
      // Put page number on the right of the header
      set align(right)
      // Only show page number if it's not none (e.g., not on title page)
      if counter(page).get().at(loc).first() != none {
        counter(page).display()
      }
    })
  )
  set text(font: "Linux Libertine", size: 11pt)
  set par(leading: 0.65em, justify: true)
  set block(spacing: 1.5em)

  // Style headings
  show heading.where(level: 1): it => {
    // Center the heading
    align(center)[
      // Add some space before the heading
      v(2em)
      // Make the heading bold and larger
      text(weight: "bold", size: 1.5em, it.body)
      // Add some space after the heading
      v(1em)
    ]
  }

  // 2. Show the title page
  show-title-page(
    title: title,
    author: author,
    date: date,
    thesis: thesis
  )

  // 3. Show the main body of the document
  body
}

#show heading(level: 1): it => {
  set text(size: 2em)
  it
}

// A function to generate the title page
#let show-title-page(title:, author:, date:, thesis:) = {
  // Prevent page numbering on the title page
  set page(header: none)

  // Center the content vertically and horizontally
  align(center + horizon, {
    // University logo
    if thesis.logo != none {
      image(thesis.logo, width: 30%)
    }

    // Vertical spacing
    v(2fr)

    // Title
    text(weight: "bold", size: 1.8em, title)

    v(2fr)

    // Author
    text(size: 1.4em, "by")
    v(0.5em)
    text(size: 1.4em, author)

    v(2fr)

    // Submission reason
    text(size: 1.2em, [
      A thesis submitted in total fulfillment for the \
      degree of #thesis.degree
    ])

    v(1em)

    text(size: 1.2em, "in the")
    v(0.5em)
    text(size: 1.2em, thesis.department)
    v(0.5em)
    text(size: 1.2em, thesis.school)
    v(0.5em)
    text(weight: "bold", size: 1.2em, thesis.university)

    v(2fr)

    // Date
    text(size: 1.4em, date)

    v(1fr)
  })

  // Start a new page after the title page
  pagebreak()
}
