set peek_data_strobe_axi4 0
set poke_data_strobe_axi4 0
set peek_data_strobe_axi4_lite 0
set poke_data_strobe_axi4_lite 0

proc vio_set_radix {} {
    set_property OUTPUT_VALUE_RADIX HEX [get_hw_probes */u_jtag_axi_debugger_stream_data_if/GPIO_OUT_B]
    set_property OUTPUT_VALUE_RADIX HEX [get_hw_probes */u_jtag_axi_debugger_stream_data_if/GPIO_OUT_A]
    set_property INPUT_VALUE_RADIX UNSIGNED [get_hw_probes */u_jtag_axi_debugger_stream_data_if/GPIO_IN_A]
    set_property INPUT_VALUE_RADIX UNSIGNED [get_hw_probes */u_jtag_axi_debugger_stream_data_if/GPIO_IN_B]
    set_property OUTPUT_VALUE_RADIX HEX [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_s2mm_start_address]
    set_property OUTPUT_VALUE_RADIX HEX [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_VIO_s2mm_FIFO_DATA_in]
    set_property OUTPUT_VALUE_RADIX UNSIGNED [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_s2mm_number_of_bytes_to_xfer]
    set_property OUTPUT_VALUE_RADIX UNSIGNED [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_mm2s_number_of_bytes_to_xfer]
    set_property OUTPUT_VALUE_RADIX HEX [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_mm2s_start_address]
    set_property INPUT_VALUE_RADIX UNSIGNED [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_mm2s_FIFO_TO_JTAG_DATA_VIO]
    set_property OUTPUT_VALUE_RADIX UNSIGNED [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_VIO_s2mm_FIFO_TKEEP_in]
    set_property OUTPUT_VALUE_RADIX HEX [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_lite_s2mm_start_address]
    set_property OUTPUT_VALUE_RADIX HEX [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_lite_VIO_s2mm_FIFO_DATA_in]
    set_property OUTPUT_VALUE_RADIX UNSIGNED [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_lite_s2mm_number_of_bytes_to_xfer]
    set_property OUTPUT_VALUE_RADIX UNSIGNED [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_lite_mm2s_number_of_bytes_to_xfer]
    set_property OUTPUT_VALUE_RADIX HEX [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_lite_mm2s_start_address]
    set_property INPUT_VALUE_RADIX UNSIGNED [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_lite_mm2s_FIFO_TO_JTAG_DATA_VIO]
    set_property OUTPUT_VALUE_RADIX UNSIGNED [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_lite_VIO_s2mm_FIFO_TKEEP_in]
}

proc vio_init {} {
    vio_set_radix
    set_property OUTPUT_VALUE 15 [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_VIO_s2mm_FIFO_TKEEP_in]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_VIO_s2mm_FIFO_TKEEP_in}]
    set_property OUTPUT_VALUE 15 [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_lite_VIO_s2mm_FIFO_TKEEP_in]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_lite_VIO_s2mm_FIFO_TKEEP_in}]
    reset_jtag_dbg

}

proc out_port_A {VAL} {
    set_property OUTPUT_VALUE [format "%0.8x" $VAL] [get_hw_probes */u_jtag_axi_debugger_stream_data_if/GPIO_OUT_A]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/GPIO_OUT_A}]
}
proc out_port_B {VAL} {
    set_property OUTPUT_VALUE [format "%0.8x" $VAL] [get_hw_probes */u_jtag_axi_debugger_stream_data_if/GPIO_OUT_B]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/GPIO_OUT_B}]
}

proc in_port_A {} {
    refresh_hw_vio [get_hw_vios {hw_vio_1}]
    return [get_property INPUT_VALUE [get_hw_probes */u_jtag_axi_debugger_stream_data_if/GPIO_IN_A]]
}
proc in_port_B {} {
    refresh_hw_vio [get_hw_vios {hw_vio_1}]
    return [get_property INPUT_VALUE [get_hw_probes */u_jtag_axi_debugger_stream_data_if/GPIO_IN_B]]
}


proc reset_poke_fifo {} {
    set_property OUTPUT_VALUE 0 [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_VIO_s2mm_FIFO_RESET_N]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_VIO_s2mm_FIFO_RESET_N}]
    set_property OUTPUT_VALUE 1 [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_VIO_s2mm_FIFO_RESET_N]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_VIO_s2mm_FIFO_RESET_N}]

    set_property OUTPUT_VALUE 0 [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_lite_VIO_s2mm_FIFO_RESET_N]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_lite_VIO_s2mm_FIFO_RESET_N}]
    set_property OUTPUT_VALUE 1 [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_lite_VIO_s2mm_FIFO_RESET_N]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_lite_VIO_s2mm_FIFO_RESET_N}]
}
proc reset_peek_fifo {} {
    set_property OUTPUT_VALUE 0 [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_VIO_mm2s_FIFO_RESET_N]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_VIO_mm2s_FIFO_RESET_N}]
    set_property OUTPUT_VALUE 1 [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_VIO_mm2s_FIFO_RESET_N]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_VIO_mm2s_FIFO_RESET_N}]

    set_property OUTPUT_VALUE 0 [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_lite_VIO_mm2s_FIFO_RESET_N]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_lite_VIO_mm2s_FIFO_RESET_N}]
    set_property OUTPUT_VALUE 1 [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_lite_VIO_mm2s_FIFO_RESET_N]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_lite_VIO_mm2s_FIFO_RESET_N}]
}

proc reset_data_mover {} {
    set_property OUTPUT_VALUE 0 [get_hw_probes */u_jtag_axi_debugger_stream_data_if/i_data_mover_aresetn]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/i_data_mover_aresetn}]
    set_property OUTPUT_VALUE 1 [get_hw_probes */u_jtag_axi_debugger_stream_data_if/i_data_mover_aresetn]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/i_data_mover_aresetn}]
}

proc reset_jtag_dbg {} {
    reset_data_mover
    reset_peek_fifo
    reset_poke_fifo
}


proc poke_tkeep_axi4 {BYTE_ENABLE} {
    set_property OUTPUT_VALUE $BYTE_ENABLE [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_VIO_s2mm_FIFO_TKEEP_in]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_VIO_s2mm_FIFO_TKEEP_in}]
}

proc poke_tkeep_axi4_lite {BYTE_ENABLE} {
    set_property OUTPUT_VALUE $BYTE_ENABLE [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_lite_VIO_s2mm_FIFO_TKEEP_in]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_lite_VIO_s2mm_FIFO_TKEEP_in}]
}

proc peek_fifo_adv_axi4 {} {
    global  peek_data_strobe_axi4

    set peek_data_strobe_axi4 [expr !$peek_data_strobe_axi4]

    set_property OUTPUT_VALUE $peek_data_strobe_axi4 [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_mm2s_FIFO_TO_JTAG_READ_VIO]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_mm2s_FIFO_TO_JTAG_READ_VIO}]
}

proc peek_fifo_adv_axi4_lite {} {
    global  peek_data_strobe_axi4_lite

    set peek_data_strobe_axi4_lite [expr !$peek_data_strobe_axi4_lite]

    set_property OUTPUT_VALUE $peek_data_strobe_axi4_lite [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_lite_mm2s_FIFO_TO_JTAG_READ_VIO]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_lite_mm2s_FIFO_TO_JTAG_READ_VIO}]
}


proc peek_addr_axi4 {ADDR SIZE_BYTES} {
    set_property OUTPUT_VALUE $SIZE_BYTES [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_mm2s_number_of_bytes_to_xfer]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_mm2s_number_of_bytes_to_xfer}]
    set_property OUTPUT_VALUE [format "%0.8x" $ADDR] [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_mm2s_start_address]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_mm2s_start_address}]
    set_property OUTPUT_VALUE 1 [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_start_mm2s_xfer]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_start_mm2s_xfer}]
    set_property OUTPUT_VALUE 0 [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_start_mm2s_xfer]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_start_mm2s_xfer}]
}

proc peek_addr_axi4_lite {ADDR SIZE_BYTES} {
    set_property OUTPUT_VALUE $SIZE_BYTES [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_lite_mm2s_number_of_bytes_to_xfer]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_lite_mm2s_number_of_bytes_to_xfer}]
    set_property OUTPUT_VALUE [format "%0.8x" $ADDR] [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_lite_mm2s_start_address]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_lite_mm2s_start_address}]
    set_property OUTPUT_VALUE 1 [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_lite_start_mm2s_xfer]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_lite_start_mm2s_xfer}]
    set_property OUTPUT_VALUE 0 [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_lite_start_mm2s_xfer]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_lite_start_mm2s_xfer}]
}

proc peek_data_axi4 {SIZE} {
    set vio_peek_data_list {}
    refresh_hw_vio [get_hw_vios {hw_vio_1}]
    set vio_peek_val_ready [get_property INPUT_VALUE [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_mm2s_FIFO_TO_JTAG_DATA_valid]]
    for {set i 0 } { $i < $SIZE} { incr i} {
        peek_fifo_adv_axi4
        refresh_hw_vio [get_hw_vios {hw_vio_1}]
        if ($vio_peek_val_ready) {
            refresh_hw_vio [get_hw_vios {hw_vio_1}]
            set vio_peek_data [get_property INPUT_VALUE [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_mm2s_FIFO_TO_JTAG_DATA_VIO]]
            refresh_hw_vio [get_hw_vios {hw_vio_1}]
            set vio_peek_val_ready [get_property INPUT_VALUE [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_mm2s_FIFO_TO_JTAG_DATA_valid]]
            lappend vio_peek_data_list 0x[format "%0.8x" $vio_peek_data]
        } else {
            puts "Error !!"
            return error
        }
    }
    return $vio_peek_data_list
}

proc peek_data_axi4_lite {SIZE} {
    set vio_peek_data_list {}
    refresh_hw_vio [get_hw_vios {hw_vio_1}]
    set vio_peek_val_ready [get_property INPUT_VALUE [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_lite_mm2s_FIFO_TO_JTAG_DATA_valid]]
    for {set i 0 } { $i < $SIZE} { incr i} {
        peek_fifo_adv_axi4_lite
        refresh_hw_vio [get_hw_vios {hw_vio_1}]
        if ($vio_peek_val_ready) {
            refresh_hw_vio [get_hw_vios {hw_vio_1}]
            set vio_peek_data [get_property INPUT_VALUE [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_lite_mm2s_FIFO_TO_JTAG_DATA_VIO]]
            refresh_hw_vio [get_hw_vios {hw_vio_1}]
            set vio_peek_val_ready [get_property INPUT_VALUE [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_lite_mm2s_FIFO_TO_JTAG_DATA_valid]]
            lappend vio_peek_data_list 0x[format "%0.8x" $vio_peek_data]
        } else {
            puts "Error !!"
            return error
        }
    }
    return $vio_peek_data_list
}

proc poke_addr_axi4 {ADDR SIZE_BYTES} {
    set temp [format "%0.8x" $ADDR] 
    set_property OUTPUT_VALUE $SIZE_BYTES [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_s2mm_number_of_bytes_to_xfer]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_s2mm_number_of_bytes_to_xfer}]
    set_property OUTPUT_VALUE [format "%0.8x" $ADDR] [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_s2mm_start_address]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_s2mm_start_address}]
    set_property OUTPUT_VALUE 1 [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_start_s2mm_xfer]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_start_s2mm_xfer}]
    set_property OUTPUT_VALUE 0 [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_start_s2mm_xfer]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_start_s2mm_xfer}]
}

proc poke_addr_axi4_lite {ADDR SIZE_BYTES} {
    set temp [format "%0.8x" $ADDR] 
    set_property OUTPUT_VALUE $SIZE_BYTES [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_lite_s2mm_number_of_bytes_to_xfer]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_lite_s2mm_number_of_bytes_to_xfer}]
    set_property OUTPUT_VALUE [format "%0.8x" $ADDR] [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_lite_s2mm_start_address]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_lite_s2mm_start_address}]
    set_property OUTPUT_VALUE 1 [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_lite_start_s2mm_xfer]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_lite_start_s2mm_xfer}]
    set_property OUTPUT_VALUE 0 [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_lite_start_s2mm_xfer]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_lite_start_s2mm_xfer}]
}

proc poke_data_axi4 {DATA} {
    global poke_data_strobe_axi4
    set poke_data_strobe_axi4 [expr !$poke_data_strobe_axi4]
    set_property OUTPUT_VALUE [format "%0.8x" $DATA] [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_VIO_s2mm_FIFO_DATA_in]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_VIO_s2mm_FIFO_DATA_in}]
    set_property OUTPUT_VALUE $poke_data_strobe_axi4 [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_VIO_s2mm_FIFO_DATA_in_valid]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_VIO_s2mm_FIFO_DATA_in_valid}]
}

proc poke_data_axi4_lite {DATA} {
    global poke_data_strobe_axi4_lite
    set poke_data_strobe_axi4_lite [expr !$poke_data_strobe_axi4_lite]
    set_property OUTPUT_VALUE [format "%0.8x" $DATA] [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_lite_VIO_s2mm_FIFO_DATA_in]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_lite_VIO_s2mm_FIFO_DATA_in}]
    set_property OUTPUT_VALUE $poke_data_strobe_axi4_lite [get_hw_probes */u_jtag_axi_debugger_stream_data_if/axi4_lite_VIO_s2mm_FIFO_DATA_in_valid]
    commit_hw_vio [get_hw_probes {*/u_jtag_axi_debugger_stream_data_if/axi4_lite_VIO_s2mm_FIFO_DATA_in_valid}]
}


proc peek {ADDR SIZE} {
    set SIZE_BYTES [expr int($SIZE*4)]
    peek_addr_axi4 $ADDR $SIZE_BYTES
    return [peek_data_axi4 $SIZE]
}

proc peek_lite {ADDR SIZE} {
    set SIZE_BYTES [expr int($SIZE*4)]
    peek_addr_axi4_lite $ADDR $SIZE_BYTES
    return [peek_data_axi4_lite $SIZE]
}

proc poke {ADDR SIZE DATA_LIST} {
    set SIZE_BYTES [expr int($SIZE*4)]
    poke_addr_axi4 $ADDR $SIZE_BYTES
    for {set i 0 } { $i < $SIZE} { incr i} {
        poke_data_axi4 [lindex $DATA_LIST $i] 
    }
}

proc poke_lite {ADDR SIZE DATA_LIST} {
    set SIZE_BYTES [expr int($SIZE*4)]
    poke_addr_axi4_lite $ADDR $SIZE_BYTES
    for {set i 0 } { $i < $SIZE} { incr i} {
        poke_data_axi4_lite [lindex $DATA_LIST $i] 
    }
}

proc peek_char {ADDR} {
    set BYTE_ADDR [expr $ADDR & 0x00000003]
    set ADDR [expr $ADDR & 0xFFFFFFFC]
    switch $BYTE_ADDR { 
        0 { 
            return 0x[format "%0.2x" [expr [peek $ADDR 1] & 0x000000FF]]
        }
        1 {
            return 0x[format "%0.2x" [expr ([peek $ADDR 1] & 0x0000FF00)>>8]]
        }
        2 { 
            return 0x[format "%0.2x" [expr ([peek $ADDR 1] & 0x00FF0000)>>16]]
        }
        default {
            return 0x[format "%0.2x" [expr ([peek $ADDR 1] & 0xFF000000)>>24]]
        }
    }
}

proc peek_char_lite {ADDR} {
    set BYTE_ADDR [expr $ADDR & 0x00000003]
    set ADDR [expr $ADDR & 0xFFFFFFFC]
    switch $BYTE_ADDR { 
        0 { 
            return 0x[format "%0.2x" [expr [peek_lite $ADDR 1] & 0x000000FF]]
        }
        1 {
            return 0x[format "%0.2x" [expr ([peek_lite $ADDR 1] & 0x0000FF00)>>8]]
        }
        2 { 
            return 0x[format "%0.2x" [expr ([peek_lite $ADDR 1] & 0x00FF0000)>>16]]
        }
        default {
            return 0x[format "%0.2x" [expr ([peek_lite $ADDR 1] & 0xFF000000)>>24]]
        }
    }
}

proc peek_short {ADDR} {
    set SHORT_ADDR [expr $ADDR & 0x00000002]
    set ADDR [expr $ADDR & 0xFFFFFFFC]
    switch $SHORT_ADDR { 
        0 { 
            return 0x[format "%0.2x" [expr [peek $ADDR 1] & 0x0000FFFF]]
        }
        default {
            return 0x[format "%0.2x" [expr ([peek $ADDR 1] & 0xFFFF0000)>>16]]
        }
    }
}

proc peek_short_lite {ADDR} {
    set SHORT_ADDR [expr $ADDR & 0x00000002]
    set ADDR [expr $ADDR & 0xFFFFFFFC]
    switch $SHORT_ADDR { 
        0 { 
            return 0x[format "%0.2x" [expr [peek_lite $ADDR 1] & 0x0000FFFF]]
        }
        default {
            return 0x[format "%0.2x" [expr ([peek_lite $ADDR 1] & 0xFFFF0000)>>16]]
        }
    }
}

proc poke_char {ADDR DATA} {
    set BYTE_ADDR [expr $ADDR & 0x00000003]
    set ADDR  [expr $ADDR & 0xFFFFFFFC]
    switch $BYTE_ADDR { 
        0 { 
            poke_tkeep_axi4 1
        }
        1 {
            poke_tkeep_axi4 2
            set DATA [expr $DATA << 8] 
        }
        2 { 
            poke_tkeep_axi4 4
            set DATA [expr $DATA << 16] 
        }
        default {
            poke_tkeep_axi4 8
            set DATA [expr $DATA << 24] 
        }
    }
    poke $ADDR 1 $DATA
    poke_tkeep_axi4 15
}

proc poke_char_lite {ADDR DATA} {
    set BYTE_ADDR [expr $ADDR & 0x00000003]
    set ADDR  [expr $ADDR & 0xFFFFFFFC]
    switch $BYTE_ADDR { 
        0 { 
            poke_tkeep_axi4_lite 1
        }
        1 {
            poke_tkeep_axi4_lite 2
            set DATA [expr $DATA << 8] 
        }
        2 { 
            poke_tkeep_axi4_lite 4
            set DATA [expr $DATA << 16] 
        }
        default {
            poke_tkeep_axi4_lite 8
            set DATA [expr $DATA << 24] 
        }
    }
    poke_lite $ADDR 1 $DATA
    poke_tkeep_axi4_lite 15
}

proc poke_short {ADDR DATA} {
    set SHORT_ADDR [expr $ADDR & 0x00000002]
    set ADDR  [expr $ADDR & 0xFFFFFFFC]
    switch $SHORT_ADDR { 
        0 { 
            poke_tkeep_axi4 3
        }
        default {
            poke_tkeep_axi4 12
            set DATA [expr $DATA << 16] 
        }
    }
    poke $ADDR 1 $DATA
    poke_tkeep_axi4 15
}

proc poke_short_lite {ADDR DATA} {
    set SHORT_ADDR [expr $ADDR & 0x00000002]
    set ADDR  [expr $ADDR & 0xFFFFFFFC]
    switch $SHORT_ADDR { 
        0 { 
            poke_tkeep_axi4_lite 3
        }
        default {
            poke_tkeep_axi4_lite 12
            set DATA [expr $DATA << 16] 
        }
    }
    poke_lite $ADDR 1 $DATA
    poke_tkeep_axi4_lite 15
}

proc fpeek {ADDR SIZE out_file_name} {
    set fp_w [open $out_file_name w]
    set peek_data_list  [peek $ADDR $SIZE]
    foreach peek_data_val $peek_data_list {
        puts $fp_w $peek_data_val
    }
    close $fp_w
}

proc fpeek_lite {ADDR SIZE out_file_name} {
    set fp_w [open $out_file_name w]
    set peek_data_list  [peek_lite $ADDR $SIZE]
    foreach peek_data_val $peek_data_list {
        puts $fp_w $peek_data_val
    }
    close $fp_w
}

proc fpeek_int {ADDR SIZE out_file_name} {
    set fp_w [open $out_file_name w]
    set peek_data_list  [peek $ADDR $SIZE]
    foreach peek_data_val $peek_data_list {
        puts $fp_w [expr ($peek_data_val)]
    }
    close $fp_w
}

proc fpeek_lite_int {ADDR SIZE out_file_name} {
    set fp_w [open $out_file_name w]
    set peek_data_list  [peek_lite $ADDR $SIZE]
    foreach peek_data_val $peek_data_list {
        puts $fp_w [expr ($peek_data_val)]
    }
    close $fp_w
}

proc fpoke {ADDR in_file_name} {
    set fp_r [open $in_file_name r] 
    set data_list {}
    set count 0
    while  {1} {
        set line [gets $fp_r]
        if {[eof $fp_r]} {
            break
        } else {
            lappend data_list 0x[format "%0.8x" $line]
            incr count
        }
    }
   close $fp_r
   poke $ADDR $count $data_list 
}

proc fpoke_lite {ADDR in_file_name} {
    set fp_r [open $in_file_name r] 
    set data_list {}
    set count 0
    while  {1} {
        set line [gets $fp_r]
        if {[eof $fp_r]} {
            break
        } else {
            lappend data_list 0x[format "%0.8x" $line]
            incr count
        }
    }
   close $fp_r
   poke_lite $ADDR $count $data_list 
}

proc rnd_mem_test {ADDR SIZE ITERATION} {
    for {set j 0 } { $j < $ITERATION} { incr j 1} {
        set ADDR 0x[format "%0.8x" [expr ($ADDR + (int(floor(rand()*(2**16))) << 2))]]
        set DATA {}
        for {set i 0 } { $i < $SIZE} { incr i} {
            lappend DATA 0x[format "%0.8x" [expr int(floor(rand()*(2**32)))]]
        }
        puts "DBG:: mem_test iteration count = $j ADDR = $ADDR"
        puts "DBG:: Writing :: $DATA"
        poke $ADDR $SIZE $DATA 
        set tmp [peek $ADDR $SIZE ]
        puts "DBG:: Read    :: $tmp"
        if {$DATA == $tmp} {
            puts "DBG:: Test iteration $j (Addr = $ADDR)  PASSED"
        } else {
            puts "DBG:: Test iteration $j (Addr = $ADDR)  FAILED !!"
            break;
        }
    }
}

proc mem_test {ADDR SIZE ITERATION} {
    for {set j 0 } { $j < $ITERATION} { incr j 1} {
        puts "DBG:: mem_test iteration count = $j"
        set test_data {}
        for {set i 0 } { $i < $SIZE} { incr i} {
            lappend test_data 0x[format "%0.8x" [expr $i +(65536 *$j)]]
        }
        puts "DBG:: Writing :: $test_data"
        poke $ADDR $SIZE $test_data
        set tmp [peek $ADDR $SIZE]
        puts "DBG:: Read    :: $tmp"
        if {$test_data == $tmp} {
            puts "DBG:: Test iteration $j  PASSED"
        } else {
            puts "DBG:: Test iteration $j  FAILED !!"
        }
    }
}

proc dbg_peek_loop {ADDR SIZE ITN} {
    for {set i 0} { $i < $ITN } {incr i} {
        puts "DBG :: Write_Iteration = $i"
        set tmp [peek $ADDR $SIZE]
        puts $tmp
    }
}

proc dbg_poke_loop {ADDR SIZE ITN} {
    for {set i 0} { $i < $ITN } {incr i} {
        puts "DBG :: Write_Iteration = $i"
        set test_data {}
        for {set j 0 } { $j < $SIZE} { incr j} {
            lappend test_data [format "%0.8x" [expr $j +(65536*$i)]]
        }
        poke $ADDR $SIZE $test_data
    }
}

