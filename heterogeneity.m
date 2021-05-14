function H = heterogeneity(mask, intensity)


if ~exist(mask, 'file')
    error(sprintf('Mask file %s does not exist', mask))
end

if ~exist(intensity, 'file')
    error(sprintf('Intensity file %s does not exist', intensity))
end


V = niftiread(intensity);
U = niftiread(mask);

I = find(U);
H = mean(mean(abs(V(I) - V(I)')));

end