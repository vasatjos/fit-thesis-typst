#import "@preview/diatypst:0.9.3": *

#show: slides.with(
    title: "My Very Amazing Thesis Title",
    subtitle: "Matěj Novák",
    date: datetime.today().display("[day padding:none]. [month padding:none]. [year]"),
    authors: "Supervisor: Ing. Jan Novotný, Ph.D.",
    toc: false,
    theme: "full",
    count: none,
)
#set heading(numbering: none)


== Motivation
- What problem does your thesis address?
- Why is it interesting or important?
    - Point one
    - Point two

// You can include images like this:
// #align(center, image("images/your-image.jpg", height: 40%))


== Goals
+ First goal of your thesis
+ Second goal of your thesis
+ Evaluation:
    - How do you measure success?
    - What baselines do you compare against?


== Background
- Define the key concepts relevant to your thesis

- For example, an optimization objective:
    $min_(bold(theta)) cal(L)(bold(theta)) = EE [f(x; bold(theta))]$


== Methods
// Describe the approaches or algorithms you used.
- Method A:
    - Brief description
- Method B:
    - Brief description
- Method C:
    - Brief description

/ Theorem or definition: #[
        A very crucial concept:
        $
            EE [X] = sum_(i=1)^n x_i dot p_X (x_i)
        $
    ]


== Results
// Present your key results. Use tables, figures, or grids.
#grid(
    columns: (1.2fr, 1fr),
    gutter: 1em,
    [
        #v(3em)
        #table(
            columns: 2,
            align: (left, right),
            [ *Method* ], [ *Score* ],
            [ Method A ], [ 85.3% ],
            [ Method B ], [ 78.1% ],
            [ Method C ], [ 91.7% ],
        )
        - *Method C* achieved the best results
        - Method A outperformed Method B
    ],
    [
        // Place a figure here, e.g.:
        // #image("images/results-chart.svg", width: 100%)
        // #align(center)[#text(size: 9pt)[_Description of the chart_]]
    ],
)


== Demo / Visualization
// Show a demo, screenshot, or visualization of your work.

// You can use a grid to show multiple images side by side:
// #grid(
//     columns: (1fr, 1fr),
//     gutter: 1em,
//     [
//         #image("images/screenshot-1.png", width: 100%)
//     ],
//     [
//         #image("images/screenshot-2.png", width: 100%)
//     ],
// )
// #align(center)[#text(size: 9pt)[_Caption for the screenshots_]]

// Or show a code snippet:
// ```python
// def hello():
//     print("Hello, world!")
// ```


== Conclusion and Future Work
- Summary of your main contributions
- What worked well, what didn't
- Future work:
    - Possible extension 1
    - Possible extension 2
    - Possible extension 3


// Answer opponent questions here
#set text(lang: "cs") // assuming you got Czech questions
