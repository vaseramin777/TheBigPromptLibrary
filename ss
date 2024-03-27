- pipeline: "Pipeline"
  events:
  - type: "PUSH"
    refs:
    - "refs/heads/master"
    - ":default"
  fail_on_prepare_env_warning: true
  actions:
  - action: "nosetests"
    type: "BUILD"
    docker_image_name: "library/python"
    docker_image_tag: "3.9"
    execute_commands:
    - "pip install -r requirements.txt"
    - "nosetests"
    cached_dirs:
    - "/root/.cache/pip"
    shell: "BASH"
