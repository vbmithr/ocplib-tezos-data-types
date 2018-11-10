(************************************************************************)
(*                                TzScan                                *)
(*                                                                      *)
(*  Copyright 2017-2018 OCamlPro                                        *)
(*                                                                      *)
(*  This file is distributed under the terms of the GNU General Public  *)
(*  License as published by the Free Software Foundation; either        *)
(*  version 3 of the License, or (at your option) any later version.    *)
(*                                                                      *)
(*  TzScan is distributed in the hope that it will be useful,           *)
(*  but WITHOUT ANY WARRANTY; without even the implied warranty of      *)
(*  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the       *)
(*  GNU General Public License for more details.                        *)
(*                                                                      *)
(************************************************************************)

exception Decoded_with_success

let destruct encoding v =
try
ignore @@ EzEncoding.destruct encoding v ;
raise Decoded_with_success
with exn -> raise exn

let test_block_encoding () =
  let block = {|
{
  "protocol": "PtCJ7pwoxe8JasnHY8YonnLYjcVHmhiARPJvqcC6VfHT5s8k8sY",
  "chain_id": "NetXdQprcVkpaWU",
  "hash": "BLyAEwaXShJuZasvUezHUfLqzZ48V8XrPvXF2wRaH15tmzEpsHT",
  "header": {
    "level": 24,
    "proto": 1,
    "predecessor": "BMWVEwEYw9m5iaHzqxDfkPzZTV4rhkSouRh3DkVMVGkxZ3EVaNs",
    "timestamp": "2018-06-30T18:05:27Z",
    "validation_pass": 4,
    "operations_hash": "LLoaoxDC5a7JLQCQCpPPre3McvS7xjRcahP6s66vnQ8HZ5HxbDq5M",
    "fitness": [
      "00",
      "00000000000002b4"
    ],
    "context": "CoVXBUkDg14o2c25BSbpPtHu9UnfeAEdHKJSQCxNFHTnMFBa4VLi",
    "priority": 0,
    "proof_of_work_nonce": "8168f60d60545a06",
    "signature": "sigabzMkNYkcim1LemqSmoW6mjgXghHkCkYW4iAcMieUEE2a4CKpRKkeKW1U4ro94x1nzE69HbiQhyRdU2CLYQutqkrjx4Zv"
  },
  "metadata": {
    "protocol": "PtCJ7pwoxe8JasnHY8YonnLYjcVHmhiARPJvqcC6VfHT5s8k8sY",
    "next_protocol": "PtCJ7pwoxe8JasnHY8YonnLYjcVHmhiARPJvqcC6VfHT5s8k8sY",
    "test_chain_status": {
      "status": "not_running"
    },
    "max_operations_ttl": 24,
    "max_operation_data_length": 16384,
    "max_block_header_length": 238,
    "max_operation_list_length": [
      {
        "max_size": 32768,
        "max_op": 32
      },
      {
        "max_size": 32768
      },
      {
        "max_size": 135168,
        "max_op": 132
      },
      {
        "max_size": 524288
      }
    ],
    "baker": "tz3WMqdzXqRWXwyvj5Hp2H7QEepaUuS7vd9K",
    "level": {
      "level": 24,
      "level_position": 23,
      "cycle": 0,
      "cycle_position": 23,
      "voting_period": 0,
      "voting_period_position": 23,
      "expected_commitment": false
    },
    "voting_period_kind": "proposal",
    "nonce_hash": null,
    "consumed_gas": "102056",
    "deactivated": [],
    "balance_updates": []
  },
  "operations": [
    [
      {
        "protocol": "PtCJ7pwoxe8JasnHY8YonnLYjcVHmhiARPJvqcC6VfHT5s8k8sY",
        "chain_id": "NetXdQprcVkpaWU",
        "hash": "oo9q4iLbZL9dfLFpnsLMb62o8H7sSyN7u6zWAqmWZcccCjYLoRJ",
        "branch": "BMWVEwEYw9m5iaHzqxDfkPzZTV4rhkSouRh3DkVMVGkxZ3EVaNs",
        "contents": [
          {
            "kind": "endorsement",
            "level": 23,
            "metadata": {
              "balance_updates": [],
              "delegate": "tz3bvNMQ95vfAYtG8193ymshqjSvmxiCUuR5",
              "slots": [
                30,
                25,
                23,
                10,
                9
              ]
            }
          }
        ],
        "signature": "sigr4zkYjBA8gHkKh1reW7vXxC7eB1BkDsNgCughf2UHuTV12PCtcNk4ABLUPMNgabr8SnQLq1nQh3pAf2pD9ggzkF2nZwnc"
      },
      {
        "protocol": "PtCJ7pwoxe8JasnHY8YonnLYjcVHmhiARPJvqcC6VfHT5s8k8sY",
        "chain_id": "NetXdQprcVkpaWU",
        "hash": "oojAQmYS9zjoBoi9EERzKQPsa3BqiVLD6PU57bcJ5bSNYLzFjyd",
        "branch": "BMWVEwEYw9m5iaHzqxDfkPzZTV4rhkSouRh3DkVMVGkxZ3EVaNs",
        "contents": [
          {
            "kind": "endorsement",
            "level": 23,
            "metadata": {
              "balance_updates": [],
              "delegate": "tz3RDC3Jdn4j15J7bBHZd29EUee9gVB1CxD9",
              "slots": [
                29,
                13,
                11,
                5,
                0
              ]
            }
          }
        ],
        "signature": "sigkEG9ooMsxGpJbxfUJHrtWRbcpPUqS6yexiK8BLt8ANvranXNoEn934bhzoYYYK5qivFurWq2ddf3nKvRHMtUnaeB4SqNy"
      },
      {
        "protocol": "PtCJ7pwoxe8JasnHY8YonnLYjcVHmhiARPJvqcC6VfHT5s8k8sY",
        "chain_id": "NetXdQprcVkpaWU",
        "hash": "opVPJeWLQNq3FUoDv1Ktd3ycB12derCZcFEWWexSACKkjzyZeQe",
        "branch": "BMWVEwEYw9m5iaHzqxDfkPzZTV4rhkSouRh3DkVMVGkxZ3EVaNs",
        "contents": [
          {
            "kind": "endorsement",
            "level": 23,
            "metadata": {
              "balance_updates": [],
              "delegate": "tz3RB4aoyjov4KEVRbuhvQ1CKJgBJMWhaeB8",
              "slots": [
                17,
                15,
                7,
                3
              ]
            }
          }
        ],
        "signature": "sigRUD4VswNSXmZKJ2g5RiFXcRT58XYQtifUTfDcyxpKDyYpgpZKUppCXAcHdCLGy21mQdcqwXjyRaGwMebpxsAQskSo9CwP"
      },
      {
        "protocol": "PtCJ7pwoxe8JasnHY8YonnLYjcVHmhiARPJvqcC6VfHT5s8k8sY",
        "chain_id": "NetXdQprcVkpaWU",
        "hash": "ooD7VqhmEv3jh3kQZGszgXhjuPyJGrKn8BEQxj6SqfTLPVJXSRS",
        "branch": "BMWVEwEYw9m5iaHzqxDfkPzZTV4rhkSouRh3DkVMVGkxZ3EVaNs",
        "contents": [
          {
            "kind": "endorsement",
            "level": 23,
            "metadata": {
              "balance_updates": [],
              "delegate": "tz3WMqdzXqRWXwyvj5Hp2H7QEepaUuS7vd9K",
              "slots": [
                31,
                20,
                19,
                14
              ]
            }
          }
        ],
        "signature": "sigbZCRMggbQ8ncDB4Eafe8V3KqiFMrT73kNYS3gMaWKLkSycg4Lu7Shy5yRQ28SQmjM6ZMnti3MgrXSVSuGtAxWZbaEbVjy"
      },
      {
        "protocol": "PtCJ7pwoxe8JasnHY8YonnLYjcVHmhiARPJvqcC6VfHT5s8k8sY",
        "chain_id": "NetXdQprcVkpaWU",
        "hash": "op9jh5MAfrThnmzTE2ntGkY6iqotmnHFXVzCysFqzLrjexNBP5e",
        "branch": "BMWVEwEYw9m5iaHzqxDfkPzZTV4rhkSouRh3DkVMVGkxZ3EVaNs",
        "contents": [
          {
            "kind": "endorsement",
            "level": 23,
            "metadata": {
              "balance_updates": [],
              "delegate": "tz3bTdwZinP8U1JmSweNzVKhmwafqWmFWRfk",
              "slots": [
                26,
                22,
                18
              ]
            }
          }
        ],
        "signature": "siggbs87nVkGmM6EmJ4tfY4dR9ked6LyLnX4SbmaFjK6wAEVk7FnLSz4uJ36ti4P1fJwvXh9wggSYfnZ7PPSyb4VRbgyq3KF"
      },
      {
        "protocol": "PtCJ7pwoxe8JasnHY8YonnLYjcVHmhiARPJvqcC6VfHT5s8k8sY",
        "chain_id": "NetXdQprcVkpaWU",
        "hash": "oo3PuGks2iLeeEWSto6cTWtSMeKYBn29XLA6Ba6ddmsi1fbeXN8",
        "branch": "BMWVEwEYw9m5iaHzqxDfkPzZTV4rhkSouRh3DkVMVGkxZ3EVaNs",
        "contents": [
          {
            "kind": "endorsement",
            "level": 23,
            "metadata": {
              "balance_updates": [],
              "delegate": "tz3VEZ4k6a4Wx42iyev6i2aVAptTRLEAivNN",
              "slots": [
                21,
                12,
                8,
                4
              ]
            }
          }
        ],
        "signature": "sigXuZ1DZPpRsTWezpmm57BDdzgZT4EsdkhC6cfjRYAjbJKhBdAH7iEqjQ2rNbCtK4QMAGG8gqqWkkJvHTAKdVuqZ6rdUyKS"
      },
      {
        "protocol": "PtCJ7pwoxe8JasnHY8YonnLYjcVHmhiARPJvqcC6VfHT5s8k8sY",
        "chain_id": "NetXdQprcVkpaWU",
        "hash": "opJT7yjLVCsoD5Q46CisurTHEUFmpm4b6TVa53u7WjH2XNaoxNq",
        "branch": "BMWVEwEYw9m5iaHzqxDfkPzZTV4rhkSouRh3DkVMVGkxZ3EVaNs",
        "contents": [
          {
            "kind": "endorsement",
            "level": 23,
            "metadata": {
              "balance_updates": [],
              "delegate": "tz3UoffC7FG7zfpmvmjUmUeAaHvzdcUvAj6r",
              "slots": [
                28,
                27,
                1
              ]
            }
          }
        ],
        "signature": "sigWJYJParRVzDRcnb4LVkgzt7pXss8db6BQUYwRoL2BxACJjZqxBmsdPGLBXPMDbkgGgTniGiTyG9dVE34gc5Cg7X5vJqHY"
      },
      {
        "protocol": "PtCJ7pwoxe8JasnHY8YonnLYjcVHmhiARPJvqcC6VfHT5s8k8sY",
        "chain_id": "NetXdQprcVkpaWU",
        "hash": "oowmhWeiTzHxVJJdHUAgD9RuRegwXUCk2iLbCNrmienoSRWYYfv",
        "branch": "BMWVEwEYw9m5iaHzqxDfkPzZTV4rhkSouRh3DkVMVGkxZ3EVaNs",
        "contents": [
          {
            "kind": "endorsement",
            "level": 23,
            "metadata": {
              "balance_updates": [],
              "delegate": "tz3NExpXn9aPNZPorRE4SdjJ2RGrfbJgMAaV",
              "slots": [
                24,
                16,
                6,
                2
              ]
            }
          }
        ],
        "signature": "siggEfHqqR5C34NF4yC8uhFR7MHSKRQj9hn4tvGPMYEeywNp3ngjmQquNaMsovrH3S5fiAiEKFEioVeoi68pjswAYQTiUDZP"
      }
    ],
    [],
    [],
    [
      {
        "protocol": "PtCJ7pwoxe8JasnHY8YonnLYjcVHmhiARPJvqcC6VfHT5s8k8sY",
        "chain_id": "NetXdQprcVkpaWU",
        "hash": "opK5rnDgd4ipyeS3JnFrENMpeu7xY44AMcke9u9GDku7Udt8sYd",
        "branch": "BMWVEwEYw9m5iaHzqxDfkPzZTV4rhkSouRh3DkVMVGkxZ3EVaNs",
        "contents": [
          {
            "kind": "transaction",
            "source": "tz1NKVAxzJusWgKewn4LEViPSQVRE5Kg6XFV",
            "fee": "0",
            "counter": "3",
            "gas_limit": "102069",
            "storage_limit": "0",
            "amount": "0",
            "destination": "KT1WPEis2WhAc2FciM2tZVn8qe6pCBe9HkDp",
            "parameters": {
              "prim": "Right",
              "args": [
                {
                  "prim": "Some",
                  "args": [
                    {
                      "prim": "Pair",
                      "args": [
                        {
                          "string": "edsigterpkPuRtc2hyS2yvNysmsDb8HBXVJSdiQd7nYwYUZCKHVEBUAwitrk3waQY6LJsyJRNp6NZFi7JmB2T6RAsMbbm717n9D"
                        },
                        {
                          "int": "199041301565"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            "metadata": {
              "balance_updates": [],
              "operation_result": {
                "status": "applied",
                "storage": {
                  "prim": "Pair",
                  "args": [
                    {
                      "prim": "Pair",
                      "args": [
                        {
                          "int": "6501"
                        },
                        {
                          "prim": "Pair",
                          "args": [
                            [
                              {
                                "prim": "Pair",
                                "args": [
                                  [
                                    {
                                      "bytes": "00ebcf82872f4942052704e95dc4bfa0538503dbece27414a39b6650bcecbff896"
                                    },
                                    {
                                      "bytes": "000f8150460b207d5afec26dfb408c3ef65982885fcc9b1163d490d5bcc3349a0b"
                                    },
                                    {
                                      "bytes": "007f1c1e068e8b5f07a1b616839233206925e24ff33cdd38c013be9ea825730f70"
                                    },
                                    {
                                      "bytes": "0060842d4ba23a9940ef5dcf4404fdaa430cfaaccb5029fad06cb5ea894e4562ae"
                                    }
                                  ],
                                  {
                                    "int": "2"
                                  }
                                ]
                              },
                              {
                                "prim": "Pair",
                                "args": [
                                  [
                                    {
                                      "bytes": "0092a40995af2345df1f514839f1a58fdf6674007eb1c845c5df7c7ce5f67ac31a"
                                    },
                                    {
                                      "bytes": "006931f497f22b5a81c00401d0cf84d976f4779c864cf1805201407f97342b0501"
                                    },
                                    {
                                      "bytes": "00f7bda18081d73103c6da76151a15e6ab4b0bca788006481c2062b0df028ed8ac"
                                    },
                                    {
                                      "bytes": "0093864ae21cf745b009dd411fc6ae8e2a3dd71f286cd5b130cf0a0d811e3fcdd6"
                                    }
                                  ],
                                  {
                                    "int": "2"
                                  }
                                ]
                              },
                              {
                                "prim": "Pair",
                                "args": [
                                  [
                                    {
                                      "bytes": "00c683b30a69c31b5bd033c924b7be490583541283ceca8b1cd4a5e4a2d477aa2f"
                                    },
                                    {
                                      "bytes": "000b56ca03acd4e09e924cb7f935dcf4592604f94f8c93acc4071d17943a3683dc"
                                    },
                                    {
                                      "bytes": "007bf4a18d9d121494f4aaf7282daa9cb998417a29b496cb70d35b6193674dcdb7"
                                    },
                                    {
                                      "bytes": "00b0fe3d47c96bc0300b40d23ddb76c6640e7c37f47aae61142a13bb00d05a10f1"
                                    }
                                  ],
                                  {
                                    "int": "2"
                                  }
                                ]
                              },
                              {
                                "prim": "Pair",
                                "args": [
                                  [
                                    {
                                      "bytes": "008a681680aefcc909adc05a06af22a8393ea1474a1e151c864b657e00de6dd401"
                                    },
                                    {
                                      "bytes": "004461f02551f848a65a3be745112f798a739a2c7c1af2268f03becf98fb78bf38"
                                    },
                                    {
                                      "bytes": "00fc7aad537b699d87575bb568d6d249e3c169445cf8a8c4ded2605344ca00c094"
                                    },
                                    {
                                      "bytes": "00fd40bc9214874c7bfcd2b34a805ffa8ec1e60131c8aa4d74b3568604e9dbb297"
                                    }
                                  ],
                                  {
                                    "int": "2"
                                  }
                                ]
                              },
                              {
                                "prim": "Pair",
                                "args": [
                                  [
                                    {
                                      "bytes": "004647ed4695cace8d7dc0a90f6a5d2c23b7a3591dcf2a5b4bbc4d02d8aeb06c8c"
                                    },
                                    {
                                      "bytes": "00e8f8f93c81d6d0591455128852ebcdfc41dac46b674647e12ff0927b74f482b1"
                                    },
                                    {
                                      "bytes": "008d96890f0a6fa8901b05586bd1aa44eaa007d768d8f5a1a23c11cd4841b92050"
                                    },
                                    {
                                      "bytes": "0075538a21cb33978d9096138933a5b4871df4665aa36d3e4d3601b3540435c9f9"
                                    }
                                  ],
                                  {
                                    "int": "2"
                                  }
                                ]
                              },
                              {
                                "prim": "Pair",
                                "args": [
                                  [
                                    {
                                      "bytes": "00c22f61927a2b1fee448dd34ce419d33f4837ac180effbed2d489c5fef93af592"
                                    },
                                    {
                                      "bytes": "00eda823b09d3578a54a15080db403d5a2dfbe3ab92a0b87baceabdfa6c2980600"
                                    },
                                    {
                                      "bytes": "0029cca0524661945322a8b4e2b961bfe851282139a3c87781923aa939ab2ef760"
                                    },
                                    {
                                      "bytes": "00ec1313cc2cbbfd103fa95982bf8623e3f1fc77678998095355035226548e284a"
                                    }
                                  ],
                                  {
                                    "int": "2"
                                  }
                                ]
                              },
                              {
                                "prim": "Pair",
                                "args": [
                                  [
                                    {
                                      "bytes": "00fba776a181e19556a670138946baf48fdd90723dfb99c2d1e4c0b59aea0d15e9"
                                    },
                                    {
                                      "bytes": "001dccc806148b9ffb23d33954d8bca10b9e428f91cd9a6caaa75d4b3524b94ab8"
                                    },
                                    {
                                      "bytes": "006a81d1b6ad305274116a12826f3a988e0141cfac897715e1c65d4a80eda242bf"
                                    },
                                    {
                                      "bytes": "00015a053b09cfdb5a5af19357639cdc52c811be821d31dbf7d89cf401631ccd89"
                                    }
                                  ],
                                  {
                                    "int": "2"
                                  }
                                ]
                              }
                            ],
                            {
                              "int": "4"
                            }
                          ]
                        }
                      ]
                    },
                    {
                      "prim": "Pair",
                      "args": [
                        {
                          "prim": "Pair",
                          "args": [
                            {
                              "prim": "Pair",
                              "args": [
                                {
                                  "int": "0"
                                },
                                {
                                  "int": "199041301565"
                                }
                              ]
                            },
                            {
                              "prim": "Pair",
                              "args": [
                                {
                                  "int": "1532928600"
                                },
                                {
                                  "int": "2629800"
                                }
                              ]
                            }
                          ]
                        },
                        {
                          "prim": "Some",
                          "args": [
                            {
                              "prim": "Pair",
                              "args": [
                                {
                                  "bytes": "0002a5f973cb05417954f9abd6eacf8ed54505126fe9"
                                },
                                {
                                  "bytes": "00bbc7410d63377139daa983307d11fafedf5202f25f6bd55ed9cfc958d616fc06"
                                }
                              ]
                            }
                          ]
                        }
                      ]
                    }
                  ]
                },
                "consumed_gas": "101862",
                "storage_size": "5152"
              },
              "internal_operation_results": [
                {
                  "kind": "transaction",
                  "source": "KT1WPEis2WhAc2FciM2tZVn8qe6pCBe9HkDp",
                  "nonce": 0,
                  "amount": "199041301565",
                  "destination": "tz3bTdwZinP8U1JmSweNzVKhmwafqWmFWRfk",
                  "parameters": {
                    "prim": "Unit"
                  },
                  "result": {
                    "status": "applied",
                    "balance_updates": [
                      {
                        "kind": "contract",
                        "contract": "KT1WPEis2WhAc2FciM2tZVn8qe6pCBe9HkDp",
                        "change": "-199041301565"
                      },
                      {
                        "kind": "contract",
                        "contract": "tz3bTdwZinP8U1JmSweNzVKhmwafqWmFWRfk",
                        "change": "199041301565"
                      }
                    ],
                    "consumed_gas": "107"
                  }
                }
              ]
            }
          }
        ],
        "signature": "sigXwmcwUudLgLGQtNupi1xHrTBhAq2ZzRCgvqX1PZ4vmXh84hFHWs7GhQLUUTvxizYN1JmPSgKGpeLof5VW2PvwMqF9DBmZ"
      }
    ]
  ]
}
|} in
Alcotest.check_raises
"test decode block_header"
Decoded_with_success
(fun () -> destruct Tezos_encoding.Encoding.Block.encoding block)

let test_set = [
"Test block header decoding" , `Quick, test_block_encoding ;
]

(* Run it *)
let () =
Alcotest.run "My first test" [
(* "test_block_encoding", test_block_encoding ; *)
   "test_data_encoding", test_set ;
   ]
