class jenkins_master {
  # Devel is needed for jar unpacking support
  $packages = ['java-11-openjdk-headless', 'java-11-openjdk-devel', 'fontconfig']

  # Get the list by going to /script on jenkins and running:
  # Jenkins.instance.pluginManager.plugins.toArray().sort{ plugin -> plugin.getShortName()}.each{
  #   plugin -> println ("    '${plugin.getShortName()}' => {},")
  # }
  $plugins = {
    'Matrix-sorter-plugin'               => {},
    'Parameterized-Remote-Trigger'       => {},
    'ace-editor'                         => {},
    'analysis-core'                      => {},
    'analysis-model-api'                 => {},
    'ansible'                            => {},
    'ansicolor'                          => {},
    'ant'                                => {},
    'antisamy-markup-formatter'          => {},
    'apache-httpcomponents-client-4-api' => {},
    'authentication-tokens'              => {},
    'blueocean'                          => {},
    'blueocean-autofavorite'             => {},
    'blueocean-bitbucket-pipeline'       => {},
    'blueocean-commons'                  => {},
    'blueocean-config'                   => {},
    'blueocean-core-js'                  => {},
    'blueocean-dashboard'                => {},
    'blueocean-display-url'              => {},
    'blueocean-events'                   => {},
    'blueocean-executor-info'            => {},
    'blueocean-git-pipeline'             => {},
    'blueocean-github-pipeline'          => {},
    'blueocean-i18n'                     => {},
    'blueocean-jira'                     => {},
    'blueocean-jwt'                      => {},
    'blueocean-personalization'          => {},
    'blueocean-pipeline-api-impl'        => {},
    'blueocean-pipeline-editor'          => {},
    'blueocean-pipeline-scm-api'         => {},
    'blueocean-rest'                     => {},
    'blueocean-rest-impl'                => {},
    'blueocean-web'                      => {},
    'bootstrap4-api'                     => {},
    'bouncycastle-api'                   => {},
    'brakeman'                           => {},
    'branch-api'                         => {},
    'build-flow-plugin'                  => {'version' => '0.20'},
    'build-keeper-plugin'                => {},
    'build-timeout'                      => {},
    'build-timestamp'                    => {},
    'bulk-builder'                       => {},
    'checks-api'                         => {},
    'checkstyle'                         => {},
    'cloud-stats'                        => {},
    'cloudbees-bitbucket-branch-source'  => {},
    'cloudbees-folder'                   => {},
    'cobertura'                          => {},
    'code-coverage-api'                  => {},
    'command-launcher'                   => {},
    'conditional-buildstep'              => {},
    'config-file-provider'               => {},
    'configurationslicing'               => {},
    'copyartifact'                       => {},
    'create-fingerprint'                 => {},
    'credentials'                        => {},
    'credentials-binding'                => {},
    'dashboard-view'                     => {},
    'data-tables-api'                    => {},
    'display-url-api'                    => {},
    'docker-commons'                     => {},
    'docker-workflow'                    => {},
    'dry'                                => {},
    'dtkit-api'                          => {},
    'durable-task'                       => {},
    'dynamic-axis'                       => {},
    'echarts-api'                        => {},
    'email-ext'                          => {},
    'embeddable-build-status'            => {},
    'external-monitor-job'               => {},
    'favorite'                           => {},
    'font-awesome-api'                   => {},
    'forensics-api'                      => {},
    'ghprb'                              => {},
    'git'                                => {},
    'git-client'                         => {},
    'git-parameter'                      => {},
    'git-server'                         => {},
    'github'                             => {},
    'github-api'                         => {},
    'github-branch-source'               => {},
    'github-oauth'                       => {},
    'google-oauth-plugin'                => {},
    'greenballs'                         => {},
    'groovy'                             => {},
    'handlebars'                         => {},
    'handy-uri-templates-2-api'          => {},
    'htmlpublisher'                      => {},
    'icon-shim'                          => {},
    'instant-messaging'                  => {},
    'ircbot'                             => {},
    'jackson2-api'                       => {},
    'javadoc'                            => {},
    'jaxb'                               => {},
    'jclouds-jenkins'                    => {},
    'jdk-tool'                           => {},
    'jenkins-design-language'            => {},
    'jira'                               => {},
    'jquery'                             => {},
    'jquery-detached'                    => {},
    'jquery3-api'                        => {},
    'jsch'                               => {},
    'junit'                              => {},
    'kubernetes'                         => {},
    'kubernetes-client-api'              => {},
    'kubernetes-credentials'             => {},
    'ldap'                               => {},
    'lockable-resources'                 => {},
    'mailer'                             => {},
    'mapdb-api'                          => {},
    'matrix-auth'                        => {},
    'matrix-project'                     => {},
    'maven-plugin'                       => {},
    'mercurial'                          => {},
    'metrics'                            => {},
    'momentjs'                           => {},
    'monitoring'                         => {},
    'multi-slave-config-plugin'          => {},
    'notification'                       => {},
    'oauth-credentials'                  => {},
    'okhttp-api'                         => {},
    'pam-auth'                           => {},
    'parameterized-trigger'              => {},
    'pipeline-build-step'                => {},
    'pipeline-github-lib'                => {},
    'pipeline-githubnotify-step'         => {},
    'pipeline-graph-analysis'            => {},
    'pipeline-input-step'                => {},
    'pipeline-milestone-step'            => {},
    'pipeline-model-api'                 => {},
    'pipeline-model-declarative-agent'   => {},
    'pipeline-model-definition'          => {},
    'pipeline-model-extensions'          => {},
    'pipeline-rest-api'                  => {},
    'pipeline-stage-step'                => {},
    'pipeline-stage-tags-metadata'       => {},
    'pipeline-stage-view'                => {},
    'pipeline-utility-steps'             => {},
    'plain-credentials'                  => {},
    'plugin-util-api'                    => {},
    'popper-api'                         => {},
    'postbuild-task'                     => {},
    'project-stats-plugin'               => {},
    'pubsub-light'                       => {},
    'rake'                               => {},
    'rebuild'                            => {},
    'redmine'                            => {},
    'regression-report-plugin'           => {},
    'ruby'                               => {'version' => '1.2'},
    'rubyMetrics'                        => {},
    'run-condition'                      => {},
    'saferestart'                        => {},
    'scm-api'                            => {},
    'scm-sync-configuration'             => {},
    'script-security'                    => {},
    'slave-setup'                        => {},
    'snakeyaml-api'                      => {},
    'sse-gateway'                        => {},
    'ssh'                                => {},
    'ssh-agent'                          => {},
    'ssh-credentials'                    => {},
    'ssh-slaves'                         => {},
    'statusmonitor'                      => {},
    'structs'                            => {},
    'subversion'                         => {},
    'tap'                                => {},
    'throttle-concurrents'               => {},
    'timestamper'                        => {},
    'token-macro'                        => {},
    'translation'                        => {},
    'trilead-api'                        => {},
    'variant'                            => {},
    'violations'                         => {},
    'warnings'                           => {},
    'warnings-ng'                        => {},
    'windows-slaves'                     => {},
    'workflow-aggregator'                => {},
    'workflow-api'                       => {},
    'workflow-basic-steps'               => {},
    'workflow-cps'                       => {},
    'workflow-cps-global-lib'            => {},
    'workflow-durable-task-step'         => {},
    'workflow-job'                       => {},
    'workflow-multibranch'               => {},
    'workflow-scm-step'                  => {},
    'workflow-step-api'                  => {},
    'workflow-support'                   => {},
    'xunit'                              => {},
    'xvfb'                               => {},
    'zentimestamp'                       => {},
  }

  ensure_packages($packages)

  class { 'jenkins':
    install_java      => false,
    lts               => true,
    cli_remoting_free => true,
    default_plugins   => [],
    plugin_hash       => $plugins,
    config_hash       => {
      'JENKINS_JAVA_OPTIONS' => {
        'value' => '-Djava.awt.headless=true -Djenkins.install.runSetupWizard=false -Xms2048m -Xmx2048m',
      },
    },
    require           => Package[$packages],
  }

}
