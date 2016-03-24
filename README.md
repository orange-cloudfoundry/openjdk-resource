# Open JDK Resource

Tracks update made to [Open JDK 8](https://jdk8.java.net/). This resource parse https://jdk8.java.net/download.html to get
 Open Jdk binairies.

## Deploying to Concourse

In your bosh deployment manifest, add to the `groundcrew.additional_resource_types` with the following:

```yaml
- image: docker:///orangeopensource/openjdk-resource
  type: openjdk-resource
```

## Source Configuration
Default value *bold*
* `type`: *Optional.* Value: [*jdk*|jre].

    Example: todo

* `platform`: *Optional.* target execution platform. Value [*linux*,...]

* `arch`: *Optional* target platform architecture. Value [*x64*,...]

* `fallback_url`: *Optional* Fallback url use to download binairies. Sometime no version is available for download. *Default: ""*

    Exemple: "http://www.java.net/download/jdk8u76/archive/b04/binaries/jdk-8u76-ea-bin-b04-linux-x64-25_jan_2016.tar.gz""


## Behavior

### `check`: Check for new version of openjdk

Detects new versions of Open JDK that have been published to [https://jdk8.java.net/](https://jdk8.java.net/).

### `in`: Clone the repository, at the given pull request ref

Fetches a given release, placing the following in the destination:

* `version`: The version number of the release.
* `url`: A URL that can be used to download the release tarball.
* `openjdk.tar.gz`: The OpenJdk tarball, if the `tarball` param is `true`.

#### Parameters

* `tarball`: *Optional.* Default `true`. Fetch the release tarball.
* `output_name` : *Optional.* Default `openjdk.tar.gz`. Set a custom name for Open Jdk tarball.


## Example pipeline

Have a look at [our pipeline](ci/pipeline.yml).


## Tests

Tests can be run two ways, for local feedback and to see how it will run on the resource container.

1. Local

```sh
 TODO
```
2. Container, requires requires `docker`

```sh
TODO
```
Reminder: details proxy usage


