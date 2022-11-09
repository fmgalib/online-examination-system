                <?php

                include('soes.php');

				$object = new soes();

				if(!$object->is_login())
				{
				    header("location:".$object->base_url."");
				}

                if(!$object->is_master_user())
                {
                    header("location:".$object->base_url."admin/result.php");
                }

                include('header.php');

                ?>

                    <!-- Page Heading -->
                    <h1 class="h3 mb-4 text-gray-800">Dashboard</h1>

                    <!-- Content Row -->
                    <div class="row row-cols-5">
                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col mb-4">
                            <div class="card border-left-primary shadow bg-gradient-dark text-white h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-uppercase mb-1">
                                                Today Result Publish</div>
                                            <div class="h5 mb-0 font-weight-bold"><?php echo $object->Get_total_result(); ?></div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fa fa-clipboard-list fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col mb-4">
                            <div class="card border-left-primary shadow bg-gradient-dark text-white h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-uppercase mb-1">
                                                Total Exam</div>
                                            <div class="h5 mb-0 font-weight-bold"><?php echo $object->Get_total_exam(); ?></div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fa fa-edit fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col mb-4">
                            <div class="card border-left-primary shadow bg-gradient-dark text-white h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-uppercase mb-1">Total Examinee
                                            </div>
                                            <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    <div class="h5 mb-0 mr-3 font-weight-bold"><?php echo $object->Get_total_student(); ?></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-users fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Pending Requests Card Example -->
                        <div class="col mb-4">
                            <div class="card border-left-primary shadow bg-gradient-dark text-white h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-uppercase mb-1">
                                                Total Course</div>
                                            <div class="h5 mb-0 font-weight-bold"><?php echo $object->Get_total_subject();?></div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-book-open fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>     
                        <div class="col mb-4">
                            <div class="card border-left-primary bg-gradient-dark text-white shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-uppercase mb-1">
                                                Total Classes</div>
                                            <div class="h5 mb-0 font-weight-bold"><?php echo $object->Get_total_classes();?></div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-door-open fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> 
                    </div>

                <?php
                include('footer.php');
                ?>