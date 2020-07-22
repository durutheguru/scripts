
create table if not exists communities (id bigint not null auto_increment, created_by varchar(255), creation_date datetime,
last_modified_by varchar(255), last_modified_date datetime, city varchar(255) not null, country varchar(255) not
null, line_one varchar(255) not null, line_two varchar(255) not null, local_government varchar(255) not null, state
varchar(255) not null, latitude decimal(10,7) not null, longitude decimal(10,7) not null, name varchar(255), type_id
bigint not null, primary key (id)) engine=InnoDB;

create table if not exists community_types (id bigint not null auto_increment, created_by varchar(255),
creation_date datetime, last_modified_by varchar(255), last_modified_date datetime, description varchar(255),
name varchar(255), primary key(id)) engine=InnoDB;

create table  if not exists customer_local_languages (customer_id bigint not null, language varchar(255), level varchar(255))
engine=InnoDB;

create table if not exists loan_agents (id bigint not null auto_increment, created_by varchar(255),
creation_date datetime,last_modified_by varchar(255), last_modified_date datetime, collateral_transfer_receipt_ref varchar(255), enabled bit
 not null, agent_id bigint not null, community_id bigint not null, primary key (id)) engine=InnoDB;

create table if not exists loan_business_classification (id bigint not null auto_increment, created_by varchar(255) not null,
creation_date datetime, last_modified_by varchar(255), last_modified_date datetime, name varchar(255), primary key
(id)) engine=InnoDB;

create table if not exists loan_customers (id bigint not null auto_increment, created_by varchar(255), creation_date
datetime,last_modified_by varchar(255), last_modified_date datetime, approval_by varchar(255), approval_status varchar(255),
approved_timestamp datetime, process_id varchar(255), reason VARCHAR(1024), task varchar(255), bvn varchar(255),
client_id varchar(255), common_name varchar(255), date_of_birth date not null, date_of_joining_community
date not null, email varchar(255), first_name varchar(255), gender integer not null, last_name varchar(255),
latitude decimal(10,7), longitude decimal(10,7), middle_name varchar(255), next_of_kin_full_name varchar(255),
next_of_kin_phone_number varchar(255), next_of_kin_relationship varchar(255), next_of_kin_address_city varchar(255) not null,
next_of_kin_address_country varchar(255) not null, next_of_kin_address_line_one varchar(255) not null,
next_of_kin_address_line_two varchar(255) not null, next_of_kin_address_lga varchar(255) not null,
next_of_kin_address_state varchar(255) not null, passport_photo_ref varchar(255), phone_number varchar(255),
city varchar(255) not null, country varchar(255) not null, line_one varchar(255) not null, line_two varchar(255) not null,
local_government varchar(255) not null, state varchar(255) not null, savings_account_id varchar(255), signature_ref varchar(255), title varchar(255),
trading_station_ref varchar(255), use_of_english integer not null, max_worth decimal(19,2), min_worth decimal(19,2), agent_id bigint not null,
business_classification_id bigint not null, community_id bigint not null, primary key (id)) engine=InnoDB;

create table if not exists loan_disbursement (id bigint not null auto_increment, amount decimal(19,2), disbursed_time_stamp
datetime, status varchar(255), transaction_reference varchar(255), loan_id bigint, primary key (id)) engine=InnoDB;

create table  if not exists loan_event_processing_dates (id bigint not null, date date, primary key
    (id)) engine=InnoDB;

create table  if not exists loan_exclude_dates (loan_id bigint not null, exclude_dates date) engine=InnoDB;

create table  if not exists loan_guarantor_user (id bigint not null auto_increment, loan_guarantor_id bigint not
    null, user_id bigint not null, primary key (id)) engine=InnoDB;

create table if not exists loan_guarantors (id bigint not null auto_increment, created_by varchar(255), creation_date
 datetime,last_modified_by varchar(255), last_modified_date datetime, bvn varchar(255), date_of_birth date not null, email
varchar(255), first_name varchar(255), gender varchar(255) not null, last_name varchar(255), middle_name varchar(255)
, next_of_kin_full_name varchar(255), next_of_kin_phone_number varchar(255), next_of_kin_relationship varchar(255),
next_of_kin_address_city varchar(255) not null, next_of_kin_address_country varchar(255) not null,
next_of_kin_address_line_one varchar(255) not null, next_of_kin_address_line_two varchar(255) not null,
next_of_kin_address_lga varchar(255) not null, next_of_kin_address_state varchar(255) not null, passport_photo_ref varchar(255), phone_number varchar(255),
city varchar(255) not null, country varchar(255) not null, line_one varchar(255) not null, line_two varchar(255) not null, local_government varchar(255) not null,
state varchar(255) not null, signature_ref varchar(255), title varchar(255), username varchar(255), community_id bigint not null, primary key (id)) engine=InnoDB;

create table if not exists loan_holidays (id bigint not null auto_increment, created_by varchar(255), creation_date datetime,
last_modified_by varchar(255), last_modified_date datetime, date date not null, name varchar(255), yearly bit not
null, primary key (id)) engine=InnoDB;

create table if not exists loan_late_repayment_charges (id bigint not null auto_increment, amount decimal(19,2) not null,
name varchar(255), primary key (id)) engine=InnoDB;

create table if not exists loan_payment_days (loan_id bigint not null, payment_days varchar(255)) engine=InnoDB;
create table if not exists loan_program_amounts (loan_program_id bigint not null, amount decimal(19,2)) engine=InnoDB;
create table if not exists loan_programs (id bigint not null auto_increment, created_by varchar(255), creation_date datetime,
last_modified_by varchar(255), last_modified_date datetime, bvn_required bit not null, interest decimal(19,2) not
null, loan_period_in_days integer not null, loan_product_id varchar(255), name varchar(255), late_payment_charge_id
bigint, primary key (id)) engine=InnoDB;

create table if not exists loan_repayment_due (id bigint not null auto_increment, agreed_completion_date date,
amount decimal(19,2), completed bit not null, completion_date date, loan_id bigint, primary key (id)) engine=InnoDB;

create table if not exists loan_repayments (id bigint not null auto_increment, amount decimal(19,2), completed bit not null,
completed_time_stamp datetime, due_date date, loan_repayment_type varchar(255), transaction_reference varchar(255),
loan_repayment_due_id bigint, primary key (id)) engine=InnoDB;

create table if not exists loans (id bigint not null auto_increment, created_by varchar(255), creation_date
timestamp, last_modified_by varchar(255),
last_modified_date timestamp default current_timestamp , approval_by varchar(255), approval_status varchar(255), approved_timestamp
timestamp default current_timestamp, process_id varchar(255),reason VARCHAR(1024), task varchar(255), active boolean not null,
amount decimal(19,2) not null, closed boolean not null, completed boolean not null,
account_name varchar(255), account_number varchar(255), bank_code varchar(255), interest decimal(19,2), interest_liability_account_number varchar(255),
end_date date, start_date date, max_outstanding_loan_balance decimal(19,2) not null check (max_outstanding_loan_balance>=1000),
penalty_liability_account_number varchar(255), provider_id varchar(255), trading_station_ref varchar(255), agent_id bigint not null, customer_id bigint not null,
late_payment_charge_id bigint, program_id bigint not null, primary key (id)) engine=InnoDB;

CREATE TABLE if not exists shedlock(name VARCHAR(64) NOT NULL, lock_until TIMESTAMP(3) NOT NULL,
    locked_at TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3), locked_by VARCHAR(255) NOT NULL, PRIMARY KEY (name)
    ) engine=InnoDB;

alter table communities add constraint UK_communities_name unique (name);
alter table community_types add constraint UK_community_types_name unique (name);
alter table loan_agents add constraint UK_loan_agents_collateral_transfer_receipt unique (collateral_transfer_receipt_ref);
alter table loan_agents add constraint UK_loan_agents_agent_id unique (agent_id);
alter table loan_customers add constraint UK_loan_customers_bvn unique (bvn);
alter table loan_guarantor_user add constraint UK_loan_guarantor_user_guarantor_id unique (loan_guarantor_id);
alter table loan_guarantor_user add constraint UK_loan_guarantor_user_user_id unique (user_id);
alter table loan_guarantors add constraint UK_loan_guarantors_email unique (email);
alter table loan_guarantors add constraint UK_loan_guarantors_passport_photo unique (passport_photo_ref);
alter table loan_guarantors add constraint UK_loan_guarantors_signature unique (signature_ref);
alter table loan_guarantors add constraint UK_loan_guarantors_username unique (username);
alter table loan_holidays add constraint UK_loan_holidays_name unique (name);
alter table loan_programs add constraint UK_loan_programs_name unique (name);
alter table communities add constraint FK_communities_community_types_id foreign key (type_id) references community_types (id);
alter table customer_local_languages add constraint FK_customer_local_languages_loan_customers_id foreign key (customer_id) references loan_customers (id);
alter table loan_agents add constraint FK_loan_agents_id foreign key (agent_id) references agents (id);
alter table loan_agents add constraint FK_loan_agents_community_id foreign key (community_id) references communities (id);
alter table loan_customers add constraint FK_loan_customers_agent_id foreign key (agent_id) references loan_agents (id);
alter table loan_customers add constraint FK_loan_customers_business_classification_id foreign key (business_classification_id) references loan_business_classification (id);
alter table loan_customers add constraint FK_loan_customers_community_id foreign key (community_id) references communities (id);
alter table loan_disbursement add constraint FK_loan_disbursement_loan_id foreign key (loan_id) references loans (id);
alter table loan_exclude_dates add constraint FK_loan_exclude_dates_loan_id foreign key (loan_id) references loans (id);
alter table loan_guarantor_user add constraint FK_loan_guarantor_user_guarantor_id foreign key (loan_guarantor_id) references loan_guarantors (id);
alter table loan_guarantor_user add constraint FK_loan_guarantor_user_id foreign key (user_id) references users (id);
alter table loan_guarantors add constraint FK_loan_guarantors_community_id foreign key (community_id) references communities (id);
alter table loan_payment_days add constraint FK_loan_payment_days_loan_id foreign key (loan_id) references loans (id);
alter table loan_program_amounts add constraint FK_loan_program_amounts_program_id foreign key (loan_program_id) references loan_programs (id);
alter table loan_programs add constraint FK_loan_programs_late_payment_charge_id foreign key (late_payment_charge_id) references loan_late_repayment_charges (id);
alter table loan_repayment_due add constraint FK_loan_repayment_due_id foreign key (loan_id) references loans (id);
alter table loan_repayments add constraint FK_loan_repayments_repayment_due_id foreign key (loan_repayment_due_id) references loan_repayment_due (id);
alter table loans add constraint FK_loans_agent_id foreign key (agent_id) references loan_agents (id);
alter table loans add constraint FK_loans_customer_id foreign key (customer_id) references loan_customers (id);
alter table loans add constraint FK_loans_late_payment_charge_id foreign key (late_payment_charge_id) references loan_late_repayment_charges (id);
alter table loans add constraint FK_loans_program_id foreign key (program_id) references loan_programs (id);
alter table bvn_details add constraint UK_bvn_details_bvn unique (bvn);
alter table loan_business_classification add constraint UK_loan_business_classification_name unique (name);
ALTER TABLE loans ADD COLUMN bank_name VARCHAR(100) AFTER bank_code;



