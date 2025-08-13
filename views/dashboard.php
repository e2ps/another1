<?php include '../nav/admin_nav.php';?>

				<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<h1 class="h2">Dashboard</h1>
					<div class="btn-toolbar mb-2 mb-md-0">
						<div class="btn-group mr-2">
							<button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
							<button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
						</div>
						<button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle">
							<span data-feather="calendar"></span>
							This week
						</button>
					</div>
				</div>
			
				<h2>List of Inquiry</h2>
				<div class="table-responsive">
					<table id="table1" class="table table-striped table-md table-hover table-bordered">
						<thead>
							<tr align="center">
								<th>No.</th>
								<th>Name</th>
								<th>Date</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<?php $n = 0; foreach ($notSeenMsg as $mssg): $n++ ?>
								<tr style="font-weight:<?= $mssg['inq_isSeen'] == 0? 'bold':''?>;" >
									<td align="center"><?= $n ?></td>
									<td><?= $mssg['inq_name'] != null? $mssg['inq_name']:'Anonymous' ?></td>
									<td><?php
										//convert date from database to date and time
										//get the raw date value (yyyy-mm-dd hh:mm:ss)
										$dateTime = $mssg['inq_date'];
										//use explode to get the time and date separated with space ( )
										$newDateTime = explode(' ', $dateTime);
										//the result will be an array, index 0 (yyyy-mm-dd)
										$date = $newDateTime[0];
										//the result will be an array (hh:mm:ss)
										$time = $newDateTime[1];
										$newDate = str_replace('-','/',$date);
										echo date('F d, Y', strtotime($newDate))." ".$time;
									?></td>
									<td align="center">
										<a class="btn btn-info btn-sm" 
										   href="../page/admin.php?function=viewmsg&msg_id=<?= $mssg['inq_id'] ?>"
										   title="VIEW"
										   >
											<span data-feather="eye" title="VIEW"></span>
										</a>
									</td>
								</tr>
							<?php endforeach ?>
							<?php foreach ($seenMsg as $mssg): $n++ ?>
								<tr>
									<td align="center"><?= $n ?></td>
									<td><?= $mssg['inq_name'] != null? $mssg['inq_name']:'Anonymous' ?></td>
									<td><?php
										//convert date from database to date and time
										//get the raw date value (yyyy-mm-dd hh:mm:ss)
										$dateTime = $mssg['inq_date'];
										//use explode to get the time and date separated with space ( )
										$newDateTime = explode(' ', $dateTime);
										//the result will be an array, index 0 (yyyy-mm-dd)
										$date = $newDateTime[0];
										//the result will be an array (hh:mm:ss)
										$time = $newDateTime[1];
										$newDate = str_replace('-','/',$date);
										echo date('F d, Y', strtotime($newDate))." ".$time;
									?></td>
									<td align="center">
										<a class="btn btn-info btn-sm" 
										   href="../page/admin.php?function=viewmsg&msg_id=<?= $mssg['inq_id'] ?>"
										   title="VIEW"
										   >
											<span data-feather="eye" title="VIEW"></span>
										</a>
									</td>
								</tr>
							<?php endforeach ?>
						</tbody>
					</table>
				</div>
<?php include '../nav/admin_footer.php';?>