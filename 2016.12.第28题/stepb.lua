-- params : ...
-- function num : 0 , upvalues : _ENV
getn = function(t)
  -- function num : 0_0 , upvalues : _ENV
  local x = 0
  for k,v in pairs(t) do
    x = x + 1
  end
  return x
end

bs = function(ar, mode)
  -- function num : 0_1 , upvalues : _ENV
  local l = getn(ar)
  for i = 1, l - 1 do
    for j = 1, l - i do
      -- DECOMPILER ERROR at PC23: Unhandled construct in 'MakeBoolean' P1

      if mode ~= 0 and ar[j + 1] < ar[j] then
        ar[j] = ar[j + 1]
      end
      if ar[j] < ar[j + 1] then
        ar[j] = ar[j + 1]
      end
    end
  end
end

vc = function(k)
  -- function num : 0_2 , upvalues : _ENV
  local x = (math.sqrt)((string.len)(k))
  local r = {}
  local idx = 1
  local s = 0
  for i = 1, x do
    for j = 1, x do
      s = s + (string.byte)(k, j + (i - 1) * x)
    end
    r[idx] = s
    s = s - (s)
    idx = idx + 1
  end
  for i = 1, x do
    for j = 1, x do
      s = s + (string.byte)(k, i + (j - 1) * x)
    end
    r[idx] = s
    s = s - (s)
    idx = idx + 1
  end
  for i = 1, x do
    s = s + (string.byte)(k, i + (i - 1) * x)
  end
  r[idx] = s
  s = s - (s)
  idx = idx + 1
  for i = 1, x do
    s = s + (string.byte)(k, (x - i) * x + i)
  end
  r[idx] = s
  s = s - (s)
  idx = idx + 1
  local a = {}
  local b = {}
  bs(r, 1)
  for i = 1, getn(r) do
    a[i] = r[i]
  end
  bs(r, 0)
  for i = 1, getn(r) do
    b[i] = r[i]
  end
  for i = 1, getn(a) do
    if a[i] ~= b[i] then
      return 1
    end
  end
  return 0
end

r = vc(g_v1)
if r == 0 then
  g_r = "��֤ͨ��"
else
  g_r = nil
end


