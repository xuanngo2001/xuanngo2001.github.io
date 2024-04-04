## Create blog by leveraging GitHub pages
Follow Chad Baldwin's instructions: https://chadbaldwin.net/2021/03/14/how-to-build-a-sql-blog.html

1. Fork Chad Baldwin's repo: https://github.com/chadbaldwin/simple-blog-bootstrap/generate
    - Name your repository like this: `{Your GitHub username}.github.io`.
1. Wait a couple of minutes for GitHub to create your website.
1. Open your website(`https://{Your GitHub username}.github.io`).

## Create your first post
Add in `_posts` directory your markdown file. The markdown file must have the following format: `{yyyy-mm-dd}-{some-text}.md`.

## Add comments using GitHub issues
1. Install utterances GitHub app: https://github.com/apps/utterances
1. Follow the instructions.
1. Add the generated script at the end of `_layouts/post.html`:
    ```html
    </article>

    <script src="https://utteranc.es/client.js"
            repo="xuanngo2001/xuanngo2001.github.io"
            issue-term="pathname"
            label="Comment"
            theme="github-light"
            crossorigin="anonymous"
            async>
    </script>    
    ```
