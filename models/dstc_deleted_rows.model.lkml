# Define the database connection to be used for this model.
connection: "dstc-analytics"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: dstc_deleted_rows_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: dstc_deleted_rows_default_datagroup

explore: journal_items{}
