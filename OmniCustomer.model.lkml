connection: "lcg_pivotstream_poc"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project

explore : OmniModel
{
from:  transactions
}
