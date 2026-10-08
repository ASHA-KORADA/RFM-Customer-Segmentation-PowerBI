
# SQL Analysis Results

These screenshots represent the results generated from the SQL Server implementation of the RFM analysis.

## Scoring Methodology

The SQL implementation uses `NTILE(5)` for RFM scoring, while the Power BI implementation uses percentile-based scoring (`PERCENTILEX.INC`).

Since these scoring approaches use different threshold methodologies, customer segment distributions and revenue contributions may differ between the SQL and Power BI implementations.

The segmentation rules are business-defined and applied consistently within each implementation.
