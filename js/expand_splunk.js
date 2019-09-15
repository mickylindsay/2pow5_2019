// cerner_2^5_2019
// Expands all collapsed splunk values
// To be run in browser console

while ((expands = document.querySelectorAll('a.jsexpands')).length > 0) {
    expands.forEach((x)=>{x.click()})
}
