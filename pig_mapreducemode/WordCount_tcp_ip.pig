Lines = load '/user/cloudera/pig/tcp_ip.txt' AS (line:chararray);
Words = foreach Lines generate flatten(TOKENIZE(line)) as word;
Groups = group Words by word;
Counts = foreach Groups generate group, COUNT(Words);
store Counts into '/user/cloudera/pig/output';
