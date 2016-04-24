length = 256;
size = 8;
number = zeros(1,(length - 1));
pi = 3.1415926535897932384;

x = 0 : 2 * pi / (length - 1) : 2 * pi - 2 * pi / (length - 1);
y = sin(x);

y = round(y .* (2^(size - 1) - 1));
for i=1:(length - 1)
    number(i) = i;
    y(i) = y(i) + 2^(size - 1);
end;
M = [number; y];

str1 = 'WIDTH=8;';
str2 = strcat('DEPTH=',num2str(length),';');
str3 = 'ADDRESS_RADIX=UNS;';
str4 = 'DATA_RADIX=UNS;';
content_str = 'CONTENT BEGIN';
end_str = 'END;';

fid = fopen('Generator.mif','wt');
fprintf(fid,'%s\n%s\n%s\n%s\n\n\n',str1,str2,str3,str4);
fprintf(fid,'%s\n',content_str);
fprintf(fid,'%d   :   %d;\n',0,0);
fprintf(fid,'%d   :   %d;\n',M);
fprintf(fid,'\n%s\n',end_str);