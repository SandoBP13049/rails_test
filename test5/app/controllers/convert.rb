# -*- coding: utf-8 -*-
#json‚ðhash‚É•ÏŠ· 
require 'json'

class Convert



  def convert(json)

    csp_json = json
    csp_hash = JSON.parse(csp_json, symbolize_names:true)
    #csp_hash = csp_hash.deep_symbolize_keys
	#csp_hash = eval(csp_hash)
	csp_hash = deep_symbolize_keys_origin(csp_hash)
	#csp_hash = array_symbolize_keys(csp_hash)
    return csp_hash
  end

  def convert_ori(json)
    csp_json = json
    csp_hash = JSON.parse(csp_json, symbolize_names:true)
    return csp_hash
  end

  def deep_symbolize_keys_origin(hash)
    hash.each_with_object({}) do |(key, val), memo|
	  p "key=#{key}"
      if val.is_a?(Array)
        #val = val.map{|v| deep_symbolize_keys_origin(v)}
		val = array_symbolize_keys(val)
      elsif val.is_a?(Hash)
	    if ! key=="var"
        val = deep_symbolize_keys_origin(val)
		end
      end
      memo[key.to_s.to_sym] = val
    end
  end

  def array_symbolize_keys(array)
  	  puts "array1=#{array}"
	  array_tmp = []
    array = array.map{|v|
	p "v=#{v}"
	  if v.is_a?(Array)
	    v = array_symbolize_keys(v)
		#array_tmp.push(v)
      elsif v.is_a?(Hash)
	    v = deep_symbolize_keys_origin(v)
		#array_tmp.push(v)
	  elsif v.is_a?(String)
	    p "string #{v}"
		if  v!='!'
	    v = v.to_sym
		p "to_sym : #{v}"
		else
		p "is_a !"
		end
		#array_tmp.push(v)
	  #else
	    #v =v
	  end
	  array_tmp.push(v)
	  }
	  puts "arra_tmp=#{array_tmp}"

	  return array_tmp
  end

end



