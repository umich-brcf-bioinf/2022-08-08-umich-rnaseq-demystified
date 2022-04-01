---
title: "Day 1 - Module 01: Warming up"
author: "UM Bioinformatics Core"
output:
        html_document:
            includes:
                in_header: header.html
            theme: paper
            toc: true
            toc_depth: 4
            toc_float: true
            number_sections: true
            fig_caption: true
            markdown: GFM
            code_download: true
---
<style type="text/css">
body{ /* Normal  */
      font-size: 14pt;
  }
pre {
  font-size: 12pt
}
</style>

# Warming Up

In this module, we will:

* cover basic materials needed
* familiarize ourselves with remote computing
* prepare for later modules

## Building Blocks

<br>
<br>
<br>
<img src="images/building-blocks.png" width="800" />
<br>
<br>
<br>


## Example Files Exercise:

1. Download the zipped archive from the slack channel
2. Locate, move (if desired), and unzip it
3. Remember how to access these files

<br>
<br>
<br>
<br>
<br>
<br>

## Local vs Remote Exercise:

1. Become familiar with the appearance of the local shell
2. Briefly explore your local files (optional)
3. Log in to the aws instance with `ssh <username>@bfx-workshop01.med.umich.edu`
4. Become familiar with appearance of the remote shell
5. Use `ls` to view references
6. Use `ls` to view input fastq files
7. Use `mkdir` to create a folder for our analysis

<br>
<br>
<br>

```
# Familiarize with local shell appearance
# Briefly explore your local files
ls -l
# Log in to the aws instance via ssh
ssh <username>@bfx-workshop01.med.umich.edu
# Familiarize yourself with differences between local and remote shell
# View our references
ls ~/RSD_Shell/refs
# View our input fastq files
ls ~/RSD_Shell/reads
# Create a folder for our analysis
mkdir ~/RSD_Shell/analysis
```


<br>
<br>
<br>

<details>
<summary>Click here for demonstration comparing local Windows command prompt vs remote (AWS)</summary>

<img src="images/local_v_remote.gif" width="800" />

</details>

<br>
<br>
<br>
<br>
<br>
<br>
<img src="images/building-blocks-checkmark.png" width="800" />
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
