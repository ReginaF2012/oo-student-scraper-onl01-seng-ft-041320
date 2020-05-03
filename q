
[1mFrom:[0m /root/oo-student-scraper-onl01-seng-ft-041320/lib/scraper.rb @ line 49 Scraper.scrape_profile_page:

    [1;34m45[0m: [32mdef[0m [1;36mself[0m.[1;34mscrape_profile_page[0m(profile_url)
    [1;34m46[0m:   doc = [1;34;4mNokogiri[0m::HTML(open(profile_url))
    [1;34m47[0m:   [1;34m#all of the social media links are contained here[0m
    [1;34m48[0m:   social_media = doc.css([31m[1;31m"[0m[31mdiv.social-icon-container a[1;31m"[0m[31m[0m)
 => [1;34m49[0m:   binding.pry
    [1;34m50[0m:     social_media_list = {}
    [1;34m51[0m:     social_media.each [32mdo[0m |link|
    [1;34m52[0m:     media_name = social_media_name(link.css([31m[1;31m"[0m[31ma[1;31m"[0m[31m[0m).attribute([31m[1;31m"[0m[31mhref[1;31m"[0m[31m[0m).value)
    [1;34m53[0m:     social_media_list[media_name.to_sym] = link.css([31m[1;31m"[0m[31ma[1;31m"[0m[31m[0m).attribute([31m[1;31m"[0m[31mhref[1;31m"[0m[31m[0m).value
    [1;34m54[0m:   [32mend[0m
    [1;34m55[0m:   social_media_list
    [1;34m56[0m: [32mend[0m

