select
    co.id as id,
    co.objectnumber as AccessionNumber_s,
    regexp_replace(tig.taxon, '^.*\)''(.*)''$', '\1') as Determination_s,
    regexp_replace(fc.item, '^.*\)''(.*)''$', '\1') as Collector_s,
    co.fieldcollectionnumber as CollectorNumber_s,
    sdg.datedisplaydate as CollectionDate_s,
    to_char(sdg.dateearliestscalarvalue, 'YYYY-MM-DD') as EarlyCollectionDate_s,
    to_char(sdg.datelatestscalarvalue, 'YYYY-MM-DD') as LateCollectionDate_s,
    lg.fieldlocverbatim as fcpverbatim_s,
    lg.fieldloccounty as CollCounty_ss,
-- adding state and country
    lg.fieldlocstate as CollState_ss,
    lg.fieldloccountry as CollCountry_ss,
    lg.velevation as Elevation_s,
    lg.minelevation as MinElevation_s,
    lg.maxelevation as MaxElevation_s,
    lg.elevationunit as ElevationUnit_s,
    co.fieldcollectionnote as Habitat_s,
    lg.decimallatitude || ',' || lg.decimallongitude as latlong_p,
    case when lg.vcoordsys like 'Township%' then lg.vcoordinates end as TRSCoordinates_s,
    lg.geodeticdatum as Datum_s,
    lg.localitysource as CoordinateSource_s,
    lg.coorduncertainty as CoordinateUncertainty_s,
    lg.coorduncertaintyunit as CoordinateUncertaintyUnit_s,

    regexp_replace(tn.family, '^.*\)''(.*)''$', '\1') as family_s,
    '' gardenlocation_s, -- dead accessions should have no gardenlocations
    co.recordstatus dataQuality_s,
case when (lg.fieldlocplace is not null and lg.fieldlocplace <> '') then regexp_replace(lg.fieldlocplace, '^.*\)''(.*)''$', '\1')
     when (lg.fieldlocplace is null and lg.taxonomicrange is not null) then 'Geographic range: '||lg.taxonomicrange
end as locality_s,
h1.name as csid_s,
case when (con.rare = 'true') then 'yes' else 'no' end as rare_s,
case when (cob.deadflag = 'true') then 'yes' else 'no' end as deadflag_s,
cob.flowercolor as flowercolor_s,
'' as determinationNoAuth_s, -- setting this to blank for now. not used, incorrect in query
'' reasonformove_s, -- dead accessions should have no gardenlocations

utils.findconserveinfo(tc.refname) as conservationinfo_ss,
utils.findconserveorg(tc.refname) as conserveorg_ss,
utils.findconservecat(tc.refname) as conservecat_ss,

case when (utils.findvoucherinfo(h1.name) is not null)
     then 'yes' else 'no'
end as vouchers_s,
'1' as vouchercount_s,
utils.findvoucherinfo(h1.name) voucherlist_ss,
concat_ws('|', fruitsjan,fruitsfeb,fruitsmar,fruitsapr,fruitsmay,fruitsjun,fruitsjul,fruitsaug,fruitssep,fruitsoct,fruitsnov,fruitsdec) fruitingverbatim_ss,
concat_ws('|', flowersjan,flowersfeb,flowersmar,flowersapr,flowersmay,flowersjun,flowersjul,flowersaug,flowerssep,flowersoct,flowersnov,flowersdec) floweringverbatim_ss,

concat_ws('|', fruitsjan,fruitsfeb,fruitsmar,fruitsapr,fruitsmay,fruitsjun,fruitsjul,fruitsaug,fruitssep,fruitsoct,fruitsnov,fruitsdec) fruiting_ss,
concat_ws('|', flowersjan,flowersfeb,flowersmar,flowersapr,flowersmay,flowersjun,flowersjul,flowersaug,flowerssep,flowersoct,flowersnov,flowersdec) flowering_ss,
con.provenancetype as provenancetype_s,
tn.accessrestrictions as accessrestrictions_s,
coc.item as accessionnotes_s,
findcommonname(tig.taxon) as commonname_s,
con.source as source_s

from collectionobjects_common co
inner join misc on (co.id = misc.id and misc.lifecyclestate <> 'deleted')
left outer join collectionobjects_common_fieldCollectors fc
        on (co.id = fc.id
        and fc.pos = 0)
left outer join hierarchy hfcdg
        on (co.id = hfcdg.parentid
        and hfcdg.name = 'collectionobjects_common:fieldCollectionDateGroup')
left outer join structureddategroup sdg on (sdg.id = hfcdg.id)
left outer join hierarchy htig
        on (co.id = htig.parentid
        and htig.pos = 0
        and htig.name = 'collectionobjects_naturalhistory:taxonomicIdentGroupList')
left outer join taxonomicIdentGroup tig on (tig.id = htig.id)
left outer join hierarchy hlg
        on (co.id = hlg.parentid
        and hlg.pos = 0
        and hlg.name = 'collectionobjects_naturalhistory:localityGroupList')
left outer join localitygroup lg on (lg.id = hlg.id)

left outer join hierarchy h1 on co.id=h1.id

join collectionobjects_naturalhistory con on (co.id = con.id)
join collectionobjects_botgarden cob on (co.id=cob.id)
left outer join collectionobjects_common_comments coc  on (co.id = coc.id and coc.pos = 0)

left outer join taxon_common tc on (tig.taxon=tc.refname)
left outer join taxon_naturalhistory tn on (tc.id=tn.id)

where cob.deadflag='true'
