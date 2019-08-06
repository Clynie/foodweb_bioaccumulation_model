example_postprocess;
%%
numcohorts=cohortyears;
figure()
col = ceil(sqrt(length(SpeciesNames)-3));
row = floor(length(SpeciesNames)/col);
subplot(row,col,1)
hold on
for c = 1:numszcohorts
    Y = squeeze(OObj.szY(c,:,:));
    plot(timespan.'/365.25,Y(:,2))
    title([SpeciesNames{4},' MeHg [ng/g-ww]'])
end
hold off
for n = 5:length(SpeciesNames)  
    subplot(row,col,n-3)
    hold on
    for c =1:numcohorts
    Y6 = squeeze(Cohorts(n,c,:,:));
    T2 = timespan;
    plot(T2/365.25,Y6(:,2))
    title([SpeciesNames{n},' MeHg [ng/g-ww]'])
    end
    hold off
    
end