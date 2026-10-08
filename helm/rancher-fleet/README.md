# rancher-fleet

Fleet Controller - GitOps at Scale

**Homepage:** <https://github.com/giantswarm/rancher-fleet>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Team Rocket | <team-rocket@giantswarm.io> |  |

## Source Code

* <https://github.com/rancher/fleet>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
|  | rancher-fleet-crds | 0.16.1 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| image.repository | string | `"giantswarm/rancher-fleet"` |  |
| image.tag | string | `"v0.16.1"` |  |
| image.imagePullPolicy | string | `"IfNotPresent"` |  |
| agentImage.repository | string | `"giantswarm/rancher-fleet-agent"` |  |
| agentImage.tag | string | `"v0.16.1"` |  |
| agentImage.imagePullPolicy | string | `"IfNotPresent"` |  |
| apiServerURL | string | `""` |  |
| apiServerCA | string | `""` |  |
| agentTLSMode | string | `"system-store"` |  |
| agentCheckinInterval | string | `"15m"` |  |
| garbageCollectionInterval | string | `"15m"` |  |
| ignoreClusterRegistrationLabels | bool | `false` |  |
| noProxy | string | `"127.0.0.0/8,10.0.0.0/8,172.16.0.0/12,192.168.0.0/16,.svc,.cluster.local"` |  |
| gitClientTimeout | string | `"30s"` |  |
| bootstrap.enabled | bool | `true` |  |
| bootstrap.namespace | string | `"fleet-local"` |  |
| bootstrap.agentNamespace | string | `""` |  |
| bootstrap.localAgentDisabled | bool | `true` |  |
| bootstrap.clusterLabels | object | `{}` |  |
| bootstrap.repo | string | `""` |  |
| bootstrap.secret | string | `""` |  |
| bootstrap.branch | string | `"master"` |  |
| bootstrap.paths | string | `""` |  |
| global.cattle.imagePullSecrets | list | `[]` |  |
| global.cattle.systemDefaultRegistry | string | `"gsoci.azurecr.io"` |  |
| rancher-fleet-crds | object | `{}` | The rancher-fleet-crds subchart takes no values; Helm adds this key, with `global` inside, for every dependency. |
| nodeSelector | object | `{}` |  |
| tolerations | list | `[]` |  |
| affinity | object | `{}` |  |
| resources | object | `{}` |  |
| priorityClassName | string | `""` |  |
| insecureSkipHostKeyChecks | bool | `false` |  |
| additionalKnownHosts | list | `[]` |  |
| gitops.enabled | bool | `true` |  |
| gitops.syncPeriod | string | `"2h"` |  |
| metrics.enabled | bool | `true` |  |
| debug | bool | `false` |  |
| debugLevel | int | `0` |  |
| propagateDebugSettingsToAgents | bool | `true` |  |
| disableSecurityContext | bool | `false` |  |
| migrations.clusterRegistrationCleanup | bool | `true` |  |
| migrations.gitrepoJobsCleanup | bool | `true` |  |
| migrations.gitrepoHelmURLRegexMigration | bool | `true` |  |
| leaderElection.leaseDuration | string | `"30s"` |  |
| leaderElection.retryPeriod | string | `"10s"` |  |
| leaderElection.renewDeadline | string | `"25s"` |  |
| controller.replicas | int | `1` |  |
| controller.registrationTokenTTL.required | bool | `false` |  |
| controller.reconciler.workers.gitrepo | string | `"50"` |  |
| controller.reconciler.workers.bundle | string | `"50"` |  |
| controller.reconciler.workers.bundledeployment | string | `"50"` |  |
| controller.reconciler.workers.cluster | string | `"50"` |  |
| controller.reconciler.workers.clustergroup | string | `"50"` |  |
| controller.reconciler.workers.imagescan | string | `"50"` |  |
| controller.reconciler.workers.schedule | string | `"50"` |  |
| controller.reconciler.workers.content | string | `"50"` |  |
| gitjob.replicas | int | `1` |  |
| helmops.enabled | bool | `true` |  |
| helmops.replicas | int | `1` |  |
| imagescan.enabled | bool | `false` |  |
| agent.replicas | int | `1` |  |
| agent.reconciler.workers.bundledeployment | string | `"50"` |  |
| agent.reconciler.workers.drift | string | `"50"` |  |
| agent.leaderElection.leaseDuration | string | `"30s"` |  |
| agent.leaderElection.retryPeriod | string | `"10s"` |  |
| agent.leaderElection.renewDeadline | string | `"25s"` |  |
