lineNo = 0
File.open("personal_address_csv_data.csv") do |f|
  while (c=STDIN.gets)!=nil do
    rec = c.split(",")
    newRec = []
    newRec << rec[2]
    newRec << rec[1]
    newRec << rec[3]
    newRec << rec[4]
    newRec << rec[6]
    newRec << rec[7]
    newRec << rec[8]
    newRec << rec[16]
    if lineNo == 0
      newRec << "アドレス帳上位表示"
      newRec << "削除フラグ"
      newRec << "最終列ダミー"
    else
      newRec << ""
      newRec << ""
      newRec << "EOL"
    end
    
    f.writeln( newRec.join(",") )
    
    lineNo += 1
  end
end
  


  

