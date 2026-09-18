"""app-test-suite smoke test for the rancher-fleet chart.

Checks that the fleet-controller, gitjob and helmops Deployments come up
and reach their desired replica count after a chart install.
"""
import os

import pykube
import pytest
from pytest_helm_charts.clusters import Cluster
from pytest_helm_charts.k8s.deployment import wait_for_deployments_to_run

namespace = os.environ.get("ATS_RELEASE_NAMESPACE", "default")
deployments = ["fleet-controller", "gitjob", "helmops"]
timeout: int = 180


@pytest.mark.smoke
def test_api_working(kube_cluster: Cluster) -> None:
    assert kube_cluster.kube_client is not None
    assert len(pykube.Node.objects(kube_cluster.kube_client)) >= 1


@pytest.mark.smoke
@pytest.mark.flaky(reruns=1, reruns_delay=15)
def test_deployments_ready(kube_cluster: Cluster) -> None:
    ready = wait_for_deployments_to_run(kube_cluster.kube_client, deployments, namespace, timeout)
    assert len(ready) == len(deployments)
    for deployment in ready:
        assert int(deployment.obj["status"].get("readyReplicas", 0)) == int(
            deployment.obj["spec"]["replicas"]
        )
