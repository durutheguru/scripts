
--
-- Table structure for table `business_schemes`
--

CREATE TABLE `business_schemes` (
  `id` bigint(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `created_on` datetime(6) NOT NULL,
  `last_modified_on` datetime(6) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `enable_batch_posting` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Table structure for table `charge_types`
--

CREATE TABLE `charge_types` (
  `id` bigint(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `created_on` datetime(6) NOT NULL,
  `last_modified_on` datetime(6) DEFAULT NULL,
  `cap_amount` bigint(20) DEFAULT NULL,
  `charge_amount` bigint(20) DEFAULT NULL,
  `charge_percentage` decimal(19,2) DEFAULT NULL,
  `charge_scheme` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `transaction_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `charging_profiles`
--

CREATE TABLE `charging_profiles` (
  `id` bigint(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `created_on` datetime(6) NOT NULL,
  `last_modified_on` datetime(6) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `lower_bound` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `upper_bound` bigint(20) DEFAULT NULL,
  `business_scheme_id` bigint(20) DEFAULT NULL,
  `match_condition` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `charging_profile_participants`
--

CREATE TABLE `charging_profile_participants` (
  `id` bigint(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `created_on` datetime(6) NOT NULL,
  `last_modified_on` datetime(6) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `charging_profile_id` bigint(20) DEFAULT NULL,
  `participant_id` bigint(20) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `charge_type_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `escrow_accounts`
--

CREATE TABLE `escrow_accounts` (
  `id` bigint(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `created_on` datetime(6) NOT NULL,
  `last_modified_on` datetime(6) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `account_scheme` varchar(255) DEFAULT NULL,
  `bank_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `escrow_profiles`
--

CREATE TABLE `escrow_profiles` (
  `id` bigint(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `created_on` datetime(6) NOT NULL,
  `last_modified_on` datetime(6) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `posting_mode` varchar(255) DEFAULT NULL,
  `posting_type` varchar(255) DEFAULT NULL,
  `schedule_frequency` varchar(255) DEFAULT NULL,
  `schedule_interval` int(11) DEFAULT NULL,
  `schedule_start_time` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mjs_archived_job_request`
--

CREATE TABLE `mjs_archived_job_request` (
  `id` bigint(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `job_type` varchar(64) NOT NULL,
  `job_url` varchar(255) NOT NULL,
  `attempt_count` bigint(20) NOT NULL,
  `retry_limit` bigint(20) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `job_status` varchar(64) NOT NULL,
  `comment` text,
  `created_on` datetime NOT NULL,
  `last_modified_on` datetime DEFAULT NULL,
  `status` varchar(64) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `expires_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mjs_archived_job_request_attempt`
--

CREATE TABLE `mjs_archived_job_request_attempt` (
  `id` bigint(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `job_request_id` varchar(64) NOT NULL,
  `attempt_result` varchar(64) NOT NULL,
  `comment` text,
  `created_on` datetime NOT NULL,
  `last_modified_on` datetime DEFAULT NULL,
  `status` varchar(64) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `modified_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mjs_being_processed_job_request`
--

CREATE TABLE `mjs_being_processed_job_request` (
  `id` bigint(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `job_type` varchar(64) NOT NULL,
  `job_url` varchar(255) NOT NULL,
  `attempt_count` bigint(20) NOT NULL,
  `retry_limit` bigint(20) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `job_status` varchar(64) NOT NULL,
  `comment` text,
  `created_on` datetime NOT NULL,
  `last_modified_on` datetime DEFAULT NULL,
  `status` varchar(64) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `expires_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mjs_being_processed_job_request_attempt`
--

CREATE TABLE `mjs_being_processed_job_request_attempt` (
  `id` bigint(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `job_request_id` varchar(64) NOT NULL,
  `attempt_result` varchar(64) NOT NULL,
  `comment` text,
  `created_on` datetime NOT NULL,
  `last_modified_on` datetime DEFAULT NULL,
  `status` varchar(64) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `modified_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mjs_new_job_request`
--

CREATE TABLE `mjs_new_job_request` (
  `id` bigint(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `last_modified_on` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `attempt_count` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `expires_on` datetime(6) DEFAULT NULL,
  `job_status` varchar(255) NOT NULL,
  `job_type` varchar(255) NOT NULL,
  `job_url` varchar(255) DEFAULT NULL,
  `reference` varchar(255) NOT NULL,
  `retry_limit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `settlement_batches`
--

CREATE TABLE `settlement_batches` (
  `id` bigint(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `created_on` datetime(6) NOT NULL,
  `last_modified_on` datetime(6) DEFAULT NULL,
  `allow_batch_posting` bit(1) NOT NULL,
  `credits_completed` bit(1) NOT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `debits_completed` bit(1) NOT NULL,
  `originating_transaction_reference` varchar(255) DEFAULT NULL,
  `posting_processor_code` varchar(255) DEFAULT NULL,
  `posting_reference` varchar(255) DEFAULT NULL,
  `transaction_amount` bigint(20) DEFAULT NULL,
  `transit_status` varchar(255) DEFAULT NULL,
  `business_scheme_id` bigint(20) DEFAULT NULL,
  `transit_account_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `settlement_entries`
--

CREATE TABLE `settlement_entries` (
  `id` bigint(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `created_on` datetime(6) NOT NULL,
  `last_modified_on` datetime(6) DEFAULT NULL,
  `attempt_count` bigint(20) DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `participant_account` varchar(255) DEFAULT NULL,
  `participant_account_bank_code` varchar(255) DEFAULT NULL,
  `participant_account_name` varchar(255) DEFAULT NULL,
  `participant_account_number` varchar(255) DEFAULT NULL,
  `participant_account_scheme` varchar(255) DEFAULT NULL,
  `participant_identifier` varchar(255) DEFAULT NULL,
  `posting_reference` varchar(255) DEFAULT NULL,
  `settlement_amount` bigint(20) DEFAULT NULL,
  `settlement_post_status` varchar(255) DEFAULT NULL,
  `transaction_type` varchar(255) DEFAULT NULL,
  `charging_profile_id` bigint(20) DEFAULT NULL,
  `escrow_profile_id` bigint(20) DEFAULT NULL,
  `settlement_batch_id` bigint(20) DEFAULT NULL,
  `settlement_participant_id` bigint(20) DEFAULT NULL,
  `settlement_post_entry_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `settlement_participants`
--

CREATE TABLE `settlement_participants` (
  `id` bigint(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `created_on` datetime(6) NOT NULL,
  `last_modified_on` datetime(6) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `participant_account_bank_code` varchar(255) DEFAULT NULL,
  `participant_account_name` varchar(255) DEFAULT NULL,
  `participant_account_number` varchar(255) DEFAULT NULL,
  `participant_account_scheme` varchar(255) DEFAULT NULL,
  `participant_identifier` varchar(255) DEFAULT NULL,
  `charge_type_id` bigint(20) DEFAULT NULL,
  `escrow_account_id` bigint(20) DEFAULT NULL,
  `escrow_profile_id` bigint(20) DEFAULT NULL,
  `participant_type_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `settlement_participant_types`
--

CREATE TABLE `settlement_participant_types` (
  `id` bigint(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `created_on` datetime(6) NOT NULL,
  `last_modified_on` datetime(6) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `settlement_post_attempts`
--

CREATE TABLE `settlement_post_attempts` (
  `id` bigint(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `created_on` datetime(6) NOT NULL,
  `last_modified_on` datetime(6) DEFAULT NULL,
  `attempt_count` int(11) DEFAULT NULL,
  `processor_code` varchar(255) DEFAULT NULL,
  `processor_reference` varchar(255) DEFAULT NULL,
  `query_credential` varchar(255) DEFAULT NULL,
  `response_code` varchar(255) DEFAULT NULL,
  `response_message` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `transaction_reference` varchar(255) DEFAULT NULL,
  `settlement_post_entry_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `settlement_post_entries`
--

CREATE TABLE `settlement_post_entries` (
  `id` bigint(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `created_on` datetime(6) NOT NULL,
  `last_modified_on` datetime(6) DEFAULT NULL,
  `amount` bigint(20) DEFAULT NULL,
  `attempt_count` bigint(20) DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `participant_account` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `transaction_type` varchar(255) DEFAULT NULL,
  `escrow_account_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `settlement_transactions`
--

CREATE TABLE `settlement_transactions` (
  `transaction_reference` varchar(255) NOT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `timestamp` datetime(6) DEFAULT NULL,
  `transaction_amount` decimal(19,2) DEFAULT NULL,
  `business_scheme_id` bigint(20) NOT NULL,
  `narration` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `settlement_transaction_participants`
--

CREATE TABLE `settlement_transaction_participants` (
  `id` varchar(255) NOT NULL,
  `charge_type_id` varchar(255) DEFAULT NULL,
  `participant_account_bank_code` varchar(255) DEFAULT NULL,
  `participant_account_name` varchar(255) DEFAULT NULL,
  `participant_account_number` varchar(255) DEFAULT NULL,
  `participant_account_scheme` varchar(255) DEFAULT NULL,
  `participant_identifier` varchar(255) DEFAULT NULL,
  `participant_reference` varchar(255) DEFAULT NULL,
  `settlement_type_code` varchar(255) DEFAULT NULL,
  `settlement_transaction_id` varchar(255) NOT NULL,
  `charge_type_code` varchar(255) DEFAULT NULL,
  `charging_profile_participant_code` varchar(255) DEFAULT NULL,
  `settlement_participant_code` varchar(255) DEFAULT NULL,
  `settlement_participant_type_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transit_accounts`
--

CREATE TABLE `transit_accounts` (
  `id` bigint(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `created_on` datetime(6) NOT NULL,
  `last_modified_on` datetime(6) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `account_scheme` varchar(255) DEFAULT NULL,
  `bank_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transit_transactions`
--

CREATE TABLE `transit_transactions` (
  `id` bigint(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `created_on` datetime(6) NOT NULL,
  `last_modified_on` datetime(6) DEFAULT NULL,
  `attempt_count` int(11) DEFAULT NULL,
  `processor_code` varchar(255) DEFAULT NULL,
  `processor_reference` varchar(255) DEFAULT NULL,
  `query_credential` varchar(255) DEFAULT NULL,
  `response_code` varchar(255) DEFAULT NULL,
  `response_message` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `transaction_reference` varchar(255) DEFAULT NULL,
  `settlement_batch_id` bigint(20) DEFAULT NULL,
  `settlement_entry_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `business_schemes`
--
ALTER TABLE `business_schemes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `charge_types`
--
ALTER TABLE `charge_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_charge_types_code` (`code`);

--
-- Indexes for table `charging_profiles`
--
ALTER TABLE `charging_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_charg_prof_bus_sch_id_mapping_bus_sch` (`business_scheme_id`);

--
-- Indexes for table `charging_profile_participants`
--
ALTER TABLE `charging_profile_participants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_qnq34xx4ca5m9gtno4c5eat86` (`code`),
  ADD KEY `FK_charg_prof_part_charg_prof_id_mapping_charg_prof` (`charging_profile_id`),
  ADD KEY `FK_charg_prof_part_part_id_mapping_sett_part` (`participant_id`),
  ADD KEY `FKgmvsj32ssq3sj9i6eij5j31sh` (`charge_type_id`);

--
-- Indexes for table `escrow_accounts`
--
ALTER TABLE `escrow_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `escrow_profiles`
--
ALTER TABLE `escrow_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mjs_new_job_request`
--
ALTER TABLE `mjs_new_job_request`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_mjs_new_job_request_reference` (`reference`);

--
-- Indexes for table `settlement_batches`
--
ALTER TABLE `settlement_batches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_sett_batch_bus_sch_id_mapping_bus_sch` (`business_scheme_id`),
  ADD KEY `FK_sett_batch_trans_acct_id_mapping_tras_acct` (`transit_account_id`);

--
-- Indexes for table `settlement_entries`
--
ALTER TABLE `settlement_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_sett_ent_sett_batch_id_mapping_sett_batches` (`settlement_batch_id`),
  ADD KEY `FK_sett_ent_charg_prof_id_mapping_charg_prof` (`charging_profile_id`),
  ADD KEY `FK_sett_ent_escrow_prof_id_mapping_escrow_prof` (`escrow_profile_id`),
  ADD KEY `FK_sett_ent_sett_post_ent_id_sett_post_ent` (`settlement_post_entry_id`),
  ADD KEY `FK_sett_ent_sett_part_id_mapping_sett_part` (`settlement_participant_id`);

--
-- Indexes for table `settlement_participants`
--
ALTER TABLE `settlement_participants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_settlement_participants_code` (`code`),
  ADD KEY `FK_sett_part_escrow_prof_id_mapping_escrow_prof` (`escrow_profile_id`),
  ADD KEY `FK_sett_part_escrow_acct_id_mapping_escrow_acct` (`escrow_account_id`),
  ADD KEY `FK_sett_part_part_type_id_id_set_part_types` (`participant_type_id`),
  ADD KEY `FK_sett_part_charge_type_id_mapping_charge_types` (`charge_type_id`);

--
-- Indexes for table `settlement_participant_types`
--
ALTER TABLE `settlement_participant_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settlement_post_attempts`
--
ALTER TABLE `settlement_post_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_sett_post_att_sett_post_ent_id_mapping_sett_post_ent` (`settlement_post_entry_id`);

--
-- Indexes for table `settlement_post_entries`
--
ALTER TABLE `settlement_post_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_sett_post_entries_escrow_acct_id_mapping_escrow_acct` (`escrow_account_id`);

--
-- Indexes for table `settlement_transactions`
--
ALTER TABLE `settlement_transactions`
  ADD PRIMARY KEY (`transaction_reference`),
  ADD KEY `FK_sett_tnx_bus_sch_id_mapping_bus_sch` (`business_scheme_id`);

--
-- Indexes for table `settlement_transaction_participants`
--
ALTER TABLE `settlement_transaction_participants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_sett_tnx_part_sett_tnx_id_mapping_sett_tnx` (`settlement_transaction_id`);

--
-- Indexes for table `transit_accounts`
--
ALTER TABLE `transit_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transit_transactions`
--
ALTER TABLE `transit_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_trans_tnx_sett_ent_id_mapping_sett_ent` (`settlement_entry_id`),
  ADD KEY `FK_trans_tnx_sett_batch_id_mapping_sett_batches` (`settlement_batch_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `business_schemes`
--
ALTER TABLE `business_schemes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `charge_types`
--
ALTER TABLE `charge_types`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `charging_profiles`
--
ALTER TABLE `charging_profiles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `charging_profile_participants`
--
ALTER TABLE `charging_profile_participants`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `escrow_accounts`
--
ALTER TABLE `escrow_accounts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `escrow_profiles`
--
ALTER TABLE `escrow_profiles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mjs_new_job_request`
--
ALTER TABLE `mjs_new_job_request`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settlement_batches`
--
ALTER TABLE `settlement_batches`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settlement_entries`
--
ALTER TABLE `settlement_entries`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `settlement_participants`
--
ALTER TABLE `settlement_participants`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `settlement_participant_types`
--
ALTER TABLE `settlement_participant_types`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settlement_post_attempts`
--
ALTER TABLE `settlement_post_attempts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settlement_post_entries`
--
ALTER TABLE `settlement_post_entries`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transit_accounts`
--
ALTER TABLE `transit_accounts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transit_transactions`
--
ALTER TABLE `transit_transactions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `charging_profiles`
--
ALTER TABLE `charging_profiles`
  ADD CONSTRAINT `FK_charg_prof_bus_sch_id_mapping_bus_sch` FOREIGN KEY (`business_scheme_id`) REFERENCES `business_schemes` (`id`);

--
-- Constraints for table `charging_profile_participants`
--
ALTER TABLE `charging_profile_participants`
  ADD CONSTRAINT `FK_charg_prof_part_charg_prof_id_mapping_charg_prof` FOREIGN KEY (`charging_profile_id`) REFERENCES `charging_profiles` (`id`),
  ADD CONSTRAINT `FK_charg_prof_part_part_id_mapping_sett_part` FOREIGN KEY (`participant_id`) REFERENCES `settlement_participants` (`id`),
  ADD CONSTRAINT `FKgmvsj32ssq3sj9i6eij5j31sh` FOREIGN KEY (`charge_type_id`) REFERENCES `charge_types` (`id`);

--
-- Constraints for table `settlement_batches`
--
ALTER TABLE `settlement_batches`
  ADD CONSTRAINT `FK_sett_batch_bus_sch_id_mapping_bus_sch` FOREIGN KEY (`business_scheme_id`) REFERENCES `business_schemes` (`id`),
  ADD CONSTRAINT `FK_sett_batch_trans_acct_id_mapping_tras_acct` FOREIGN KEY (`transit_account_id`) REFERENCES `transit_accounts` (`id`);

--
-- Constraints for table `settlement_entries`
--
ALTER TABLE `settlement_entries`
  ADD CONSTRAINT `FK_sett_ent_charg_prof_id_mapping_charg_prof` FOREIGN KEY (`charging_profile_id`) REFERENCES `charging_profiles` (`id`),
  ADD CONSTRAINT `FK_sett_ent_escrow_prof_id_mapping_escrow_prof` FOREIGN KEY (`escrow_profile_id`) REFERENCES `escrow_profiles` (`id`),
  ADD CONSTRAINT `FK_sett_ent_sett_batch_id_mapping_sett_batches` FOREIGN KEY (`settlement_batch_id`) REFERENCES `settlement_batches` (`id`),
  ADD CONSTRAINT `FK_sett_ent_sett_part_id_mapping_sett_part` FOREIGN KEY (`settlement_participant_id`) REFERENCES `settlement_participants` (`id`),
  ADD CONSTRAINT `FK_sett_ent_sett_post_ent_id_sett_post_ent` FOREIGN KEY (`settlement_post_entry_id`) REFERENCES `settlement_post_entries` (`id`);

--
-- Constraints for table `settlement_participants`
--
ALTER TABLE `settlement_participants`
  ADD CONSTRAINT `FK_sett_part_charge_type_id_mapping_charge_types` FOREIGN KEY (`charge_type_id`) REFERENCES `charge_types` (`id`),
  ADD CONSTRAINT `FK_sett_part_escrow_acct_id_mapping_escrow_acct` FOREIGN KEY (`escrow_account_id`) REFERENCES `escrow_accounts` (`id`),
  ADD CONSTRAINT `FK_sett_part_escrow_prof_id_mapping_escrow_prof` FOREIGN KEY (`escrow_profile_id`) REFERENCES `escrow_profiles` (`id`),
  ADD CONSTRAINT `FK_sett_part_part_type_id_id_set_part_types` FOREIGN KEY (`participant_type_id`) REFERENCES `settlement_participant_types` (`id`);

--
-- Constraints for table `settlement_post_attempts`
--
ALTER TABLE `settlement_post_attempts`
  ADD CONSTRAINT `FK_sett_post_att_sett_post_ent_id_mapping_sett_post_ent` FOREIGN KEY (`settlement_post_entry_id`) REFERENCES `settlement_post_entries` (`id`);

--
-- Constraints for table `settlement_post_entries`
--
ALTER TABLE `settlement_post_entries`
  ADD CONSTRAINT `FK_sett_post_entries_escrow_acct_id_mapping_escrow_acct` FOREIGN KEY (`escrow_account_id`) REFERENCES `escrow_accounts` (`id`);

--
-- Constraints for table `settlement_transactions`
--
ALTER TABLE `settlement_transactions`
  ADD CONSTRAINT `FK_sett_tnx_bus_sch_id_mapping_bus_sch` FOREIGN KEY (`business_scheme_id`) REFERENCES `business_schemes` (`id`);

--
-- Constraints for table `settlement_transaction_participants`
--
ALTER TABLE `settlement_transaction_participants`
  ADD CONSTRAINT `FK_sett_tnx_part_sett_tnx_id_mapping_sett_tnx` FOREIGN KEY (`settlement_transaction_id`) REFERENCES `settlement_transactions` (`transaction_reference`);

--
-- Constraints for table `transit_transactions`
--
ALTER TABLE `transit_transactions`
  ADD CONSTRAINT `FK_trans_tnx_sett_batch_id_mapping_sett_batches` FOREIGN KEY (`settlement_batch_id`) REFERENCES `settlement_batches` (`id`),
  ADD CONSTRAINT `FK_trans_tnx_sett_ent_id_mapping_sett_ent` FOREIGN KEY (`settlement_entry_id`) REFERENCES `settlement_entries` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

