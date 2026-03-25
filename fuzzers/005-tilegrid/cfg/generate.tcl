# Copyright (C) 2017-2020  The Project X-Ray Authors
#
# Use of this source code is governed by a ISC-style
# license that can be found in the LICENSE file or at
# https://opensource.org/licenses/ISC
#
# SPDX-License-Identifier: ISC
source "$::env(XRAY_DIR)/utils/utils.tcl"

# BSCAN_JtagChain supress
# Now cfg fuzzers won't work on 2019.1, just let 005 pass
set_msg_config -id {Vivado 12-4430} -suppress
set_property SEVERITY {Warning} [get_drc_checks PDRC-2]

generate_top
