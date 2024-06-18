/**
* Note:
* Originally I wanted to have both spanish and english versions of my site, but I ended up
* only writting it in english.
*
* This architecture makes it easy to implement multi-language if you so want to.
*/

//fetch all years using Vite's glob import
const resume_en = import.meta.globEager('./en/*.js')
//const resume_es = import.meta.globEager('./es/*.js')

export async function getResume(locale) {
    const wantedResume = locale === 'es' ? resume_es : resume_en
    let resume = [];

    //order by year number
    const sortedResume = Object.fromEntries(
        Object.keys(wantedResume).sort(function (a, b) { return b.match(/\d+/g) - a.match(/\d+/g) }).map(key => [key, wantedResume[key]])
    );

    //build final array
    for (const yearFile in sortedResume) {
        const yearData = wantedResume[yearFile].default
        const yearNumber = yearFile.match(/\d{4}/)[0]
        resume.push({ ...yearData, year: yearNumber })
    }
    
    return resume
}   
