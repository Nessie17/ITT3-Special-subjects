#!/bin/sh

cd weekly_plans

rm ww_ss2_merged.md

sed '1 { /^---/ { :a N; /\n---/! ba; d} }' ww39.md >> ww_ss2_merged.md
sed '1 { /^---/ { :a N; /\n---/! ba; d} }' ww40.md >> ww_ss2_merged.md
sed '1 { /^---/ { :a N; /\n---/! ba; d} }' ww41.md >> ww_ss2_merged.md
sed '1 { /^---/ { :a N; /\n---/! ba; d} }' ww43.md >> ww_ss2_merged.md
sed '1 { /^---/ { :a N; /\n---/! ba; d} }' ww44.md >> ww_ss2_merged.md
