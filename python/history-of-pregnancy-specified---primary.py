# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Ian Buchan, Mamas A Mamas, Naveed Sattar, Darren M Ashcroft, Martin M Rutter, 2024.

import sys, csv, re

codes = [{"code":"L127000","system":"readv2"},{"code":"L124z00","system":"readv2"},{"code":"L124000","system":"readv2"},{"code":"L124600","system":"readv2"},{"code":"L124400","system":"readv2"},{"code":"L414000","system":"readv2"},{"code":"L124.00","system":"readv2"},{"code":"L126000","system":"readv2"},{"code":"L413000","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('history-of-pregnancy-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["history-of-pregnancy-specified---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["history-of-pregnancy-specified---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["history-of-pregnancy-specified---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
