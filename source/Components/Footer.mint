async component Footer {
  /* Styles for the root element. */
  style root {
    border-top: 3px double #EEE;
    margin-top: 100px;
    padding: 40px 0;

    background-clip: padding-box;
    backdrop-filter: blur(3px);
  }

  /* Styles for the wrapper element. */
  style wrapper {
    max-width: 1280px;
    margin: 0 auto;
    grid-template-columns: 1fr auto;
    display: grid;
  }

  /* Styles for the columns. */
  style columns {
    grid-auto-flow: column;
    grid-gap: 50px;
    display: grid;
  }

  /* Styles for a column. */
  style column {
    align-content: start;
    grid-gap: 10px;
    display: grid;

    a {
      grid-template-columns: auto 1fr;
      text-decoration: none;
      align-items: center;
      font-size: 18px;
      color: inherit;
      grid-gap: 5px;
      display: grid;

      &:hover {
        text-decoration: underline;
        color: seagreen;
      }
    }

    svg {
      --tabler-stroke-width: 1.5;

      position: relative;
      height: 20px;
      width: 20px;
      top: 1px;
    }
  }

  /* Styles for the infos. */
  style infos {
    max-width: 580px;
    line-height: 1.5;

    > img {
      width: 120px;
    }
  }

  fun render : Html {
    <div::root>
      <div::wrapper>
        <div::infos>
          <img src={@asset(../../assets/logo.png)}/>

          <p>
            "Mint delivers developer happiness and productivity by of" \
            "fering a complete set of tools (bundler, code formatter," \
            " documentation generator, playground, package manager, e" \
            "tc...) for bulding single page applications."
          </p>

          <span>
            "Copyright © #{Time.year(Time.now())} Mint."
            " All rights reserved."
          </span>
        </div>

        <div::columns>
          <div::column>
            <strong>"Site"</strong>

            <a href="/">
              TablerIcons.HOME
              "Home"
            </a>

            <a href="/install">
              TablerIcons.DOWNLOAD
              "Install"
            </a>

            <a href="https://sandbox.mint-lang.com">
              TablerIcons.TERMINAL
              "Sandbox"
            </a>

            <a href="https://tutorial.mint-lang.com">
              TablerIcons.BOOK
              "Learn"
            </a>

            <a href="/guide">
              TablerIcons.BOOKMARKS
              "Reference"
            </a>
          </div>

          <div::column>
            <strong>"Source"</strong>

            <a href="/api">
              TablerIcons.TablerIcons.BOOKS
              "Core Library"
            </a>

            <a href="/packages">
              TablerIcons.BOX_SEAM
              "Packages"
            </a>

            <a
              href="https://github.com/mint-lang/mint"
              target="_blank">

              TablerIcons.BRAND_GITHUB
              "GitHub"

            </a>

            <a
              href="https://github.com/mint-lang/mint/releases"
              target="_blank">

              TablerIcons.GIT_PULL_REQUEST
              "Releases"

            </a>
          </div>

          <div::column>
            <strong>"Community & Social"</strong>

            <a
              href="https://discord.gg/NXFUJs2"
              target="_blank">

              TablerIcons.BRAND_DISCORD
              "Discord"

            </a>

            <a href="/blog">
              TablerIcons.ARTICLE
              "Blog"
            </a>
          </div>
        </div>
      </div>
    </div>
  }
}
