antiSMASH CLI wrapper for CWL
=============================

First steps and small example of wrapping a command line tool in a [Common Workflow Language (CWL)](http://www.commonwl.org/)
description.

Running
-------

To run this yourself, you'll need Docker and a CWL implementation. For starters, the reference implementation will work. Run
`pip install cwltool cwl-runner` to install it, use a virtual environment if you like. Also, the antiSMASH docker container is
rather large, so having a decent internet connection will help.

To grab the example file, run
```
wget -O nisin.gbk "http://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nucleotide&rettype=gbwithparts&id=HM219853"
```

Then, you can run antismash with the provided job file like this:
```
./antismash.cwl antismash-job.json
```

License
-------
This code for demonstration purposes is provided under a CC-BY 4.0 license.
See [`LICENSE`](LICENSE) for details.
