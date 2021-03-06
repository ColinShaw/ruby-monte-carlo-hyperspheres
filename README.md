# N-Dimensional Hypersphere Volumes in Ruby

This is a really basic implmentation of Monte Carlo integration for computing the volume of
hyperspheres in low dimensions.  The point of it definitely is not the accuracy or speed 
of the computation, but rather the simplicity of implementation.  This could be considered
a template for cases where parallelizable processes, such as Monte Carlo processes, having an
easily crafted computation kernel, want to be threaded.

You can run the example like: 

```
ruby sphere_cli.rb 2 100000
```

to perform 100,000 iterations of the Monte Carlo integration for a hypersphere of 
dimension two.  Or run the tests in the `/spec` folder.  It is possible tests could 
fail if the RNG does not produce acceptably distributed output.
