# seb.cl

### Source code for [my website](https://seb.cl), written in Vue 3. 
![Me](https://user-images.githubusercontent.com/197329/234124658-535eade7-84a6-43d4-a333-7ca90109d092.png)
---

### Hosting (GitHub Pages)
Use [GitHub Pages](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site) for free hosting.

### Development server

```sh
pnpm i
pnpm dev
```

### Building
This script builds the project into the `docs` folder, to take advantage of GitHub's [web hosting service](https://pages.github.com).
```sh
pnpm build
```

### Deployment CI/CD
This project is configured to use GitHub Pages, so once you push it, the website will be automatically deployed using **GitHub Actions**.
```
git add -A
git commit -m "Updated my beautiful site" && git push
```
