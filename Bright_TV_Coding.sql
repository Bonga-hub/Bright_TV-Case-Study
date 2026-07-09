-- Databricks notebook source
---Telling Databricks to use the "Bright_TV" catalogue and the "DATA" schema
USE bright_tv.`bright_tv-data`;

---Running the full tables
SELECT *
FROM bright_tv.`bright_tv-data`.bright_tv_dataset_user_profiles;

SELECT *
FROM bright_tv.`bright_tv-data`.bright_tv_dataset_viewership;

---Gender checks
SELECT DISTINCT gender
FROM `bright_tv_dataset_user_profiles`;

---
SELECT DISTINCT
    CASE
        WHEN Gender = 'None' THEN 'unknown' ---Replaces the value 'None' with 'unknown'
        WHEN Gender = ' ' THEN 'unknown' ---Replaces the blanks with 'unknown'
    ELSE Gender
    END AS Gender_clean 
    FROM `bright_tv_dataset_user_profiles`;

---Race checks
SELECT DISTINCT Race
FROM bright_tv_dataset_user_profiles;

SELECT DISTINCT
    CASE 
        WHEN Race = 'other' THEN 'unknown'
        WHEN Race = 'None' THEN 'unknown'
        WHEN Race = ' ' THEN 'unknown'
    ELSE Race
    END AS Race_clean
    FROM bright_tv_dataset_user_profiles;
