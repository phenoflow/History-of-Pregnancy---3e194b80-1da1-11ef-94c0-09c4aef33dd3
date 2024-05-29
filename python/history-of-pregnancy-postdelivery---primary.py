# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Ian Buchan, Mamas A Mamas, Naveed Sattar, Darren M Ashcroft, Martin M Rutter, 2024.

import sys, csv, re

codes = [{"code":"L396100","system":"readv2"},{"code":"Lyu5000","system":"readv2"},{"code":"L396000","system":"readv2"},{"code":"7F16900","system":"readv2"},{"code":"7F17200","system":"readv2"},{"code":"7F19.00","system":"readv2"},{"code":"7F15000","system":"readv2"},{"code":"7F13y00","system":"readv2"},{"code":"7F13100","system":"readv2"},{"code":"7F19y00","system":"readv2"},{"code":"7F16000","system":"readv2"},{"code":"L395z00","system":"readv2"},{"code":"L395.00","system":"readv2"},{"code":"7F14z00","system":"readv2"},{"code":"L396.11","system":"readv2"},{"code":"Lyu5500","system":"readv2"},{"code":"L393100","system":"readv2"},{"code":"Z254300","system":"readv2"},{"code":"L395400","system":"readv2"},{"code":"L393200","system":"readv2"},{"code":"7F16y00","system":"readv2"},{"code":"7F12z00","system":"readv2"},{"code":"L143000","system":"readv2"},{"code":"L398.00","system":"readv2"},{"code":"L398000","system":"readv2"},{"code":"Ly1..00","system":"readv2"},{"code":"7F15y00","system":"readv2"},{"code":"7F16100","system":"readv2"},{"code":"7F1A.00","system":"readv2"},{"code":"14Y4.00","system":"readv2"},{"code":"Z254800","system":"readv2"},{"code":"L396z00","system":"readv2"},{"code":"L395.11","system":"readv2"},{"code":"7F14000","system":"readv2"},{"code":"L143.00","system":"readv2"},{"code":"L395100","system":"readv2"},{"code":"L20z.00","system":"readv2"},{"code":"7F16700","system":"readv2"},{"code":"L123200","system":"readv2"},{"code":"L395000","system":"readv2"},{"code":"L398300","system":"readv2"},{"code":"7F13.00","system":"readv2"},{"code":"Z254C00","system":"readv2"},{"code":"7F14y00","system":"readv2"},{"code":"L143100","system":"readv2"},{"code":"7F17000","system":"readv2"},{"code":"Lyu5400","system":"readv2"},{"code":"Z257.15","system":"readv2"},{"code":"7F17y00","system":"readv2"},{"code":"L395.12","system":"readv2"},{"code":"L398400","system":"readv2"},{"code":"L395300","system":"readv2"},{"code":"Lyu5700","system":"readv2"},{"code":"L398500","system":"readv2"},{"code":"7F17.00","system":"readv2"},{"code":"7F17z00","system":"readv2"},{"code":"7F17.11","system":"readv2"},{"code":"L398100","system":"readv2"},{"code":"L396.00","system":"readv2"},{"code":"Z257.14","system":"readv2"},{"code":"7F16200","system":"readv2"},{"code":"7F15.00","system":"readv2"},{"code":"7F15100","system":"readv2"},{"code":"7F14.00","system":"readv2"},{"code":"7F12.00","system":"readv2"},{"code":"L395.13","system":"readv2"},{"code":"7F16.00","system":"readv2"},{"code":"L398z00","system":"readv2"},{"code":"7F16600","system":"readv2"},{"code":"7F16z00","system":"readv2"},{"code":"7F19z00","system":"readv2"},{"code":"7F13z00","system":"readv2"},{"code":"L200.00","system":"readv2"},{"code":"Z254B00","system":"readv2"},{"code":"L127200","system":"readv2"},{"code":"L20..00","system":"readv2"},{"code":"14Y1.00","system":"readv2"},{"code":"Z257.00","system":"readv2"},{"code":"L142.11","system":"readv2"},{"code":"7F16300","system":"readv2"},{"code":"14Y5.00","system":"readv2"},{"code":"L393000","system":"readv2"},{"code":"7F12y00","system":"readv2"},{"code":"Lyu5100","system":"readv2"},{"code":"Lyu5200","system":"readv2"},{"code":"7F12100","system":"readv2"},{"code":"7F15z00","system":"readv2"},{"code":"Z257.11","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('history-of-pregnancy-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["history-of-pregnancy-postdelivery---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["history-of-pregnancy-postdelivery---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["history-of-pregnancy-postdelivery---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
