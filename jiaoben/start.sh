#!/bin/sh 
hexo g
hexo s& sleep 10
start http://localhost:4000/
