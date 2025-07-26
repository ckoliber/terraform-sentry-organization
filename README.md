# Terraform Sentry Organization

![pipeline](https://github.com/ckoliber/terraform-sentry-organization/actions/workflows/cicd.yml/badge.svg)
![release](https://img.shields.io/github/v/release/ckoliber/terraform-sentry-organization?display_name=tag)
![license](https://img.shields.io/github/license/ckoliber/terraform-sentry-organization)

**Organization** is a Terraform module useful for creating multiple teams and projects in **Sentry**

## Installation

Add the required configurations to your terraform config file and install module using command bellow:

```bash
terraform init
```

## Usage

```hcl
module "sentry" {
  source = "ckoliber/organization/sentry"

  slug = "myorg"
  name = "MyOrg"

  teams = {
    backend = {
      slug = "backend"
      name = "Backend"
    }
    frontend = {
      slug = "backend"
      name = "Frontend"
    }
  }

  projects = {
    app1 = {
      slug  = "app1"
      name  = "App1"
      teams = ["backend"]
    }
    app2 = {
      slug     = "app2"
      name     = "App2"
      teams    = ["backend", "frontend"]
      platform = "django"
    }
  }
}

```

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

This project is licensed under the [MIT](LICENSE.md).  
Copyright (c) KoLiBer (koliberr136a1@gmail.com)
