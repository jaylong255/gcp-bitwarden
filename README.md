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
2. Create a Project

```bash
# Inialize Terraform
terraform init


```