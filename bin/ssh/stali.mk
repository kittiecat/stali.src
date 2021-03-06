ROOT=../..

include $(ROOT)/config.mk

CPPFLAGS += -DDROPBEAR_CLIENT -D_BSD_SOURCE
CFLAGS += -I. -Ilibtommath -Ilibtomcrypt/src/headers -I$(ROOT)/lib/zlib
LDFLAGS += $(ROOT)/lib/zlib/libz.a -lcrypt

LIBTOMMATH = libtommath.a
LIBTOMMATHOBJ =\
	libtommath/bncore.o\
	libtommath/bn_mp_init.o\
	libtommath/bn_mp_clear.o\
	libtommath/bn_mp_exch.o\
	libtommath/bn_mp_grow.o\
	libtommath/bn_mp_shrink.o\
	libtommath/bn_mp_clamp.o\
	libtommath/bn_mp_zero.o\
	libtommath/bn_mp_set.o\
	libtommath/bn_mp_set_int.o\
	libtommath/bn_mp_init_size.o\
	libtommath/bn_mp_copy.o\
	libtommath/bn_mp_init_copy.o\
	libtommath/bn_mp_abs.o\
	libtommath/bn_mp_neg.o\
	libtommath/bn_mp_cmp_mag.o\
	libtommath/bn_mp_cmp.o\
	libtommath/bn_mp_cmp_d.o\
	libtommath/bn_mp_rshd.o\
	libtommath/bn_mp_lshd.o\
	libtommath/bn_mp_mod_2d.o\
	libtommath/bn_mp_div_2d.o\
	libtommath/bn_mp_mul_2d.o\
	libtommath/bn_mp_div_2.o\
	libtommath/bn_mp_mul_2.o\
	libtommath/bn_s_mp_add.o\
	libtommath/bn_s_mp_sub.o\
	libtommath/bn_fast_s_mp_mul_digs.o\
	libtommath/bn_s_mp_mul_digs.o\
	libtommath/bn_fast_s_mp_mul_high_digs.o\
	libtommath/bn_s_mp_mul_high_digs.o\
	libtommath/bn_fast_s_mp_sqr.o\
	libtommath/bn_s_mp_sqr.o\
	libtommath/bn_mp_add.o\
	libtommath/bn_mp_sub.o\
	libtommath/bn_mp_karatsuba_mul.o\
	libtommath/bn_mp_mul.o\
	libtommath/bn_mp_karatsuba_sqr.o\
	libtommath/bn_mp_sqr.o\
	libtommath/bn_mp_div.o\
	libtommath/bn_mp_mod.o\
	libtommath/bn_mp_add_d.o\
	libtommath/bn_mp_sub_d.o\
	libtommath/bn_mp_mul_d.o\
	libtommath/bn_mp_div_d.o\
	libtommath/bn_mp_mod_d.o\
	libtommath/bn_mp_expt_d.o\
	libtommath/bn_mp_addmod.o\
	libtommath/bn_mp_submod.o\
	libtommath/bn_mp_mulmod.o\
	libtommath/bn_mp_sqrmod.o\
	libtommath/bn_mp_gcd.o\
	libtommath/bn_mp_lcm.o\
	libtommath/bn_fast_mp_invmod.o\
	libtommath/bn_mp_invmod.o\
	libtommath/bn_mp_reduce.o\
	libtommath/bn_mp_montgomery_setup.o\
	libtommath/bn_fast_mp_montgomery_reduce.o\
	libtommath/bn_mp_montgomery_reduce.o\
	libtommath/bn_mp_exptmod_fast.o\
	libtommath/bn_mp_exptmod.o\
	libtommath/bn_mp_2expt.o\
	libtommath/bn_mp_n_root.o\
	libtommath/bn_mp_jacobi.o\
	libtommath/bn_reverse.o\
	libtommath/bn_mp_count_bits.o\
	libtommath/bn_mp_read_unsigned_bin.o\
	libtommath/bn_mp_read_signed_bin.o\
	libtommath/bn_mp_to_unsigned_bin.o\
	libtommath/bn_mp_to_signed_bin.o\
	libtommath/bn_mp_unsigned_bin_size.o\
	libtommath/bn_mp_signed_bin_size.o\
	libtommath/bn_mp_xor.o\
	libtommath/bn_mp_and.o\
	libtommath/bn_mp_or.o\
	libtommath/bn_mp_rand.o\
	libtommath/bn_mp_montgomery_calc_normalization.o\
	libtommath/bn_mp_prime_is_divisible.o\
	libtommath/bn_prime_tab.o\
	libtommath/bn_mp_prime_fermat.o\
	libtommath/bn_mp_prime_miller_rabin.o\
	libtommath/bn_mp_prime_is_prime.o\
	libtommath/bn_mp_prime_next_prime.o\
	libtommath/bn_mp_dr_reduce.o\
	libtommath/bn_mp_dr_is_modulus.o\
	libtommath/bn_mp_dr_setup.o\
	libtommath/bn_mp_reduce_setup.o\
	libtommath/bn_mp_toom_mul.o\
	libtommath/bn_mp_toom_sqr.o\
	libtommath/bn_mp_div_3.o\
	libtommath/bn_s_mp_exptmod.o\
	libtommath/bn_mp_reduce_2k.o\
	libtommath/bn_mp_reduce_is_2k.o\
	libtommath/bn_mp_reduce_2k_setup.o\
	libtommath/bn_mp_reduce_2k_l.o\
	libtommath/bn_mp_reduce_is_2k_l.o\
	libtommath/bn_mp_reduce_2k_setup_l.o\
	libtommath/bn_mp_radix_smap.o\
	libtommath/bn_mp_read_radix.o\
	libtommath/bn_mp_toradix.o\
	libtommath/bn_mp_radix_size.o\
	libtommath/bn_mp_fread.o\
	libtommath/bn_mp_fwrite.o\
	libtommath/bn_mp_cnt_lsb.o\
	libtommath/bn_error.o\
	libtommath/bn_mp_init_multi.o\
	libtommath/bn_mp_clear_multi.o\
	libtommath/bn_mp_exteuclid.o\
	libtommath/bn_mp_toradix_n.o\
	libtommath/bn_mp_prime_random_ex.o\
	libtommath/bn_mp_get_int.o\
	libtommath/bn_mp_sqrt.o\
	libtommath/bn_mp_is_square.o\
	libtommath/bn_mp_init_set.o\
	libtommath/bn_mp_init_set_int.o\
	libtommath/bn_mp_invmod_slow.o\
	libtommath/bn_mp_prime_rabin_miller_trials.o\
	libtommath/bn_mp_to_signed_bin_n.o\
	libtommath/bn_mp_to_unsigned_bin_n.o

LIBTOMCRYPT = libtomcrypt.a
LIBTOMCRYPTOBJ =\
	libtomcrypt/src/ciphers/aes/aes_enc.o\
	libtomcrypt/src/ciphers/aes/aes.o\
	libtomcrypt/src/ciphers/anubis.o\
	libtomcrypt/src/ciphers/blowfish.o\
	libtomcrypt/src/ciphers/cast5.o\
	libtomcrypt/src/ciphers/des.o\
	libtomcrypt/src/ciphers/kasumi.o\
	libtomcrypt/src/ciphers/khazad.o\
	libtomcrypt/src/ciphers/kseed.o\
	libtomcrypt/src/ciphers/noekeon.o\
	libtomcrypt/src/ciphers/rc2.o\
	libtomcrypt/src/ciphers/rc5.o\
	libtomcrypt/src/ciphers/rc6.o\
	libtomcrypt/src/ciphers/safer/safer.o\
	libtomcrypt/src/ciphers/safer/safer_tab.o\
	libtomcrypt/src/ciphers/safer/saferp.o\
	libtomcrypt/src/ciphers/skipjack.o\
	libtomcrypt/src/ciphers/twofish/twofish.o\
	libtomcrypt/src/ciphers/xtea.o\
	libtomcrypt/src/encauth/ccm/ccm_memory.o\
	libtomcrypt/src/encauth/ccm/ccm_test.o\
	libtomcrypt/src/encauth/eax/eax_addheader.o\
	libtomcrypt/src/encauth/eax/eax_decrypt.o\
	libtomcrypt/src/encauth/eax/eax_decrypt_verify_memory.o\
	libtomcrypt/src/encauth/eax/eax_done.o\
	libtomcrypt/src/encauth/eax/eax_encrypt.o\
	libtomcrypt/src/encauth/eax/eax_encrypt_authenticate_memory.o\
	libtomcrypt/src/encauth/eax/eax_init.o\
	libtomcrypt/src/encauth/eax/eax_test.o\
	libtomcrypt/src/encauth/gcm/gcm_add_aad.o\
	libtomcrypt/src/encauth/gcm/gcm_add_iv.o\
	libtomcrypt/src/encauth/gcm/gcm_done.o\
	libtomcrypt/src/encauth/gcm/gcm_gf_mult.o\
	libtomcrypt/src/encauth/gcm/gcm_init.o\
	libtomcrypt/src/encauth/gcm/gcm_memory.o\
	libtomcrypt/src/encauth/gcm/gcm_mult_h.o\
	libtomcrypt/src/encauth/gcm/gcm_process.o\
	libtomcrypt/src/encauth/gcm/gcm_reset.o\
	libtomcrypt/src/encauth/gcm/gcm_test.o\
	libtomcrypt/src/encauth/ocb/ocb_decrypt.o\
	libtomcrypt/src/encauth/ocb/ocb_decrypt_verify_memory.o\
	libtomcrypt/src/encauth/ocb/ocb_done_decrypt.o\
	libtomcrypt/src/encauth/ocb/ocb_done_encrypt.o\
	libtomcrypt/src/encauth/ocb/ocb_encrypt.o\
	libtomcrypt/src/encauth/ocb/ocb_encrypt_authenticate_memory.o\
	libtomcrypt/src/encauth/ocb/ocb_init.o\
	libtomcrypt/src/encauth/ocb/ocb_ntz.o\
	libtomcrypt/src/encauth/ocb/ocb_shift_xor.o\
	libtomcrypt/src/encauth/ocb/ocb_test.o\
	libtomcrypt/src/encauth/ocb/s_ocb_done.o\
	libtomcrypt/src/hashes/chc/chc.o\
	libtomcrypt/src/hashes/helper/hash_file.o\
	libtomcrypt/src/hashes/helper/hash_filehandle.o\
	libtomcrypt/src/hashes/helper/hash_memory.o\
	libtomcrypt/src/hashes/helper/hash_memory_multi.o\
	libtomcrypt/src/hashes/md2.o\
	libtomcrypt/src/hashes/md4.o\
	libtomcrypt/src/hashes/md5.o\
	libtomcrypt/src/hashes/rmd128.o\
	libtomcrypt/src/hashes/rmd160.o\
	libtomcrypt/src/hashes/rmd256.o\
	libtomcrypt/src/hashes/rmd320.o\
	libtomcrypt/src/hashes/sha1.o\
	libtomcrypt/src/hashes/sha2/sha256.o\
	libtomcrypt/src/hashes/sha2/sha512.o\
	libtomcrypt/src/hashes/tiger.o\
	libtomcrypt/src/hashes/whirl/whirl.o\
	libtomcrypt/src/mac/f9/f9_done.o\
	libtomcrypt/src/mac/f9/f9_file.o\
	libtomcrypt/src/mac/f9/f9_init.o\
	libtomcrypt/src/mac/f9/f9_memory.o\
	libtomcrypt/src/mac/f9/f9_memory_multi.o\
	libtomcrypt/src/mac/f9/f9_process.o\
	libtomcrypt/src/mac/f9/f9_test.o\
	libtomcrypt/src/mac/hmac/hmac_done.o\
	libtomcrypt/src/mac/hmac/hmac_file.o\
	libtomcrypt/src/mac/hmac/hmac_init.o\
	libtomcrypt/src/mac/hmac/hmac_memory.o\
	libtomcrypt/src/mac/hmac/hmac_memory_multi.o\
	libtomcrypt/src/mac/hmac/hmac_process.o\
	libtomcrypt/src/mac/hmac/hmac_test.o\
	libtomcrypt/src/mac/omac/omac_done.o\
	libtomcrypt/src/mac/omac/omac_file.o\
	libtomcrypt/src/mac/omac/omac_init.o\
	libtomcrypt/src/mac/omac/omac_memory.o\
	libtomcrypt/src/mac/omac/omac_memory_multi.o\
	libtomcrypt/src/mac/omac/omac_process.o\
	libtomcrypt/src/mac/omac/omac_test.o\
	libtomcrypt/src/mac/pelican/pelican.o\
	libtomcrypt/src/mac/pelican/pelican_memory.o\
	libtomcrypt/src/mac/pelican/pelican_test.o\
	libtomcrypt/src/mac/pmac/pmac_done.o\
	libtomcrypt/src/mac/pmac/pmac_file.o\
	libtomcrypt/src/mac/pmac/pmac_init.o\
	libtomcrypt/src/mac/pmac/pmac_memory.o\
	libtomcrypt/src/mac/pmac/pmac_memory_multi.o\
	libtomcrypt/src/mac/pmac/pmac_ntz.o\
	libtomcrypt/src/mac/pmac/pmac_process.o\
	libtomcrypt/src/mac/pmac/pmac_shift_xor.o\
	libtomcrypt/src/mac/pmac/pmac_test.o\
	libtomcrypt/src/mac/xcbc/xcbc_done.o\
	libtomcrypt/src/mac/xcbc/xcbc_file.o\
	libtomcrypt/src/mac/xcbc/xcbc_init.o\
	libtomcrypt/src/mac/xcbc/xcbc_memory.o\
	libtomcrypt/src/mac/xcbc/xcbc_memory_multi.o\
	libtomcrypt/src/mac/xcbc/xcbc_process.o\
	libtomcrypt/src/mac/xcbc/xcbc_test.o\
	libtomcrypt/src/math/fp/ltc_ecc_fp_mulmod.o\
	libtomcrypt/src/math/gmp_desc.o\
	libtomcrypt/src/math/ltm_desc.o\
	libtomcrypt/src/math/multi.o\
	libtomcrypt/src/math/rand_prime.o\
	libtomcrypt/src/math/tfm_desc.o\
	libtomcrypt/src/misc/base64/base64_decode.o\
	libtomcrypt/src/misc/base64/base64_encode.o\
	libtomcrypt/src/misc/burn_stack.o\
	libtomcrypt/src/misc/crypt/crypt.o\
	libtomcrypt/src/misc/crypt/crypt_argchk.o\
	libtomcrypt/src/misc/crypt/crypt_cipher_descriptor.o\
	libtomcrypt/src/misc/crypt/crypt_cipher_is_valid.o\
	libtomcrypt/src/misc/crypt/crypt_find_cipher.o\
	libtomcrypt/src/misc/crypt/crypt_find_cipher_any.o\
	libtomcrypt/src/misc/crypt/crypt_find_cipher_id.o\
	libtomcrypt/src/misc/crypt/crypt_find_hash.o\
	libtomcrypt/src/misc/crypt/crypt_find_hash_any.o\
	libtomcrypt/src/misc/crypt/crypt_find_hash_id.o\
	libtomcrypt/src/misc/crypt/crypt_find_hash_oid.o\
	libtomcrypt/src/misc/crypt/crypt_find_prng.o\
	libtomcrypt/src/misc/crypt/crypt_fsa.o\
	libtomcrypt/src/misc/crypt/crypt_hash_descriptor.o\
	libtomcrypt/src/misc/crypt/crypt_hash_is_valid.o\
	libtomcrypt/src/misc/crypt/crypt_ltc_mp_descriptor.o\
	libtomcrypt/src/misc/crypt/crypt_prng_descriptor.o\
	libtomcrypt/src/misc/crypt/crypt_prng_is_valid.o\
	libtomcrypt/src/misc/crypt/crypt_register_cipher.o\
	libtomcrypt/src/misc/crypt/crypt_register_hash.o\
	libtomcrypt/src/misc/crypt/crypt_register_prng.o\
	libtomcrypt/src/misc/crypt/crypt_unregister_cipher.o\
	libtomcrypt/src/misc/crypt/crypt_unregister_hash.o\
	libtomcrypt/src/misc/crypt/crypt_unregister_prng.o\
	libtomcrypt/src/misc/error_to_string.o\
	libtomcrypt/src/misc/pkcs5/pkcs_5_1.o\
	libtomcrypt/src/misc/pkcs5/pkcs_5_2.o\
	libtomcrypt/src/misc/zeromem.o\
	libtomcrypt/src/modes/cbc/cbc_decrypt.o\
	libtomcrypt/src/modes/cbc/cbc_done.o\
	libtomcrypt/src/modes/cbc/cbc_encrypt.o\
	libtomcrypt/src/modes/cbc/cbc_getiv.o\
	libtomcrypt/src/modes/cbc/cbc_setiv.o\
	libtomcrypt/src/modes/cbc/cbc_start.o\
	libtomcrypt/src/modes/cfb/cfb_decrypt.o\
	libtomcrypt/src/modes/cfb/cfb_done.o\
	libtomcrypt/src/modes/cfb/cfb_encrypt.o\
	libtomcrypt/src/modes/cfb/cfb_getiv.o\
	libtomcrypt/src/modes/cfb/cfb_setiv.o\
	libtomcrypt/src/modes/cfb/cfb_start.o\
	libtomcrypt/src/modes/ctr/ctr_decrypt.o\
	libtomcrypt/src/modes/ctr/ctr_done.o\
	libtomcrypt/src/modes/ctr/ctr_encrypt.o\
	libtomcrypt/src/modes/ctr/ctr_getiv.o\
	libtomcrypt/src/modes/ctr/ctr_setiv.o\
	libtomcrypt/src/modes/ctr/ctr_start.o\
	libtomcrypt/src/modes/ctr/ctr_test.o\
	libtomcrypt/src/modes/ecb/ecb_decrypt.o\
	libtomcrypt/src/modes/ecb/ecb_done.o\
	libtomcrypt/src/modes/ecb/ecb_encrypt.o\
	libtomcrypt/src/modes/ecb/ecb_start.o\
	libtomcrypt/src/modes/f8/f8_decrypt.o\
	libtomcrypt/src/modes/f8/f8_done.o\
	libtomcrypt/src/modes/f8/f8_encrypt.o\
	libtomcrypt/src/modes/f8/f8_getiv.o\
	libtomcrypt/src/modes/f8/f8_setiv.o\
	libtomcrypt/src/modes/f8/f8_start.o\
	libtomcrypt/src/modes/f8/f8_test_mode.o\
	libtomcrypt/src/modes/lrw/lrw_decrypt.o\
	libtomcrypt/src/modes/lrw/lrw_done.o\
	libtomcrypt/src/modes/lrw/lrw_encrypt.o\
	libtomcrypt/src/modes/lrw/lrw_getiv.o\
	libtomcrypt/src/modes/lrw/lrw_process.o\
	libtomcrypt/src/modes/lrw/lrw_setiv.o\
	libtomcrypt/src/modes/lrw/lrw_start.o\
	libtomcrypt/src/modes/lrw/lrw_test.o\
	libtomcrypt/src/modes/ofb/ofb_decrypt.o\
	libtomcrypt/src/modes/ofb/ofb_done.o\
	libtomcrypt/src/modes/ofb/ofb_encrypt.o\
	libtomcrypt/src/modes/ofb/ofb_getiv.o\
	libtomcrypt/src/modes/ofb/ofb_setiv.o\
	libtomcrypt/src/modes/ofb/ofb_start.o\
	libtomcrypt/src/pk/asn1/der/bit/der_decode_bit_string.o\
	libtomcrypt/src/pk/asn1/der/bit/der_encode_bit_string.o\
	libtomcrypt/src/pk/asn1/der/bit/der_length_bit_string.o\
	libtomcrypt/src/pk/asn1/der/boolean/der_decode_boolean.o\
	libtomcrypt/src/pk/asn1/der/boolean/der_encode_boolean.o\
	libtomcrypt/src/pk/asn1/der/boolean/der_length_boolean.o\
	libtomcrypt/src/pk/asn1/der/choice/der_decode_choice.o\
	libtomcrypt/src/pk/asn1/der/ia5/der_decode_ia5_string.o\
	libtomcrypt/src/pk/asn1/der/ia5/der_encode_ia5_string.o\
	libtomcrypt/src/pk/asn1/der/ia5/der_length_ia5_string.o\
	libtomcrypt/src/pk/asn1/der/integer/der_decode_integer.o\
	libtomcrypt/src/pk/asn1/der/integer/der_encode_integer.o\
	libtomcrypt/src/pk/asn1/der/integer/der_length_integer.o\
	libtomcrypt/src/pk/asn1/der/object_identifier/der_decode_object_identifier.o\
	libtomcrypt/src/pk/asn1/der/object_identifier/der_encode_object_identifier.o\
	libtomcrypt/src/pk/asn1/der/object_identifier/der_length_object_identifier.o\
	libtomcrypt/src/pk/asn1/der/octet/der_decode_octet_string.o\
	libtomcrypt/src/pk/asn1/der/octet/der_encode_octet_string.o\
	libtomcrypt/src/pk/asn1/der/octet/der_length_octet_string.o\
	libtomcrypt/src/pk/asn1/der/printable_string/der_decode_printable_string.o\
	libtomcrypt/src/pk/asn1/der/printable_string/der_encode_printable_string.o\
	libtomcrypt/src/pk/asn1/der/printable_string/der_length_printable_string.o\
	libtomcrypt/src/pk/asn1/der/sequence/der_decode_sequence_ex.o\
	libtomcrypt/src/pk/asn1/der/sequence/der_decode_sequence_flexi.o\
	libtomcrypt/src/pk/asn1/der/sequence/der_decode_sequence_multi.o\
	libtomcrypt/src/pk/asn1/der/sequence/der_encode_sequence_ex.o\
	libtomcrypt/src/pk/asn1/der/sequence/der_encode_sequence_multi.o\
	libtomcrypt/src/pk/asn1/der/sequence/der_length_sequence.o\
	libtomcrypt/src/pk/asn1/der/sequence/der_sequence_free.o\
	libtomcrypt/src/pk/asn1/der/set/der_encode_set.o\
	libtomcrypt/src/pk/asn1/der/set/der_encode_setof.o\
	libtomcrypt/src/pk/asn1/der/short_integer/der_decode_short_integer.o\
	libtomcrypt/src/pk/asn1/der/short_integer/der_encode_short_integer.o\
	libtomcrypt/src/pk/asn1/der/short_integer/der_length_short_integer.o\
	libtomcrypt/src/pk/asn1/der/utctime/der_decode_utctime.o\
	libtomcrypt/src/pk/asn1/der/utctime/der_encode_utctime.o\
	libtomcrypt/src/pk/asn1/der/utctime/der_length_utctime.o\
	libtomcrypt/src/pk/asn1/der/utf8/der_decode_utf8_string.o\
	libtomcrypt/src/pk/asn1/der/utf8/der_encode_utf8_string.o\
	libtomcrypt/src/pk/asn1/der/utf8/der_length_utf8_string.o\
	libtomcrypt/src/pk/dsa/dsa_decrypt_key.o\
	libtomcrypt/src/pk/dsa/dsa_encrypt_key.o\
	libtomcrypt/src/pk/dsa/dsa_export.o\
	libtomcrypt/src/pk/dsa/dsa_free.o\
	libtomcrypt/src/pk/dsa/dsa_import.o\
	libtomcrypt/src/pk/dsa/dsa_make_key.o\
	libtomcrypt/src/pk/dsa/dsa_shared_secret.o\
	libtomcrypt/src/pk/dsa/dsa_sign_hash.o\
	libtomcrypt/src/pk/dsa/dsa_verify_hash.o\
	libtomcrypt/src/pk/dsa/dsa_verify_key.o\
	libtomcrypt/src/pk/ecc/ecc.o\
	libtomcrypt/src/pk/ecc/ecc_ansi_x963_export.o\
	libtomcrypt/src/pk/ecc/ecc_ansi_x963_import.o\
	libtomcrypt/src/pk/ecc/ecc_decrypt_key.o\
	libtomcrypt/src/pk/ecc/ecc_encrypt_key.o\
	libtomcrypt/src/pk/ecc/ecc_export.o\
	libtomcrypt/src/pk/ecc/ecc_free.o\
	libtomcrypt/src/pk/ecc/ecc_get_size.o\
	libtomcrypt/src/pk/ecc/ecc_import.o\
	libtomcrypt/src/pk/ecc/ecc_make_key.o\
	libtomcrypt/src/pk/ecc/ecc_shared_secret.o\
	libtomcrypt/src/pk/ecc/ecc_sign_hash.o\
	libtomcrypt/src/pk/ecc/ecc_sizes.o\
	libtomcrypt/src/pk/ecc/ecc_test.o\
	libtomcrypt/src/pk/ecc/ecc_verify_hash.o\
	libtomcrypt/src/pk/ecc/ltc_ecc_is_valid_idx.o\
	libtomcrypt/src/pk/ecc/ltc_ecc_map.o\
	libtomcrypt/src/pk/ecc/ltc_ecc_mul2add.o\
	libtomcrypt/src/pk/ecc/ltc_ecc_mulmod.o\
	libtomcrypt/src/pk/ecc/ltc_ecc_mulmod_timing.o\
	libtomcrypt/src/pk/ecc/ltc_ecc_points.o\
	libtomcrypt/src/pk/ecc/ltc_ecc_projective_add_point.o\
	libtomcrypt/src/pk/ecc/ltc_ecc_projective_dbl_point.o\
	libtomcrypt/src/pk/katja/katja_decrypt_key.o\
	libtomcrypt/src/pk/katja/katja_encrypt_key.o\
	libtomcrypt/src/pk/katja/katja_export.o\
	libtomcrypt/src/pk/katja/katja_exptmod.o\
	libtomcrypt/src/pk/katja/katja_free.o\
	libtomcrypt/src/pk/katja/katja_import.o\
	libtomcrypt/src/pk/katja/katja_make_key.o\
	libtomcrypt/src/pk/pkcs1/pkcs_1_i2osp.o\
	libtomcrypt/src/pk/pkcs1/pkcs_1_mgf1.o\
	libtomcrypt/src/pk/pkcs1/pkcs_1_oaep_decode.o\
	libtomcrypt/src/pk/pkcs1/pkcs_1_oaep_encode.o\
	libtomcrypt/src/pk/pkcs1/pkcs_1_os2ip.o\
	libtomcrypt/src/pk/pkcs1/pkcs_1_pss_decode.o\
	libtomcrypt/src/pk/pkcs1/pkcs_1_pss_encode.o\
	libtomcrypt/src/pk/pkcs1/pkcs_1_v1_5_decode.o\
	libtomcrypt/src/pk/pkcs1/pkcs_1_v1_5_encode.o\
	libtomcrypt/src/pk/rsa/rsa_decrypt_key.o\
	libtomcrypt/src/pk/rsa/rsa_encrypt_key.o\
	libtomcrypt/src/pk/rsa/rsa_export.o\
	libtomcrypt/src/pk/rsa/rsa_exptmod.o\
	libtomcrypt/src/pk/rsa/rsa_free.o\
	libtomcrypt/src/pk/rsa/rsa_import.o\
	libtomcrypt/src/pk/rsa/rsa_make_key.o\
	libtomcrypt/src/pk/rsa/rsa_sign_hash.o\
	libtomcrypt/src/pk/rsa/rsa_verify_hash.o\
	libtomcrypt/src/prngs/fortuna.o\
	libtomcrypt/src/prngs/rc4.o\
	libtomcrypt/src/prngs/rng_get_bytes.o\
	libtomcrypt/src/prngs/rng_make_prng.o\
	libtomcrypt/src/prngs/sober128.o\
	libtomcrypt/src/prngs/sprng.o\
	libtomcrypt/src/prngs/yarrow.o

COMMONOBJS =\
	dbutil.o\
	buffer.o\
	dss.o\
	bignum.o\
	signkey.o\
	rsa.o\
	dbrandom.o\
	queue.o\
	atomicio.o\
	compat.o\
	fake-rfc2553.o\
	ltc_prng.o\
	ecc.o\
	ecdsa.o\
	crypto_desc.o\
	gensignkey.o\
	gendss.o\
	genrsa.o

CLISVROBJS =\
	common-session.o\
	packet.o\
	common-algo.o\
	common-kex.o\
	common-channel.o\
	common-chansession.o\
	termcodes.o\
	loginrec.o\
	tcp-accept.o\
	listener.o\
	process-packet.o\
	common-runopts.o\
	circbuffer.o\
	curve25519-donna.o\
	list.o\
	netio.o

CLIOBJS =\
	cli-main.o\
	cli-auth.o\
	cli-authpasswd.o\
	cli-kex.o\
	cli-session.o\
	cli-runopts.o\
	cli-chansession.o\
	cli-authpubkey.o\
	cli-tcpfwd.o\
	cli-channel.o\
	cli-authinteract.o\
	cli-agentfwd.o 

KEYOBJS =\
	dropbearkey.o

LIB = $(LIBTOMMATH) $(LIBTOMCRYPT)
BIN = ssh-key ssh 
OBJ = $(LIBTOMMATHOBJ) $(LIBTOMCRYPTOBJ) $(COMMONOBJS) $(KEYOBJS) $(CLIOBJS) $(CLISVROBJS) 
MAN = ssh.1 ssh-key.1

all: $(BIN)

$(BIN): $(LIB)

libtomcrypt/src/ciphers/aes/aes_enc.o: libtomcrypt/src/ciphers/aes/aes.c libtomcrypt/src/ciphers/aes/aes_tab.c
	$(CC) $(CFLAGS) -DENCRYPT_ONLY -c $< -o libtomcrypt/src/ciphers/aes/aes_enc.o

$(LIBTOMMATH): $(LIBTOMMATHOBJ)
	$(AR) rc $@ $?
	$(RANLIB) $@

$(LIBTOMCRYPT): $(LIBTOMCRYPTOBJ)
	$(AR) rc $@ $?
	$(RANLIB) $@

ssh-key: $(COMMONOBJS) $(KEYOBJS) $(LIB)
	@echo LD $@
	@$(LD) $(LDFLAGS) -o $@ $^

ssh: $(COMMONOBJS) $(CLISVROBJS) $(CLIOBJS) $(LIB)
	@echo LD $@
	@$(LD) -o $@ $^ $(LDFLAGS)

.c.o:
	@echo CC $<
	@$(CC) $(CFLAGS) $(CPPFLAGS) -o $@ -c $<

install: all
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f $(BIN) $(DESTDIR)$(PREFIX)/bin
	mkdir -p $(DESTDIR)$(MANPREFIX)/man1
	cp -f $(MAN) $(DESTDIR)$(MANPREFIX)/man1
	cd $(DESTDIR)$(MANPREFIX)/man1 && chmod 644 $(MAN)

uninstall:
	cd $(DESTDIR)$(PREFIX)/bin && rm -f $(BIN)
	cd $(DESTDIR)$(MANPREFIX)/man1 && rm -f $(MAN)

clean:
	rm -f $(BIN) $(OBJ) $(LIB)

.PHONY:
	all install uninstall clean
