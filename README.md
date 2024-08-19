# Blueprint

**Blueprint** is a centralized repository for managing HomeLab infrastructure using Infrastructure as Code (IaC). This repository is a public template derived from my private HomeLab setup, offering a structured approach to configure, automate, and manage resources.

## Overview

Blueprint leverages the power of IaC to provide a scalable and reproducible environment for HomeLab enthusiasts and professionals. The most critical component is the **Ansible** configuration, which simplifies the management of your systems. Additionally, **Terraform** is used to manage DNS with **Cloudflare** and implement **Zero Trust Networking** with **Twingate**.

### Note
While this repository includes configuration files for **Hetzner Cloud** and **Google Cloud Platform (GCP)**, these are optional and can be safely deleted if not needed. The core focus of this repository is on Ansible and the Terraform configurations for Cloudflare and Twingate.

## Key Features

- **Ansible Configuration and Automation**: The centerpiece of this repository. It includes essential playbooks for system configuration, package management using `apt`, and security hardening.
- **Terraform for Cloudflare and Twingate**: Manage your DNS settings with Cloudflare and implement secure access controls with Twingate.
- **Centralized IaC Repository**: Keep your Ansible configurations and Terraform setups in a single, version-controlled Git repository.

## Getting Started

### Prerequisites

- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) installed on your local machine.
- [Terraform](https://learn.hashicorp.com/terraform/getting-started/install) installed and configured.
- Accounts on Cloudflare and Twingate.

### Installation

1. **Clone the Repository**:
    ```bash
    git clone https://github.com/yourusername/blueprint.git
    cd blueprint
    ```

2. **Configure Ansible**:
   - The Ansible setup is the most critical part of this repository.
   - Update the `ansible/hosts` file with your inventory details.
   - The playbooks are organized under the `ansible/playbooks` directory:
     - **`apt.yml`**: Handles package management and updates via `apt`.
     - **`security.yml`**: Implements basic security hardening measures.
   - Customize the playbooks as needed for your environment.

3. **Set Up Terraform** *(Optional)*:
   - If you're using Cloudflare and Twingate:
     - Navigate to the `terraform/cloudflare` and `terraform/twingate` directories.
     - Update the `.tf` files with your specific configuration.
     - Initialize and apply the Terraform configuration:
       ```bash
       terraform init
       terraform apply
       ```
   - **GCP** and **Hetzner Cloud** configurations are included but not essential. Feel free to delete these directories if they are not required for your setup.

## Usage

This repository serves as a **blueprint** for setting up and managing a HomeLab infrastructure with a strong emphasis on Ansible for system configuration. The Terraform modules for Cloudflare and Twingate are provided as semi-important examples, while other cloud resources can be managed as needed.

Whenever I make updates or improvements in my private HomeLab, I will manually sync relevant changes to this public repository to keep it up to date.

## Contributing

Contributions are welcome! If you have suggestions or improvements, feel free to open an issue or submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for details.

## Acknowledgements

- [Ansible](https://www.ansible.com/)
- [Terraform](https://www.terraform.io/)
- [Twingate](https://www.twingate.com/)
- [Cloudflare](https://www.cloudflare.com/)
- [Hetzner Cloud](https://www.hetzner.com/cloud)
- [Google Cloud Platform](https://cloud.google.com/)
