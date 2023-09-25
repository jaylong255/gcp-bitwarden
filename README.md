# GCP BitWarden
Testing a scripted or otherwise automated and orchestrated implementation of BitWarden on Google Cloud.

## Why Bother?
Sometimes a potential client lead brings a piece of tech to my attention that for one reason or another it seems valuable to take it more seriously than others. (As opposed to tech that sounds vaguely interesting where I throw out a quick and ambiguous ballpark because frankly I'm holding onto the faith that something more dope will come along soon if I can be patient and keep my eyes open.)

This is one of the former cases. It's Google Cloud and it's a security-related solution. At the time of this writing, I'm looking to diversify my cloud experience and I'm always trying to stay strong when it comes to security.

That being said, I'm willing to put in some extra research time of my own to take this potential opportunity particularly serious..

## Relevant Content
> Here are some links to repos and blogs and official landing sites related to what we're trying to accoplish with this effort.

[Bitwarden | The password manager trusted by millions](https://bitwarden.com/)

The basics on the BitWarden solution.

--- 
[About Key Connector](https://bitwarden.com/help/about-key-connector/)

This feature is part of a spec from a particular client who is interested in 

--- 
[How to create a VM(virtual machine) on GCP with Terraform](https://www.educative.io/answers/how-to-create-a-vmvirtual-machine-on-gcp-with-terraform)

This looks like a decent boilerplate to throw up a basic VM to get started.

___ 
[One of my own GitHub repos where this SHOULD be Conveniently Documented](https://github.com/jaylong255/blackrainbow-iac)

These docs contain a CI/CD quickstart for small sample projects 

---

## Requirements
- [Google Cloud CLI](https://cloud.google.com/sdk/gcloud)
- [Terraform](https://www.terraform.io/)

## Getting Set Up

> While I usually like to have CI/CD set up with Terraform and Terraform Cloud, for the sake of a rapid research turnaround, I'm saving state to a bucket. 

***NOTE: while an even faster way would be to use local state, I tend to jump from my office machine to my mobile so it'll be nice to be able to access state from a common source. TF Cloud has an extra auth step and I'm likely to always be the sole contributor here.***

### Manual Steps Taken

1. **Authenticate with Google**: from the gcloud cli, run the command below.
    - `gcloud auth login`
2. **Create a Project**: Use the below command to create a project to work with. Make sure you change the id to make it unique. Replace "CyberWorld" with your own company or project or whatever is your own. Make sure to note the output of the command. You may need the unique identifier later.
    - `gcloud projects create cyberworld-bitwarden-test-2 --name="BitWarden Test" --labels=type=research,temp=1`
3. **Select the Project**: Use the below command to select the project you just created. Don't forget to change the id to match the actual project you just created.
    - `gcloud config set project cyberworld-bitwarden-test-2`
4. **Retrieve Your Organization ID**
    - `gcloud organizations list`
5. **Create a Folder to Contain the Project**: 
    - `gcloud resource-manager folders create --display-name="BitWarden Test" --organization=306636251100`
6. **Make Sure Billing Is Enabled**: If you don't have an active billing account, set one up [here](https://console.cloud.google.com/billing). This will enable billing so that you can do stuff.
7. **Activate Billing**
7. **Create a Bucket to Save Terraform State**: Remeber, you can also just store the state to a local file if you're going to be working alone on a single machine. Or you can take extra steps to set up Terraform Cloud and CI/CD with GitHub actions. I highly recommend this practice on actual teams. 
    - `gcloud storage buckets create gs://cyberworld-research-tfstate`

### Terraform Commands

```bash
# Inialize Terraform
terraform init


```