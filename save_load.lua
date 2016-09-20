-- based on http://www.lexaloffle.com/bbs/?tid=27657
-- needs to be replaced by a different backend or modification because
-- this only supports INTEGER values, which means only 2 bytes of 4 can be loaded
function inttobin(b)
 local t={}
 for i=0,15 do
  add(t,band(2^i,b)/2^i) end
 return t
end
function binread(a,s,c)
 local t={}
 for i=c,1,-1 do t[i]=a[i-1+s] end
 return t
end
function binins(a,b,s)
 local l=#b
 for i=1,l do a[s+i-1]=b[i] end
 return a
end
function bintoint(t)
 local v=0
 local l=#t
 for i=l,1,-1 do v+=2^(i-1)*t[i] end
 return v
end
function save(l,d)
 local a={}
 for i=1,4 do
  binins(a,binread(inttobin(v[i]),1,8),((i-1)*8)+1) end
 dset(l,bintoint(a))
end
function load(l)
 b=inttobin(dget(l))
 return b --todo split this into four pieces
end
