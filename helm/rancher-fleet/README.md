<!-- DOCS_START -->

### agent
Properties within the `.agent` top-level object

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |
| `agent.leaderElection` |**None**|**Type:** `object`<br/>|
| `agent.leaderElection.leaseDuration` |**None**|**Type:** `string`<br/>|
| `agent.leaderElection.renewDeadline` |**None**|**Type:** `string`<br/>|
| `agent.leaderElection.retryPeriod` |**None**|**Type:** `string`<br/>|
| `agent.reconciler` |**None**|**Type:** `object`<br/>|
| `agent.reconciler.workers` |**None**|**Type:** `object`<br/>|
| `agent.reconciler.workers.bundledeployment` |**None**|**Type:** `string`<br/>|
| `agent.reconciler.workers.drift` |**None**|**Type:** `string`<br/>|
| `agent.replicas` |**None**|**Type:** `integer`<br/>|

### agentImage
Properties within the `.agentImage` top-level object

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |
| `agentImage.imagePullPolicy` |**None**|**Type:** `string`<br/>|
| `agentImage.repository` |**None**|**Type:** `string`<br/>|
| `agentImage.tag` |**None**|**Type:** `string`<br/>|

### bootstrap
Properties within the `.bootstrap` top-level object

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |
| `bootstrap.agentNamespace` |**None**|**Type:** `string`<br/>|
| `bootstrap.branch` |**None**|**Type:** `string`<br/>|
| `bootstrap.clusterLabels` |**None**|**Type:** `object`<br/>|
| `bootstrap.enabled` |**None**|**Type:** `boolean`<br/>|
| `bootstrap.localAgentDisabled` |**None**|**Type:** `boolean`<br/>|
| `bootstrap.namespace` |**None**|**Type:** `string`<br/>|
| `bootstrap.paths` |**None**|**Type:** `string`<br/>|
| `bootstrap.repo` |**None**|**Type:** `string`<br/>|
| `bootstrap.secret` |**None**|**Type:** `string`<br/>|

### bootstrapMode
Properties within the `.bootstrapMode` top-level object

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |

### cattle
Properties within the `.global.cattle` object

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |
| `global.cattle.imagePullSecrets` |**None**|**Type:** `array`<br/>|
| `global.cattle.systemDefaultRegistry` |**None**|**Type:** `string`<br/>|

### chartOperator
Properties within the `.chartOperator` top-level object

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |

### ciliumNetworkPolicy
Properties within the `.ciliumNetworkPolicy` top-level object

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |

### cluster
Properties within the `.cluster` top-level object

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |

### controller
Properties within the `.controller` top-level object

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |
| `controller.reconciler` |**None**|**Type:** `object`<br/>|
| `controller.reconciler.workers` |**None**|**Type:** `object`<br/>|
| `controller.reconciler.workers.bundle` |**None**|**Type:** `string`<br/>|
| `controller.reconciler.workers.bundledeployment` |**None**|**Type:** `string`<br/>|
| `controller.reconciler.workers.cluster` |**None**|**Type:** `string`<br/>|
| `controller.reconciler.workers.clustergroup` |**None**|**Type:** `string`<br/>|
| `controller.reconciler.workers.content` |**None**|**Type:** `string`<br/>|
| `controller.reconciler.workers.gitrepo` |**None**|**Type:** `string`<br/>|
| `controller.reconciler.workers.imagescan` |**None**|**Type:** `string`<br/>|
| `controller.reconciler.workers.schedule` |**None**|**Type:** `string`<br/>|
| `controller.registrationTokenTTL` |**None**|**Type:** `object`<br/>|
| `controller.registrationTokenTTL.required` |**None**|**Type:** `boolean`<br/>|
| `controller.replicas` |**None**|**Type:** `integer`<br/>|

### gitjob
Properties within the `.gitjob` top-level object

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |
| `gitjob.replicas` |**None**|**Type:** `integer`<br/>|

### gitops
Properties within the `.gitops` top-level object

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |
| `gitops.enabled` |**None**|**Type:** `boolean`<br/>|
| `gitops.syncPeriod` |**None**|**Type:** `string`<br/>|

### helm
Properties within the `.helm` top-level object

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |

### helmops
Properties within the `.helmops` top-level object

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |
| `helmops.enabled` |**None**|**Type:** `boolean`<br/>|
| `helmops.replicas` |**None**|**Type:** `integer`<br/>|

### image
Properties within the `.image` top-level object

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |
| `image.imagePullPolicy` |**None**|**Type:** `string`<br/>|
| `image.repository` |**None**|**Type:** `string`<br/>|
| `image.tag` |**None**|**Type:** `string`<br/>|

### imagescan
Properties within the `.imagescan` top-level object

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |
| `imagescan.enabled` |**None**|**Type:** `boolean`<br/>|

### leaderElection
Properties within the `.leaderElection` top-level object

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |
| `leaderElection.leaseDuration` |**None**|**Type:** `string`<br/>|
| `leaderElection.renewDeadline` |**None**|**Type:** `string`<br/>|
| `leaderElection.retryPeriod` |**None**|**Type:** `string`<br/>|

### metrics
Properties within the `.metrics` top-level object

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |
| `metrics.enabled` |**None**|**Type:** `boolean`<br/>|

### migrations
Properties within the `.migrations` top-level object

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |
| `migrations.clusterRegistrationCleanup` |**None**|**Type:** `boolean`<br/>|
| `migrations.gitrepoHelmURLRegexMigration` |**None**|**Type:** `boolean`<br/>|
| `migrations.gitrepoJobsCleanup` |**None**|**Type:** `boolean`<br/>|

### podSecurityStandards
Properties within the `.global.podSecurityStandards` object

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |

### rancher-fleet-crds
Properties within the `.rancher-fleet-crds` top-level object
The rancher-fleet-crds subchart takes no values; Helm adds this key, with `global` inside, for every dependency.

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |

### Other

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |
| `additionalKnownHosts` |**None**|**Type:** `array`<br/>|
| `affinity` |**None**|**Type:** `object`<br/>|
| `agentCheckinInterval` |**None**|**Type:** `string`<br/>|
| `agentTLSMode` |**None**|**Type:** `string`<br/>|
| `apiServerCA` |**None**|**Type:** `string`<br/>|
| `apiServerURL` |**None**|**Type:** `string`<br/>|
| `baseDomain` |**None**|**Type:** `string`<br/>|
| `clusterCA` |**None**|**Type:** `string`<br/>|
| `clusterCIDR` |**None**|**Type:** `string`<br/>|
| `clusterDNSIP` |**None**|**Type:** `string`<br/>|
| `clusterID` |**None**|**Type:** `string`<br/>|
| `debug` |**None**|**Type:** `boolean`<br/>|
| `debugLevel` |**None**|**Type:** `integer`<br/>|
| `disableSecurityContext` |**None**|**Type:** `boolean`<br/>|
| `externalDNSIP` |**None**|**Type:** `string`<br/>|
| `garbageCollectionInterval` |**None**|**Type:** `string`<br/>|
| `gcpProject` |**None**|**Type:** `string`<br/>|
| `gitClientTimeout` |**None**|**Type:** `string`<br/>|
| `ignoreClusterRegistrationLabels` |**None**|**Type:** `boolean`<br/>|
| `insecureSkipHostKeyChecks` |**None**|**Type:** `boolean`<br/>|
| `managementCluster` |**None**|**Type:** `string`<br/>|
| `noProxy` |**None**|**Type:** `string`<br/>|
| `nodeSelector` |**None**|**Type:** `object`<br/>|
| `priorityClassName` |**None**|**Type:** `string`<br/>|
| `propagateDebugSettingsToAgents` |**None**|**Type:** `boolean`<br/>|
| `provider` |**None**|**Type:** `string`<br/>|
| `resources` |**None**|**Type:** `object`<br/>|
| `subscriptionID` |**None**|**Type:** `string`<br/>|
| `tolerations` |**None**|**Type:** `array`<br/>|


<!-- DOCS_END -->
