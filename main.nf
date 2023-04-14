params.genome_build        = ['GRCh37', 'GRCh38']

Channel.value(params.genome_build).set { ch_genome_build }


ch_genome_build
     .flatten()
     //.view()
     .map {[ it, params.reference_resources[it].vep_cache ] }
//   .set { ch_vep_cache }
     .view()


