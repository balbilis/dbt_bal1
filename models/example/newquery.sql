select provider_id as inpatient_provider_id,
provider_state as inpatient_provider_state,
round(sum(total_discharges),2) as inpatient_sum_total_discharges,
round(sum(average_covered_charges),2) as inpatient_sum_average_covered_charges from
bigquery-public-data.cms_medicare.inpatient_charges_2011 limit 100
group by 1,2