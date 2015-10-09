result_string = `curl -s https://x:701226ae05684152b0f990097599727e@app.sendwave.com/t/supportstatus`

open('./log.txt', 'a') { |f|
  f.puts "#{Time.now}, #{result_string[/\d+/].to_i}"
}