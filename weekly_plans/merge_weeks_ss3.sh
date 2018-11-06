#!/bin/sh

cd weekly_plans

rm ww_ss3_merged.md

sed '1 { /^---/ { :a N; /\n---/! ba; d} }' ww45.md >> ww_ss3_merged.md
sed '1 { /^---/ { :a N; /\n---/! ba; d} }' ww46.md >> ww_ss3_merged.md
sed '1 { /^---/ { :a N; /\n---/! ba; d} }' ww47.md >> ww_ss3_merged.md
sed '1 { /^---/ { :a N; /\n---/! ba; d} }' ww48.md >> ww_ss3_merged.md
sed '1 { /^---/ { :a N; /\n---/! ba; d} }' ww49.md >> ww_ss3_merged.md
sed '1 { /^---/ { :a N; /\n---/! ba; d} }' ww50-51.md >> ww_ss3_merged.md
