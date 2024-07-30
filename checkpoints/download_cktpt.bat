@echo off
REM Copyright (c) Meta Platforms, Inc. and affiliates.
REM All rights reserved.

REM This source code is licensed under the license found in the
REM LICENSE file in the root directory of this source tree.

REM Define the URLs for the checkpoints
set BASE_URL=https://dl.fbaipublicfiles.com/segment_anything_2/072824/
set sam2_hiera_t_url=%BASE_URL%sam2_hiera_tiny.pt
set sam2_hiera_s_url=%BASE_URL%sam2_hiera_small.pt
set sam2_hiera_b_plus_url=%BASE_URL%sam2_hiera_base_plus.pt
set sam2_hiera_l_url=%BASE_URL%sam2_hiera_large.pt

REM Download each of the four checkpoints using curl
echo Downloading sam2_hiera_tiny.pt checkpoint...
curl -O %sam2_hiera_t_url%
if %errorlevel% neq 0 (
    echo Failed to download checkpoint from %sam2_hiera_t_url%
    exit /b 1
)

echo Downloading sam2_hiera_small.pt checkpoint...
curl -O %sam2_hiera_s_url%
if %errorlevel% neq 0 (
    echo Failed to download checkpoint from %sam2_hiera_s_url%
    exit /b 1
)

echo Downloading sam2_hiera_base_plus.pt checkpoint...
curl -O %sam2_hiera_b_plus_url%
if %errorlevel% neq 0 (
    echo Failed to download checkpoint from %sam2_hiera_b_plus_url%
    exit /b 1
)

echo Downloading sam2_hiera_large.pt checkpoint...
curl -O %sam2_hiera_l_url%
if %errorlevel% neq 0 (
    echo Failed to download checkpoint from %sam2_hiera_l_url%
    exit /b 1
)

echo All checkpoints are downloaded successfully.
