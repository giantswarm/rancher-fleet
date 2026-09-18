<!-- DOCS_START -->

### agent
Properties within the `.agent` top-level object
Fleet agent configuration

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |
| `agent.leaderElection` | **leaderElection** - Leader election configuration|**Type:** `object`<br/>|
| `agent.leaderElection.leaseDuration` | **leaseDuration**|**Type:** `string`<br/>|
| `agent.leaderElection.renewDeadline` | **renewDeadline**|**Type:** `string`<br/>|
| `agent.leaderElection.retryPeriod` | **retryPeriod**|**Type:** `string`<br/>|
| `agent.reconciler` | **reconciler**|**Type:** `object`<br/>|
| `agent.reconciler.workers` | **workers** - The number of workers that are allowed for each type of reconciler|**Type:** `object`<br/>|
| `agent.reconciler.workers.bundledeployment` | **bundledeployment**|**Type:** `string`<br/>|
| `agent.reconciler.workers.drift` | **drift**|**Type:** `string`<br/>|
| `agent.replicas` | **replicas**|**Type:** `integer`<br/>|

### agentImage
Properties within the `.agentImage` top-level object

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |
| `agentImage.imagePullPolicy` | **imagePullPolicy**|**Type:** `string`<br/>|
| `agentImage.repository` | **repository**|**Type:** `string`<br/>|
| `agentImage.tag` | **tag**|**Type:** `string`<br/>|

### bootstrap
Properties within the `.bootstrap` top-level object

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |
| `bootstrap.agentNamespace` | **agentNamespace** - The namespace where the fleet agent for the local cluster will be ran, if empty this will default to cattle-fleet-system|**Type:** `string`<br/>|
| `bootstrap.branch` | **branch**|**Type:** `string`<br/>|
| `bootstrap.clusterLabels` | **clusterLabels** - Apply extra clusterLabels to the local cluster bootstrapped by fleet-controller|**Type:** `object`<br/>|
| `bootstrap.enabled` | **enabled**|**Type:** `boolean`<br/>|
| `bootstrap.localAgentDisabled` | **localAgentDisabled** - If true, the local cluster stays registered (Cluster + ClusterGroup) but the fleet-agent is NOT deployed into it. An already-running local agent will be removed. The local cluster will not receive deployments.|**Type:** `boolean`<br/>|
| `bootstrap.namespace` | **namespace** - The namespace that will be autocreated and the local cluster will be registered in|**Type:** `string`<br/>|
| `bootstrap.paths` | **paths**|**Type:** `string`<br/>|
| `bootstrap.repo` | **repo** - A repo to add at install time that will deploy to the local cluster. This allows one to fully bootstrap fleet, its configuration and all its downstream clusters in one shot.|**Type:** `string`<br/>|
| `bootstrap.secret` | **secret**|**Type:** `string`<br/>|

### cattle
Properties within the `.global.cattle` object

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |
| `global.cattle.imagePullSecrets` | **imagePullSecrets**|**Type:** `array`<br/>|
| `global.cattle.systemDefaultRegistry` | **systemDefaultRegistry**|**Type:** `string`<br/>|

### controller
Properties within the `.controller` top-level object
# Fleet controller configuration

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |
| `controller.reconciler` | **reconciler**|**Type:** `object`<br/>|
| `controller.reconciler.workers` | **workers** - The number of workers that are allowed to each type of reconciler|**Type:** `object`<br/>|
| `controller.reconciler.workers.bundle` | **bundle**|**Type:** `string`<br/>|
| `controller.reconciler.workers.bundledeployment` | **bundledeployment**|**Type:** `string`<br/>|
| `controller.reconciler.workers.cluster` | **cluster**|**Type:** `string`<br/>|
| `controller.reconciler.workers.clustergroup` | **clustergroup**|**Type:** `string`<br/>|
| `controller.reconciler.workers.content` | **content**|**Type:** `string`<br/>|
| `controller.reconciler.workers.gitrepo` | **gitrepo**|**Type:** `string`<br/>|
| `controller.reconciler.workers.imagescan` | **imagescan**|**Type:** `string`<br/>|
| `controller.reconciler.workers.schedule` | **schedule**|**Type:** `string`<br/>|
| `controller.registrationTokenTTL` | **registrationTokenTTL**|**Type:** `object`<br/>|
| `controller.registrationTokenTTL.required` | **required**|**Type:** `boolean`<br/>|
| `controller.replicas` | **replicas**|**Type:** `integer`<br/>|

### gitjob
Properties within the `.gitjob` top-level object

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |
| `gitjob.replicas` | **replicas**|**Type:** `integer`<br/>|

### gitops
Properties within the `.gitops` top-level object

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |
| `gitops.enabled` | **enabled**|**Type:** `boolean`<br/>|
| `gitops.syncPeriod` | **syncPeriod** - syncPeriod is used to pick up polling for lost gitrepo events. It should be larger than the largest gitrepo pollinginterval.|**Type:** `string`<br/>|

### helmops
Properties within the `.helmops` top-level object

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |
| `helmops.enabled` | **enabled**|**Type:** `boolean`<br/>|
| `helmops.replicas` | **replicas**|**Type:** `integer`<br/>|

### image
Properties within the `.image` top-level object

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |
| `image.imagePullPolicy` | **imagePullPolicy**|**Type:** `string`<br/>|
| `image.repository` | **repository**|**Type:** `string`<br/>|
| `image.tag` | **tag**|**Type:** `string`<br/>|

### imagescan
Properties within the `.imagescan` top-level object
When enabled, the imagescan controller will run to monitor image repositories. If disabled, config files (e.g. fleet.yaml) containing non-empty imageScan fields will result in errors. This option may be deprecated in a future release, and imagescan removed.

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |
| `imagescan.enabled` | **enabled**|**Type:** `boolean`<br/>|

### leaderElection
Properties within the `.leaderElection` top-level object
# Leader election configuration

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |
| `leaderElection.leaseDuration` | **leaseDuration**|**Type:** `string`<br/>|
| `leaderElection.renewDeadline` | **renewDeadline**|**Type:** `string`<br/>|
| `leaderElection.retryPeriod` | **retryPeriod**|**Type:** `string`<br/>|

### metrics
Properties within the `.metrics` top-level object

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |
| `metrics.enabled` | **enabled**|**Type:** `boolean`<br/>|

### migrations
Properties within the `.migrations` top-level object

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |
| `migrations.clusterRegistrationCleanup` | **clusterRegistrationCleanup**|**Type:** `boolean`<br/>|
| `migrations.gitrepoHelmURLRegexMigration` | **gitrepoHelmURLRegexMigration**|**Type:** `boolean`<br/>|
| `migrations.gitrepoJobsCleanup` | **gitrepoJobsCleanup**|**Type:** `boolean`<br/>|

### Other

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |
| `additionalKnownHosts` | **additionalKnownHosts** - Adds hosts to the known_hosts configmap if using a custom git provider for gitrepos|**Type:** `array`<br/>|
| `affinity` | **affinity** - Pod affinity for the controllers.|**Type:** `object`<br/>|
| `agentCheckinInterval` | **agentCheckinInterval** - A duration string for how often agents should report a heartbeat|**Type:** `string`<br/>|
| `agentTLSMode` | **agentTLSMode** - Determines whether the agent should trust CA bundles from the operating system's trust store when connecting to a management cluster. True in `system-store` mode, false in `strict` mode.|**Type:** `string`<br/>|
| `apiServerCA` | **apiServerCA** - For cluster registration the pem encoded value of the CA of the Kubernetes API server must be set here. If left empty it is assumed this Kubernetes API TLS is signed by a well known CA.|**Type:** `string`<br/>|
| `apiServerURL` | **apiServerURL** - For cluster registration the public URL of the Kubernetes API server must be set here Example: https://example.com:6443|**Type:** `string`<br/>|
| `debug` | **debug**|**Type:** `boolean`<br/>|
| `debugLevel` | **debugLevel**|**Type:** `integer`<br/>|
| `disableSecurityContext` | **disableSecurityContext**|**Type:** `boolean`<br/>|
| `garbageCollectionInterval` | **garbageCollectionInterval** - The amount of time that agents will wait before they clean up old Helm releases. A non-existent value or 0 will result in an interval of 15 minutes.|**Type:** `string`<br/>|
| `gitClientTimeout` | **gitClientTimeout** - The amount of time to wait for a response from the server before canceling the request.  Used to retrieve the latest commit of configured git repositories. A non-existent value or 0 will result in a timeout of 30 seconds.|**Type:** `string`<br/>|
| `ignoreClusterRegistrationLabels` | **ignoreClusterRegistrationLabels** - Whether you want to allow cluster upon registration to specify their labels.|**Type:** `boolean`<br/>|
| `insecureSkipHostKeyChecks` | **insecureSkipHostKeyChecks** - Determines whether SSH operations (eg. cloning git repos, downloading Helm charts) could succeed if host verification fails. Insecure when set to true.|**Type:** `boolean`<br/>|
| `noProxy` | **noProxy** - comma separated list of domains or ip addresses that will not use the proxy|**Type:** `string`<br/>|
| `nodeSelector` | **nodeSelector** - # Node labels for pod assignment. Ref: https://kubernetes.io/docs/user-guide/node-selection/|**Type:** `object`<br/>|
| `priorityClassName` | **priorityClassName** - PriorityClassName assigned to deployment.|**Type:** `string`<br/>|
| `propagateDebugSettingsToAgents` | **propagateDebugSettingsToAgents**|**Type:** `boolean`<br/>|
| `resources` | **resources** - Container resource limits and requests for the controllers|**Type:** `object`<br/>|
| `tolerations` | **tolerations** - List of node taints to tolerate.|**Type:** `array`<br/>|


<!-- DOCS_END -->
