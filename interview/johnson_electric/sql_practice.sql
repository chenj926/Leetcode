SELECT machine_id, COUNT(*) AS active_count
FROM ProductionLogs
WHERE status = 'ACTIVE'
GROUP BY machine_id;