#!/bin/sh

gcloud container clusters get-credentials "$CLUSTER_NAME" --zone "$ZONE"


deploy_path="$GLUSTER_HEKETI_BOOTSTRAP_DIR/gluster-kubernetes/deploy"

# ---------------- [START] Deploy GlusterFS DaemonSet, Heketi ---------------- #
cd "$deploy_path"

gk-deploy -gv
# ----------------- [END] Deploy GlusterFS DaemonSet, Heketi ----------------- #
