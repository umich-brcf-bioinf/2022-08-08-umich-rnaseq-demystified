---
title: "Day 1 - Breakout 02"
author: "UM Bioinformatics Core"
output:
        html_document:
            includes:
                in_header: header.html
            theme: paper
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

<br>

## Aligning All Samples Exercise (Breakout):

<br>

**15 Minutes**

<br>

We just learned about how to use RSEM & STAR, but now we need to align all of the rest of our samples to the reference genome. We'll use the concepts we've learned earlier in this breakout exercise.

<br>

### Instructions:

<br>

- One group member should share their screen in the breakout room. If nobody volunteers, a helper may randomly select someone.
- The group members should discuss the exercise and work together to find a solution.
- After a solution is found, allow time for all members to complete the exercise.

<br>

- Review what we learned about running RSEM + STAR, to construct an appropriate command for aligning one of our samples.
- Use a bash variable in our alignment command to quickly and easily align samples 2-4.
- View the output, and verify that we have the files we need.

<br>

### Solution - Aligning All Samples Exercise

<br>

One solution is to define a bash variable for the sample, use that variable in the alignment command, and then redefine the variable before repeating the command for each change .

    # Define a variable $SAMPLE
    SAMPLE=SRR7777896
    rsem-calculate-expression --star --num-threads 1 --star-gzipped-read-file \
    --star-output-genome-bam --keep-intermediate-files \
    out_trimmed/${SAMPLE}_R1.trimmed.fastq.gz \
    ../refs/GRCm38.102.chr19reduced \
    out_rsem/${SAMPLE}
    SAMPLE=SRR7777897
    # Use the up arrow key to repeat the same command as above with the variable reassigned to sample_03
    SAMPLE=SRR7777898
    # Use the up arrow key to repeat the same command as above with the variable reassigned to sample_04
    SAMPLE=SRR7777899
    # Use the up arrow key to repeat the same command as above with the variable reassigned to sample_04
    SAMPLE=SRR7777900
    # Use the up arrow key to repeat the same command as above with the variable reassigned to sample_04

<br>

Another solution is to create a for-loop with our bash variable and alignment command. E.g.

    for SAMPLE in SRR7777896 SRR7777897 SRR7777898 SRR7777899 SRR7777900
    do
        rsem-calculate-expression --star --num-threads 1 --star-gzipped-read-file \
        --star-output-genome-bam --keep-intermediate-files \
        out_trimmed/${SAMPLE}_R1.trimmed.fastq.gz \
        ../refs/GRCm38.102.chr19reduced \
        out_rsem/${SAMPLE}
    done

<br>

> Helper Hint: If suggesting a for-loop approach, it can be helpful to build up a "dry-run" command as a test case, to get learners to be more cognizant of what their code will do. Echoing filenames first might be a good suggestion.

<br>
