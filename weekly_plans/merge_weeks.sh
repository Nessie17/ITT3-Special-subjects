#!/bin/sh

cd weekly_plans

rm ww_ss1_merged.md

sed '1 { /^---/ { :a N; /\n---/! ba; d} }' ww34.md >> ww_ss1_merged.md
sed '1 { /^---/ { :a N; /\n---/! ba; d} }' ww35.md >> ww_ss1_merged.md
sed '1 { /^---/ { :a N; /\n---/! ba; d} }' ww36.md >> ww_ss1_merged.md
sed '1 { /^---/ { :a N; /\n---/! ba; d} }' ww37.md >> ww_ss1_merged.md
sed '1 { /^---/ { :a N; /\n---/! ba; d} }' ww38.md >> ww_ss1_merged.md


