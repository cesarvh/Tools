# bampfa-public
curl -S -s http://localhost:8983/solr/bampfa-public/update --data '<delete><query>*:*</query></delete>' -H 'Content-type:text/xml; charset=utf-8'
curl -S -s http://localhost:8983/solr/bampfa-public/update --data '<commit/>' -H 'Content-type:text/xml; charset=utf-8'
curl -X POST -S -s 'http://localhost:8983/solr/bampfa-public/update/csv?commit=true&header=true&trim=true&separator=%09&f.grouptitle_ss.split=true&f.grouptitle_ss.separator=;&f.othernumbers_ss.split=true&f.othernumbers_ss.separator=;&f.blob_ss.split=true&f.blob_ss.separator=,&encapsulator=\' -T 4solr.bampfa.public.csv -H 'Content-type:text/plain; charset=utf-8'
# bampfa-internal
curl -S -s http://localhost:8983/solr/bampfa-internal/update --data '<delete><query>*:*</query></delete>' -H 'Content-type:text/xml; charset=utf-8'
curl -S -s http://localhost:8983/solr/bampfa-internal/update --data '<commit/>' -H 'Content-type:text/xml; charset=utf-8'
curl -X POST -S -s 'http://localhost:8983/solr/bampfa-internal/update/csv?commit=true&header=true&trim=true&separator=%09&f.grouptitle_ss.split=true&f.grouptitle_ss.separator=;&f.othernumbers_ss.split=true&f.othernumbers_ss.separator=;&f.blob_ss.split=true&f.blob_ss.separator=,&encapsulator=\' -T 4solr.bampfa.internal.csv -H 'Content-type:text/plain; charset=utf-8'
# botgarden-public
curl -S -s http://localhost:8983/solr/botgarden-public/update --data '<delete><query>*:*</query></delete>' -H 'Content-type:text/xml; charset=utf-8'
curl -S -s http://localhost:8983/solr/botgarden-public/update --data '<commit/>' -H 'Content-type:text/xml; charset=utf-8'
curl -X POST -S -s 'http://localhost:8983/solr/botgarden-public/update/csv?commit=true&header=true&trim=true&separator=%09&f.fruiting_ss.split=true&f.fruiting_ss.separator=%7C&f.flowering_ss.split=true&f.flowering_ss.separator=%7C&f.fruitingverbatim_ss.split=true&f.fruitingverbatim_ss.separator=%7C&f.floweringverbatim_ss.split=true&f.floweringverbatim_ss.separator=%7C&f.collcounty_ss.split=true&f.collcounty_ss.separator=%7C&f.collstate_ss.split=true&f.collstate_ss.separator=%7C&f.collcountry_ss.split=true&f.collcountry_ss.separator=%7C&f.conservationinfo_ss.split=true&f.conservationinfo_ss.separator=%7C&f.conserveorg_ss.split=true&f.conserveorg_ss.separator=%7C&f.conservecat_ss.split=true&f.conservecat_ss.separator=%7C&f.voucherlist_ss.split=true&f.voucherlist_ss.separator=%7C&f.blob_ss.split=true&f.blob_ss.separator=,&encapsulator=\' -T 4solr.botgarden.public.csv -H 'Content-type:text/plain; charset=utf-8'
# botgarden-internal
curl -S -s http://localhost:8983/solr/botgarden-internal/update --data '<delete><query>*:*</query></delete>' -H 'Content-type:text/xml; charset=utf-8'
curl -S -s http://localhost:8983/solr/botgarden-internal/update --data '<commit/>' -H 'Content-type:text/xml; charset=utf-8'
curl -X POST -S -s 'http://localhost:8983/solr/botgarden-internal/update/csv?commit=true&header=true&trim=true&separator=%09&f.fruiting_ss.split=true&f.fruiting_ss.separator=%7C&f.flowering_ss.split=true&f.flowering_ss.separator=%7C&f.fruitingverbatim_ss.split=true&f.fruitingverbatim_ss.separator=%7C&f.floweringverbatim_ss.split=true&f.floweringverbatim_ss.separator=%7C&f.collcounty_ss.split=true&f.collcounty_ss.separator=%7C&f.collstate_ss.split=true&f.collstate_ss.separator=%7C&f.collcountry_ss.split=true&f.collcountry_ss.separator=%7C&f.conservationinfo_ss.split=true&f.conservationinfo_ss.separator=%7C&f.conserveorg_ss.split=true&f.conserveorg_ss.separator=%7C&f.conservecat_ss.split=true&f.conservecat_ss.separator=%7C&f.voucherlist_ss.split=true&f.voucherlist_ss.separator=%7C&f.blob_ss.split=true&f.blob_ss.separator=,&encapsulator=\' -T 4solr.botgarden.internal.csv -H 'Content-type:text/plain; charset=utf-8'
# botgarden-propagations
curl -S -s http://localhost:8983/solr/botgarden-propagations/update --data '<delete><query>*:*</query></delete>' -H 'Content-type:text/xml; charset=utf-8'
curl -S -s http://localhost:8983/solr/botgarden-propagations/update --data '<commit/>' -H 'Content-type:text/xml; charset=utf-8'
curl -X POST -S -s 'http://localhost:8983/solr/botgarden-propagations/update/csv?commit=true&header=true&trim=true&separator=%09&encapsulator=\' -T 4solr.botgarden.propagations.csv -H 'Content-type:text/plain; charset=utf-8'
# pahma-public
curl -S -s http://localhost:8983/solr/pahma-public/update --data '<delete><query>*:*</query></delete>' -H 'Content-type:text/xml; charset=utf-8'
curl -S -s http://localhost:8983/solr/pahma-public/update --data '<commit/>' -H 'Content-type:text/xml; charset=utf-8'
curl -X POST -S -s 'http://localhost:8983/solr/pahma-public/update/csv?commit=true&header=true&separator=%09&f.objpp_ss.split=true&f.objpp_ss.separator=%7C&f.anonymousdonor_ss.split=true&f.anonymousdonor_ss.separator=%7C&f.objaltnum_ss.split=true&f.objaltnum_ss.separator=%7C&f.objfilecode_ss.split=true&f.objfilecode_ss.separator=%7C&f.objdimensions_ss.split=true&f.objdimensions_ss.separator=%7C&f.objmaterials_ss.split=true&f.objmaterials_ss.separator=%7C&f.objinscrtext_ss.split=true&f.objinscrtext_ss.separator=%7C&f.objcollector_ss.split=true&f.objcollector_ss.separator=%7C&f.objaccno_ss.split=true&f.objaccno_ss.separator=%7C&f.objaccdate_ss.split=true&f.objaccdate_ss.separator=%7C&f.objacqdate_ss.split=true&f.objacqdate_ss.separator=%7C&f.objassoccult_ss.split=true&f.objassoccult_ss.separator=%7C&f.objculturetree_ss.split=true&f.objculturetree_ss.separator=%7C&f.objfcptree_ss.split=true&f.objfcptree_ss.separator=%7C&f.grouptitle_ss.split=true&f.grouptitle_ss.separator=%7C&f.objmaker_ss.split=true&f.objmaker_ss.separator=%7C&f.blob_ss.split=true&f.blob_ss.separator=,&f.card_ss.split=true&f.card_ss.separator=,&f.imagetype_ss.split=true&f.imagetype_ss.separator=,&encapsulator=\' -T 4solr.pahma.public.csv -H 'Content-type:text/plain; charset=utf-8'
# pahma-internal
curl -S -s http://localhost:8983/solr/pahma-internal/update --data '<delete><query>*:*</query></delete>' -H 'Content-type:text/xml; charset=utf-8'
curl -S -s http://localhost:8983/solr/pahma-internal/update --data '<commit/>' -H 'Content-type:text/xml; charset=utf-8'
curl -X POST -S -s 'http://localhost:8983/solr/pahma-internal/update/csv?commit=true&header=true&separator=%09&f.objpp_ss.split=true&f.objpp_ss.separator=%7C&f.anonymousdonor_ss.split=true&f.anonymousdonor_ss.separator=%7C&f.donor_ss.split=true&f.donor_ss.separator=%7C&f.objaltnum_ss.split=true&f.objaltnum_ss.separator=%7C&f.objfilecode_ss.split=true&f.objfilecode_ss.separator=%7C&f.objdimensions_ss.split=true&f.objdimensions_ss.separator=%7C&f.objmaterials_ss.split=true&f.objmaterials_ss.separator=%7C&f.objinscrtext_ss.split=true&f.objinscrtext_ss.separator=%7C&f.objcollector_ss.split=true&f.objcollector_ss.separator=%7C&f.objaccno_ss.split=true&f.objaccno_ss.separator=%7C&f.objaccdate_ss.split=true&f.objaccdate_ss.separator=%7C&f.objacqdate_ss.split=true&f.objacqdate_ss.separator=%7C&f.objassoccult_ss.split=true&f.objassoccult_ss.separator=%7C&f.objculturetree_ss.split=true&f.objculturetree_ss.separator=%7C&f.objfcptree_ss.split=true&f.objfcptree_ss.separator=%7C&f.grouptitle_ss.split=true&f.grouptitle_ss.separator=%7C&f.objmaker_ss.split=true&f.objmaker_ss.separator=%7C&f.blob_ss.split=true&f.blob_ss.separator=,&f.card_ss.split=true&f.card_ss.separator=,&f.imagetype_ss.split=true&f.imagetype_ss.separator=,&encapsulator=\' -T 4solr.pahma.internal.csv -H 'Content-type:text/plain; charset=utf-8'
# pahma-locations
curl -S -s http://localhost:8983/solr/pahma-locations/update --data '<delete><query>*:*</query></delete>' -H 'Content-type:text/xml; charset=utf-8'
curl -S -s http://localhost:8983/solr/pahma-locations/update --data '<commit/>' -H 'Content-type:text/xml; charset=utf-8'
curl -X POST -s -S 'http://localhost:8983/solr/pahma-locations/update/csv?commit=true&header=true&trim=true&separator=%09&encapsulator=\' -T 4solr.pahma.locations.csv -H 'Content-type:text/plain; charset=utf-8'
# pahma-osteology
curl -S -s http://localhost:8983/solr/pahma-osteology/update --data '<delete><query>*:*</query></delete>' -H 'Content-type:text/xml; charset=utf-8'
curl -S -s http://localhost:8983/solr/pahma-osteology/update --data '<commit/>' -H 'Content-type:text/xml; charset=utf-8'
curl -X POST -S -s 'http://localhost:8983/solr/pahma-osteology/update/csv?commit=true&header=true&separator=%09&objpp_ss.split=true&f.objpp_ss.separator=%7C&f.aggregate_ss.split=true&f.aggregate_ss.separator=%2C&f.objaltnum_ss.split=true&f.objaltnum_ss.separator=%7C&f.objfilecode_ss.split=true&f.objfilecode_ss.separator=%7C&f.objdimensions_ss.split=true&f.objdimensions_ss.separator=%7C&f.objmaterials_ss.split=true&f.objmaterials_ss.separator=%7C&f.objinscrtext_ss.split=true&f.objinscrtext_ss.separator=%7C&f.objcollector_ss.split=true&f.objcollector_ss.separator=%7C&f.objaccno_ss.split=true&f.objaccno_ss.separator=%7C&f.objaccdate_ss.split=true&f.objaccdate_ss.separator=%7C&f.objacqdate_ss.split=true&f.objacqdate_ss.separator=%7C&f.objassoccult_ss.split=true&f.objassoccult_ss.separator=%7C&f.objculturetree_ss.split=true&f.objculturetree_ss.separator=%7C&f.exhibitionnumber_ss.split=true&f.exhibitionnumber_ss.separator=%7C&f.exhibitiontitle_ss.split=true&f.exhibitiontitle_ss.separator=%7C&f.grouptitle_ss.split=true&f.objfcptree_ss.split=true&f.objfcptree_ss.separator=%7C&f.grouptitle_ss.separator=%7C&f.blob_ss.split=true&f.blob_ss.separator=,&encapsulator=\' -T 4solr.pahma.osteology.csv -H 'Content-type:text/plain; charset=utf-8'
# ucjeps-public
curl -S -s http://localhost:8983/solr/ucjeps-public/update --data '<delete><query>*:*</query></delete>' -H 'Content-type:text/xml; charset=utf-8'
curl -S -s http://localhost:8983/solr/ucjeps-public/update --data '<commit/>' -H 'Content-type:text/xml; charset=utf-8'
curl -X POST -S -s 'http://localhost:8983/solr/ucjeps-public/update/csv?commit=true&header=true&trim=true&separator=%09&f.comments_ss.split=true&f.comments_ss.separator=%7C&f.collector_ss.split=true&f.collector_ss.separator=%7C&f.previousdeterminations_ss.split=true&f.previousdeterminations_ss.separator=%7C&f.otherlocalities_ss.split=true&f.otherlocalities_ss.separator=%7C&f.associatedtaxa_ss.split=true&f.associatedtaxa_ss.separator=%7C&f.typeassertions_ss.split=true&f.typeassertions_ss.separator=%7C&f.alllocalities_ss.split=true&f.alllocalities_ss.separator=%7C&f.othernumber_ss.split=true&f.othernumber_ss.separator=%7C&f.blob_ss.split=true&f.blob_ss.separator=,&f.card_ss.split=true&f.card_ss.separator=,&encapsulator=\' -T 4solr.ucjeps.public.csv -H 'Content-type:text/plain; charset=utf-8'
# ucjeps-media
curl -S -s http://localhost:8983/solr/ucjeps-media/update --data '<delete><query>*:*</query></delete>' -H 'Content-type:text/xml; charset=utf-8'
curl -S -s http://localhost:8983/solr/ucjeps-media/update --data '<commit/>' -H 'Content-type:text/xml; charset=utf-8'
curl -X POST -S -s 'http://localhost:8983/solr/ucjeps-media/update/csv?commit=true&header=true&trim=true&separator=%09&f.blob_ss.split=true&f.blob_ss.separator=,&encapsulator=\' -T 4solr.ucjeps.media.csv -H 'Content-type:text/plain; charset=utf-8'
