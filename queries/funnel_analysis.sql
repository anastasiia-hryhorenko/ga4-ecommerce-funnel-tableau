with sessions_info as(
        select user_pseudo_id,
       (select value.int_value from unnest(event_params) as ep where ep.key='ga_session_id') as ga_session_id,
        concat(user_pseudo_id, '', (select value.int_value from unnest(event_params) as ep where 
        ep.key='ga_session_id') )  as user_session_id,
        regexp_extract((select value. string_value from unnest(event_params) as ep where ep.key='page_location'),
        r'https?://[^/]+/(.*)') as landing_page_location,
        geo.country as country,
        device.category as device_category,
        device.language as device_language,
        device.operating_system as operating_system,
        traffic_source.name as campaign,
        traffic_source.source as source,
        traffic_source.medium as medium
from `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*` 
where event_name = 'session_start'
),
events as (
       select timestamp_micros(event_timestamp) as event_timestamp,
       event_name,
       concat(user_pseudo_id, '', (select value.int_value from unnest(event_params) as ep where 
        ep.key='ga_session_id') )  as user_session_id
from `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*` 
where event_name in
      ('session_start',
      'view_item',
      'add_to_cart',
      'begin_checkout',
      'add_shipping_info',
      'add_payment_info',
      'purchase') 
)
select s.user_pseudo_id,
       s.ga_session_id,
       s.user_session_id,
       s.landing_page_location,
       s.country,
       s.device_category,
       s.device_language,
       s.operating_system,
       s.campaign,
       s.source,
       s.medium,
       e.event_timestamp,
       e.event_name
from sessions_info s
left join 
events e on s.user_session_id=e.user_session_id
