 <div class="row">
                <div class="col-md-12">
                    <h4 class="page-head-line">Pengumuman</h4>

                </div>

            </div>
            <div class="row">
                <div class="col-md-12">
                        <?php  
                        $npm = $mahasiswa->mhs_npm;                      
                        $query = $this->db->query("SELECT 
                        t_pendaftaran.pendaftaran_id AS pendaftaran_id,
                        t_pendaftaran.mhs_npm AS mhs_npm,
                        t_pendaftaran.ukm_id AS ukm_id,
                        t_pendaftaran.pendaftaran_status AS pendaftaran_status,
                        t_pendaftaran.pendaftaran_tahun AS pendaftaran_tahun,
                        t_mahasiswa.mhs_npm AS mhs_npm,
                        t_mahasiswa.mhs_nama AS mhs_nama,
                        t_ukm.ukm_nama AS ukm_nama,
                        t_ukm.ukm_id AS ukm_id
                        FROM t_pendaftaran
                        LEFT JOIN t_mahasiswa ON t_mahasiswa.mhs_npm = t_pendaftaran.mhs_npm
                        LEFT JOIN t_ukm ON t_ukm.ukm_id = t_pendaftaran.ukm_id WHERE t_pendaftaran.mhs_npm ='$npm' ORDER BY pendaftaran_tahun ");
                                 foreach ($query->result() as $row){ 
                            ?>
                            <?php if($row->pendaftaran_status == '?'){ ?>
                                        <div class="alert alert-warning alert-dismissable">
                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                        Harap Menunggu, karena Pendaftaran UKM <?php echo $row->ukm_nama; ?> a/n: <strong><?php echo $mahasiswa->mhs_nama; ?>!</strong> belum di proses.
                                    </div>
                            <?php }elseif($row->pendaftaran_status == 'DITERIMA') { ?>
                                   <div class="alert alert-success alert-dismissable">
                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                     Pendaftaran UKM <?php echo $row->ukm_nama; ?> a/n: <strong><?php echo $mahasiswa->mhs_nama; ?>!</strong> <strong>DITERIMA</strong>.
                                    </div>
                            <?php }else{ ?>
                                <div class="alert alert-danger alert-dismissable">
                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                        Mohon Maaf, Pendaftaran UKM <?php echo $row->ukm_nama; ?> a/n: <strong><?php echo $mahasiswa->mhs_nama; ?>!</strong> <strong>TIDAK DITERIMA</strong>.
                                    </div>
                            <?php } ?>          
                        <?php } ?>      
                </div>

            </div>
