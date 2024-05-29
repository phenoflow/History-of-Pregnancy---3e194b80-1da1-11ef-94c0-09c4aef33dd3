# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Ian Buchan, Mamas A Mamas, Naveed Sattar, Darren M Ashcroft, Martin M Rutter, 2024.

import sys, csv, re

codes = [{"code":"L126300","system":"readv2"},{"code":"L124100","system":"readv2"},{"code":"L127100","system":"readv2"},{"code":"L126200","system":"readv2"},{"code":"L125200","system":"readv2"},{"code":"Z254500","system":"readv2"},{"code":"L126100","system":"readv2"},{"code":"L125300","system":"readv2"},{"code":"L127300","system":"readv2"},{"code":"L125100","system":"readv2"},{"code":"L123300","system":"readv2"},{"code":"L124300","system":"readv2"},{"code":"L123100","system":"readv2"},{"code":"L413100","system":"readv2"},{"code":"L124200","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('history-of-pregnancy-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["history-of-pregnancy-deliv---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["history-of-pregnancy-deliv---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["history-of-pregnancy-deliv---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
