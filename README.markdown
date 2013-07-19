Attempting to reproduce an odd issue where a method defined in a rake task file
clobbered a method in a model.


rake demo:setup
rake demo:q

QUEUES=* VERBOSE=1 rake environment resque:work


The expected behavior is that when the resque job runs, you see:
Working on <a number>

If you have successfully reproduced the issue, you will see:
Working on ruby
