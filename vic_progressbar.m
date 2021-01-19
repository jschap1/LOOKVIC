function doneval = vic_progressbar(ncells, outdir, prefix)

dt = 1;
nfiles = 0;
f = uifigure;
d = uiprogressdlg(f,'Title','Please Wait',...
    'Message','Running VIC');

while nfiles < ncells
    pause(dt)
    fnames = dir(fullfile(outdir, [prefix, '*']));
    nfiles = length(fnames);
    d.Value = nfiles/ncells;
end
    
close(d);
close(f);

doneval = 0;

end