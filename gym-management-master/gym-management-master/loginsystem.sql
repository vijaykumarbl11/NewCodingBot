

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `doctorapp` (
  `fname` varchar(40) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `contact` varchar(40) NOT NULL,
  `docapp` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `doctorapp` (`fname`, `lname`, `email`, `contact`, `docapp`) VALUES
('Raj', 'kumar', 'kumar@gmail.com', '201', '101'),
('saurabh', 'kumar', 'kumar121@gmail.com', '202', '102'),
('surya', 'raj', 'raj1242gmail.com', '203', '101'),
('Raman', 'kumar', 'raman@gmail.com', '204', '103'),
('Aadarsh', 'thakur', 'thakur@gmail.com', '205', '103'),
('Rahul', 'kumar', 'rahul@gmail.com', '206', '102'),
('Sanjeev', 'Verma', 'verma12@gmail.com', '207', '103');


CREATE TABLE `logintb` (
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `logintb` (`username`, `password`) VALUES
('admin', 'pass');



CREATE TABLE `Package` (
  `Package_id` varchar(40) NOT NULL,
  `Package_name` varchar(40) NOT NULL,
  `Amount` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `Package` (`Package_id`, `Package_name`, `Amount`) VALUES
('121', 'preliminary', 800),
('122', 'Wt. gain', 1500),
('123', 'Wt.loss', 1000);



CREATE TABLE `Payment` (
  `Payment_id` int(10) NOT NULL,
  `Amount` int(20) NOT NULL,
  `customer_id` varchar(20) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `customer_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `Payment` (`Payment_id`, `Amount`, `customer_id`, `payment_type`, `customer_name`) VALUES
(301, 1500, '201', 'cash', 'vijay'),
(302, 800, '202', 'card', 'pratik'),
(303, 1000, '203', 'cheque', 'shreyash'),
(304, 1500, '204', 'cash', 'kumar');

CREATE TABLE `Trainer` (
  `Trainer_id` int(20) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `phone` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `Trainer` (`Trainer_id`, `Name`, `phone`) VALUES
(101, 'Rakesh', 12365489),
(102, 'Ravi', 21365789),
(103, 'wasim', 123564789),
(104, 'Sameer', 12536987);


ALTER TABLE `doctorapp`
  ADD PRIMARY KEY (`contact`);


ALTER TABLE `Package`
  ADD PRIMARY KEY (`Package_id`);


ALTER TABLE `Payment`
  ADD PRIMARY KEY (`Payment_id`);


ALTER TABLE `Trainer`
  ADD PRIMARY KEY (`Trainer_id`);
COMMIT;

