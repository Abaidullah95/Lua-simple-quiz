q = 0
score = 0
pass = false
count = 0
optionstring = "\n A , B , C , D "

if pass == false then
  print("Welcome New User")
end

print("Quiz Lua")

qarr = {" String Convert to number".. optionstring, "Find Sin Cos Tan".. optionstring, "Create a Message for COVID 19".. optionstring}
maxscore = #qarr * 10
ans = {"A" , "B", "C"}


for i = 1 , #qarr , 1 do
  count = count + 1
  print("Question " .. count .. " " .. qarr[i]) 
  --print(qarr[i])
  
  y = string.upper(io.read())
  
  if y == ans[i] then
    print("Correct!")
    score = score + 10
    q = q+1
  else
    print("Wrong!")
  end
end

print("Your Marks: "..score.. "\nPercentage: "..score/maxscore*100)

if score/maxscore*100 >= 75 then
  pass = true
  print("PASSED")
else
  print("FAILED")
end
