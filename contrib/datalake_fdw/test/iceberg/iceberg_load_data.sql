DROP DATABASE IF EXISTS icebergdb CASCADE;
CREATE DATABASE icebergdb location 'hdfs://namenode:8020/icebergdb';
USE icebergdb;

------ iceberg_table1 ------
CREATE TABLE iceberg_table1 (
    id int,
    name string,
    age int,
    address string
) STORED BY 'org.apache.iceberg.mr.hive.HiveIcebergStorageHandler';

INSERT INTO iceberg_table1 VALUES
(1, 'a', 1, 'a'),
(2, 'b', 2, 'b'),
(3, 'c', 3, 'c'),
(4, 'd', 4, 'd'),
(5, 'e', 5, 'e');

INSERT INTO iceberg_table1 VALUES
(6, 'f', 6, 'f'),
(7, 'g', 7, 'g'),
(8, 'h', 8, 'h'),
(9, 'i', 9, 'i'),
(10, 'j', 10, 'j');

INSERT INTO iceberg_table1 VALUES
(11, 'k', 11, 'k'),
(12, 'l', 12, 'l'),
(13, 'm', 13, 'm'),
(14, 'n', 14, 'n'),
(15, 'o', 15, 'o');

------ iceberg_table2 ------
CREATE TABLE iceberg_table2
(
    a int,
    b decimal(10,5),
    c string,
    d string,
    e string,
    f string
) STORED BY 'org.apache.iceberg.mr.hive.HiveIcebergStorageHandler';

INSERT INTO iceberg_table2 VALUES
(0, 11111.01111, 'date', 'year0', 'month0', 'day0'),
(1, 11111.11111, 'date', 'year0', 'month0', 'day1'),
(2, 11111.21111, 'date', 'year0', 'month0', 'day2'),
(3, 11111.31111, 'date', 'year0', 'month0', 'day3'),
(4, 11111.41111, 'date', 'year0', 'month0', 'day4'),
(5, 11111.51111, 'date', 'year0', 'month0', 'day5'),
(6, 11111.61111, 'date', 'year0', 'month0', 'day6'),
(7, 11111.71111, 'date', 'year0', 'month0', 'day7'),
(8, 11111.81111, 'date', 'year0', 'month0', 'day8'),
(9, 11111.91111, 'date', 'year0', 'month0', 'day9'),
(1, 11111.01111, 'date', 'year0', 'month1', 'day0'),
(2, 11111.11111, 'date', 'year0', 'month1', 'day1'),
(3, 11111.21111, 'date', 'year0', 'month1', 'day2'),
(4, 11111.31111, 'date', 'year0', 'month1', 'day3'),
(5, 11111.41111, 'date', 'year0', 'month1', 'day4'),
(6, 11111.51111, 'date', 'year0', 'month1', 'day5'),
(7, 11111.61111, 'date', 'year0', 'month1', 'day6'),
(8, 11111.71111, 'date', 'year0', 'month1', 'day7'),
(9, 11111.81111, 'date', 'year0', 'month1', 'day8'),
(10, 11111.91111, 'date', 'year0', 'month1', 'day9'),
(2, 11111.01111, 'date', 'year0', 'month2', 'day0'),
(3, 11111.11111, 'date', 'year0', 'month2', 'day1'),
(4, 11111.21111, 'date', 'year0', 'month2', 'day2'),
(5, 11111.31111, 'date', 'year0', 'month2', 'day3'),
(6, 11111.41111, 'date', 'year0', 'month2', 'day4'),
(7, 11111.51111, 'date', 'year0', 'month2', 'day5'),
(8, 11111.61111, 'date', 'year0', 'month2', 'day6'),
(9, 11111.71111, 'date', 'year0', 'month2', 'day7'),
(10, 11111.81111, 'date', 'year0', 'month2', 'day8'),
(11, 11111.91111, 'date', 'year0', 'month2', 'day9'),
(3, 11111.01111, 'date', 'year0', 'month3', 'day0'),
(4, 11111.11111, 'date', 'year0', 'month3', 'day1'),
(5, 11111.21111, 'date', 'year0', 'month3', 'day2'),
(6, 11111.31111, 'date', 'year0', 'month3', 'day3'),
(7, 11111.41111, 'date', 'year0', 'month3', 'day4'),
(8, 11111.51111, 'date', 'year0', 'month3', 'day5'),
(9, 11111.61111, 'date', 'year0', 'month3', 'day6'),
(10, 11111.71111, 'date', 'year0', 'month3', 'day7'),
(11, 11111.81111, 'date', 'year0', 'month3', 'day8'),
(12, 11111.91111, 'date', 'year0', 'month3', 'day9'),
(4, 11111.01111, 'date', 'year0', 'month4', 'day0'),
(5, 11111.11111, 'date', 'year0', 'month4', 'day1'),
(6, 11111.21111, 'date', 'year0', 'month4', 'day2'),
(7, 11111.31111, 'date', 'year0', 'month4', 'day3'),
(8, 11111.41111, 'date', 'year0', 'month4', 'day4'),
(9, 11111.51111, 'date', 'year0', 'month4', 'day5'),
(10, 11111.61111, 'date', 'year0', 'month4', 'day6'),
(11, 11111.71111, 'date', 'year0', 'month4', 'day7'),
(12, 11111.81111, 'date', 'year0', 'month4', 'day8'),
(13, 11111.91111, 'date', 'year0', 'month4', 'day9'),
(5, 11111.01111, 'date', 'year0', 'month5', 'day0'),
(6, 11111.11111, 'date', 'year0', 'month5', 'day1'),
(7, 11111.21111, 'date', 'year0', 'month5', 'day2'),
(8, 11111.31111, 'date', 'year0', 'month5', 'day3'),
(9, 11111.41111, 'date', 'year0', 'month5', 'day4'),
(10, 11111.51111, 'date', 'year0', 'month5', 'day5'),
(11, 11111.61111, 'date', 'year0', 'month5', 'day6'),
(12, 11111.71111, 'date', 'year0', 'month5', 'day7'),
(13, 11111.81111, 'date', 'year0', 'month5', 'day8'),
(14, 11111.91111, 'date', 'year0', 'month5', 'day9'),
(6, 11111.01111, 'date', 'year0', 'month6', 'day0'),
(7, 11111.11111, 'date', 'year0', 'month6', 'day1'),
(8, 11111.21111, 'date', 'year0', 'month6', 'day2'),
(9, 11111.31111, 'date', 'year0', 'month6', 'day3'),
(10, 11111.41111, 'date', 'year0', 'month6', 'day4'),
(11, 11111.51111, 'date', 'year0', 'month6', 'day5'),
(12, 11111.61111, 'date', 'year0', 'month6', 'day6'),
(13, 11111.71111, 'date', 'year0', 'month6', 'day7'),
(14, 11111.81111, 'date', 'year0', 'month6', 'day8'),
(15, 11111.91111, 'date', 'year0', 'month6', 'day9'),
(7, 11111.01111, 'date', 'year0', 'month7', 'day0'),
(8, 11111.11111, 'date', 'year0', 'month7', 'day1'),
(9, 11111.21111, 'date', 'year0', 'month7', 'day2'),
(10, 11111.31111, 'date', 'year0', 'month7', 'day3'),
(11, 11111.41111, 'date', 'year0', 'month7', 'day4'),
(12, 11111.51111, 'date', 'year0', 'month7', 'day5'),
(13, 11111.61111, 'date', 'year0', 'month7', 'day6'),
(14, 11111.71111, 'date', 'year0', 'month7', 'day7'),
(15, 11111.81111, 'date', 'year0', 'month7', 'day8'),
(16, 11111.91111, 'date', 'year0', 'month7', 'day9'),
(8, 11111.01111, 'date', 'year0', 'month8', 'day0'),
(9, 11111.11111, 'date', 'year0', 'month8', 'day1'),
(10, 11111.21111, 'date', 'year0', 'month8', 'day2'),
(11, 11111.31111, 'date', 'year0', 'month8', 'day3'),
(12, 11111.41111, 'date', 'year0', 'month8', 'day4'),
(13, 11111.51111, 'date', 'year0', 'month8', 'day5'),
(14, 11111.61111, 'date', 'year0', 'month8', 'day6'),
(15, 11111.71111, 'date', 'year0', 'month8', 'day7'),
(16, 11111.81111, 'date', 'year0', 'month8', 'day8'),
(17, 11111.91111, 'date', 'year0', 'month8', 'day9'),
(9, 11111.01111, 'date', 'year0', 'month9', 'day0'),
(10, 11111.11111, 'date', 'year0', 'month9', 'day1'),
(11, 11111.21111, 'date', 'year0', 'month9', 'day2'),
(12, 11111.31111, 'date', 'year0', 'month9', 'day3'),
(13, 11111.41111, 'date', 'year0', 'month9', 'day4'),
(14, 11111.51111, 'date', 'year0', 'month9', 'day5'),
(15, 11111.61111, 'date', 'year0', 'month9', 'day6'),
(16, 11111.71111, 'date', 'year0', 'month9', 'day7'),
(17, 11111.81111, 'date', 'year0', 'month9', 'day8'),
(18, 11111.91111, 'date', 'year0', 'month9', 'day9'),
(1, 11111.01111, 'date', 'year1', 'month0', 'day0'),
(2, 11111.11111, 'date', 'year1', 'month0', 'day1'),
(3, 11111.21111, 'date', 'year1', 'month0', 'day2'),
(4, 11111.31111, 'date', 'year1', 'month0', 'day3'),
(5, 11111.41111, 'date', 'year1', 'month0', 'day4'),
(6, 11111.51111, 'date', 'year1', 'month0', 'day5'),
(7, 11111.61111, 'date', 'year1', 'month0', 'day6'),
(8, 11111.71111, 'date', 'year1', 'month0', 'day7'),
(9, 11111.81111, 'date', 'year1', 'month0', 'day8'),
(10, 11111.91111, 'date', 'year1', 'month0', 'day9'),
(2, 11111.01111, 'date', 'year1', 'month1', 'day0'),
(3, 11111.11111, 'date', 'year1', 'month1', 'day1'),
(4, 11111.21111, 'date', 'year1', 'month1', 'day2'),
(5, 11111.31111, 'date', 'year1', 'month1', 'day3'),
(6, 11111.41111, 'date', 'year1', 'month1', 'day4'),
(7, 11111.51111, 'date', 'year1', 'month1', 'day5'),
(8, 11111.61111, 'date', 'year1', 'month1', 'day6'),
(9, 11111.71111, 'date', 'year1', 'month1', 'day7'),
(10, 11111.81111, 'date', 'year1', 'month1', 'day8'),
(11, 11111.91111, 'date', 'year1', 'month1', 'day9'),
(3, 11111.01111, 'date', 'year1', 'month2', 'day0'),
(4, 11111.11111, 'date', 'year1', 'month2', 'day1'),
(5, 11111.21111, 'date', 'year1', 'month2', 'day2'),
(6, 11111.31111, 'date', 'year1', 'month2', 'day3'),
(7, 11111.41111, 'date', 'year1', 'month2', 'day4'),
(8, 11111.51111, 'date', 'year1', 'month2', 'day5'),
(9, 11111.61111, 'date', 'year1', 'month2', 'day6'),
(10, 11111.71111, 'date', 'year1', 'month2', 'day7'),
(11, 11111.81111, 'date', 'year1', 'month2', 'day8'),
(12, 11111.91111, 'date', 'year1', 'month2', 'day9'),
(4, 11111.01111, 'date', 'year1', 'month3', 'day0'),
(5, 11111.11111, 'date', 'year1', 'month3', 'day1'),
(6, 11111.21111, 'date', 'year1', 'month3', 'day2'),
(7, 11111.31111, 'date', 'year1', 'month3', 'day3'),
(8, 11111.41111, 'date', 'year1', 'month3', 'day4'),
(9, 11111.51111, 'date', 'year1', 'month3', 'day5'),
(10, 11111.61111, 'date', 'year1', 'month3', 'day6'),
(11, 11111.71111, 'date', 'year1', 'month3', 'day7'),
(12, 11111.81111, 'date', 'year1', 'month3', 'day8'),
(13, 11111.91111, 'date', 'year1', 'month3', 'day9'),
(5, 11111.01111, 'date', 'year1', 'month4', 'day0'),
(6, 11111.11111, 'date', 'year1', 'month4', 'day1'),
(7, 11111.21111, 'date', 'year1', 'month4', 'day2'),
(8, 11111.31111, 'date', 'year1', 'month4', 'day3'),
(9, 11111.41111, 'date', 'year1', 'month4', 'day4'),
(10, 11111.51111, 'date', 'year1', 'month4', 'day5'),
(11, 11111.61111, 'date', 'year1', 'month4', 'day6'),
(12, 11111.71111, 'date', 'year1', 'month4', 'day7'),
(13, 11111.81111, 'date', 'year1', 'month4', 'day8'),
(14, 11111.91111, 'date', 'year1', 'month4', 'day9'),
(6, 11111.01111, 'date', 'year1', 'month5', 'day0'),
(7, 11111.11111, 'date', 'year1', 'month5', 'day1'),
(8, 11111.21111, 'date', 'year1', 'month5', 'day2'),
(9, 11111.31111, 'date', 'year1', 'month5', 'day3'),
(10, 11111.41111, 'date', 'year1', 'month5', 'day4'),
(11, 11111.51111, 'date', 'year1', 'month5', 'day5'),
(12, 11111.61111, 'date', 'year1', 'month5', 'day6'),
(13, 11111.71111, 'date', 'year1', 'month5', 'day7'),
(14, 11111.81111, 'date', 'year1', 'month5', 'day8'),
(15, 11111.91111, 'date', 'year1', 'month5', 'day9'),
(7, 11111.01111, 'date', 'year1', 'month6', 'day0'),
(8, 11111.11111, 'date', 'year1', 'month6', 'day1'),
(9, 11111.21111, 'date', 'year1', 'month6', 'day2'),
(10, 11111.31111, 'date', 'year1', 'month6', 'day3'),
(11, 11111.41111, 'date', 'year1', 'month6', 'day4'),
(12, 11111.51111, 'date', 'year1', 'month6', 'day5'),
(13, 11111.61111, 'date', 'year1', 'month6', 'day6'),
(14, 11111.71111, 'date', 'year1', 'month6', 'day7'),
(15, 11111.81111, 'date', 'year1', 'month6', 'day8'),
(16, 11111.91111, 'date', 'year1', 'month6', 'day9'),
(8, 11111.01111, 'date', 'year1', 'month7', 'day0'),
(9, 11111.11111, 'date', 'year1', 'month7', 'day1'),
(10, 11111.21111, 'date', 'year1', 'month7', 'day2'),
(11, 11111.31111, 'date', 'year1', 'month7', 'day3'),
(12, 11111.41111, 'date', 'year1', 'month7', 'day4'),
(13, 11111.51111, 'date', 'year1', 'month7', 'day5'),
(14, 11111.61111, 'date', 'year1', 'month7', 'day6'),
(15, 11111.71111, 'date', 'year1', 'month7', 'day7'),
(16, 11111.81111, 'date', 'year1', 'month7', 'day8'),
(17, 11111.91111, 'date', 'year1', 'month7', 'day9'),
(9, 11111.01111, 'date', 'year1', 'month8', 'day0'),
(10, 11111.11111, 'date', 'year1', 'month8', 'day1'),
(11, 11111.21111, 'date', 'year1', 'month8', 'day2'),
(12, 11111.31111, 'date', 'year1', 'month8', 'day3'),
(13, 11111.41111, 'date', 'year1', 'month8', 'day4'),
(14, 11111.51111, 'date', 'year1', 'month8', 'day5'),
(15, 11111.61111, 'date', 'year1', 'month8', 'day6'),
(16, 11111.71111, 'date', 'year1', 'month8', 'day7'),
(17, 11111.81111, 'date', 'year1', 'month8', 'day8'),
(18, 11111.91111, 'date', 'year1', 'month8', 'day9'),
(10, 11111.01111, 'date', 'year1', 'month9', 'day0'),
(11, 11111.11111, 'date', 'year1', 'month9', 'day1'),
(12, 11111.21111, 'date', 'year1', 'month9', 'day2'),
(13, 11111.31111, 'date', 'year1', 'month9', 'day3'),
(14, 11111.41111, 'date', 'year1', 'month9', 'day4'),
(15, 11111.51111, 'date', 'year1', 'month9', 'day5'),
(16, 11111.61111, 'date', 'year1', 'month9', 'day6'),
(17, 11111.71111, 'date', 'year1', 'month9', 'day7'),
(18, 11111.81111, 'date', 'year1', 'month9', 'day8'),
(19, 11111.91111, 'date', 'year1', 'month9', 'day9'),
(2, 11111.01111, 'date', 'year2', 'month0', 'day0'),
(3, 11111.11111, 'date', 'year2', 'month0', 'day1'),
(4, 11111.21111, 'date', 'year2', 'month0', 'day2'),
(5, 11111.31111, 'date', 'year2', 'month0', 'day3'),
(6, 11111.41111, 'date', 'year2', 'month0', 'day4'),
(7, 11111.51111, 'date', 'year2', 'month0', 'day5'),
(8, 11111.61111, 'date', 'year2', 'month0', 'day6'),
(9, 11111.71111, 'date', 'year2', 'month0', 'day7'),
(10, 11111.81111, 'date', 'year2', 'month0', 'day8'),
(11, 11111.91111, 'date', 'year2', 'month0', 'day9'),
(3, 11111.01111, 'date', 'year2', 'month1', 'day0'),
(4, 11111.11111, 'date', 'year2', 'month1', 'day1'),
(5, 11111.21111, 'date', 'year2', 'month1', 'day2'),
(6, 11111.31111, 'date', 'year2', 'month1', 'day3'),
(7, 11111.41111, 'date', 'year2', 'month1', 'day4'),
(8, 11111.51111, 'date', 'year2', 'month1', 'day5'),
(9, 11111.61111, 'date', 'year2', 'month1', 'day6'),
(10, 11111.71111, 'date', 'year2', 'month1', 'day7'),
(11, 11111.81111, 'date', 'year2', 'month1', 'day8'),
(12, 11111.91111, 'date', 'year2', 'month1', 'day9'),
(4, 11111.01111, 'date', 'year2', 'month2', 'day0'),
(5, 11111.11111, 'date', 'year2', 'month2', 'day1'),
(6, 11111.21111, 'date', 'year2', 'month2', 'day2'),
(7, 11111.31111, 'date', 'year2', 'month2', 'day3'),
(8, 11111.41111, 'date', 'year2', 'month2', 'day4'),
(9, 11111.51111, 'date', 'year2', 'month2', 'day5'),
(10, 11111.61111, 'date', 'year2', 'month2', 'day6'),
(11, 11111.71111, 'date', 'year2', 'month2', 'day7'),
(12, 11111.81111, 'date', 'year2', 'month2', 'day8'),
(13, 11111.91111, 'date', 'year2', 'month2', 'day9'),
(5, 11111.01111, 'date', 'year2', 'month3', 'day0'),
(6, 11111.11111, 'date', 'year2', 'month3', 'day1'),
(7, 11111.21111, 'date', 'year2', 'month3', 'day2'),
(8, 11111.31111, 'date', 'year2', 'month3', 'day3'),
(9, 11111.41111, 'date', 'year2', 'month3', 'day4'),
(10, 11111.51111, 'date', 'year2', 'month3', 'day5'),
(11, 11111.61111, 'date', 'year2', 'month3', 'day6'),
(12, 11111.71111, 'date', 'year2', 'month3', 'day7'),
(13, 11111.81111, 'date', 'year2', 'month3', 'day8'),
(14, 11111.91111, 'date', 'year2', 'month3', 'day9'),
(6, 11111.01111, 'date', 'year2', 'month4', 'day0'),
(7, 11111.11111, 'date', 'year2', 'month4', 'day1'),
(8, 11111.21111, 'date', 'year2', 'month4', 'day2'),
(9, 11111.31111, 'date', 'year2', 'month4', 'day3'),
(10, 11111.41111, 'date', 'year2', 'month4', 'day4'),
(11, 11111.51111, 'date', 'year2', 'month4', 'day5'),
(12, 11111.61111, 'date', 'year2', 'month4', 'day6'),
(13, 11111.71111, 'date', 'year2', 'month4', 'day7'),
(14, 11111.81111, 'date', 'year2', 'month4', 'day8'),
(15, 11111.91111, 'date', 'year2', 'month4', 'day9'),
(7, 11111.01111, 'date', 'year2', 'month5', 'day0'),
(8, 11111.11111, 'date', 'year2', 'month5', 'day1'),
(9, 11111.21111, 'date', 'year2', 'month5', 'day2'),
(10, 11111.31111, 'date', 'year2', 'month5', 'day3'),
(11, 11111.41111, 'date', 'year2', 'month5', 'day4'),
(12, 11111.51111, 'date', 'year2', 'month5', 'day5'),
(13, 11111.61111, 'date', 'year2', 'month5', 'day6'),
(14, 11111.71111, 'date', 'year2', 'month5', 'day7'),
(15, 11111.81111, 'date', 'year2', 'month5', 'day8'),
(16, 11111.91111, 'date', 'year2', 'month5', 'day9'),
(8, 11111.01111, 'date', 'year2', 'month6', 'day0'),
(9, 11111.11111, 'date', 'year2', 'month6', 'day1'),
(10, 11111.21111, 'date', 'year2', 'month6', 'day2'),
(11, 11111.31111, 'date', 'year2', 'month6', 'day3'),
(12, 11111.41111, 'date', 'year2', 'month6', 'day4'),
(13, 11111.51111, 'date', 'year2', 'month6', 'day5'),
(14, 11111.61111, 'date', 'year2', 'month6', 'day6'),
(15, 11111.71111, 'date', 'year2', 'month6', 'day7'),
(16, 11111.81111, 'date', 'year2', 'month6', 'day8'),
(17, 11111.91111, 'date', 'year2', 'month6', 'day9'),
(9, 11111.01111, 'date', 'year2', 'month7', 'day0'),
(10, 11111.11111, 'date', 'year2', 'month7', 'day1'),
(11, 11111.21111, 'date', 'year2', 'month7', 'day2'),
(12, 11111.31111, 'date', 'year2', 'month7', 'day3'),
(13, 11111.41111, 'date', 'year2', 'month7', 'day4'),
(14, 11111.51111, 'date', 'year2', 'month7', 'day5'),
(15, 11111.61111, 'date', 'year2', 'month7', 'day6'),
(16, 11111.71111, 'date', 'year2', 'month7', 'day7'),
(17, 11111.81111, 'date', 'year2', 'month7', 'day8'),
(18, 11111.91111, 'date', 'year2', 'month7', 'day9'),
(10, 11111.01111, 'date', 'year2', 'month8', 'day0'),
(11, 11111.11111, 'date', 'year2', 'month8', 'day1'),
(12, 11111.21111, 'date', 'year2', 'month8', 'day2'),
(13, 11111.31111, 'date', 'year2', 'month8', 'day3'),
(14, 11111.41111, 'date', 'year2', 'month8', 'day4'),
(15, 11111.51111, 'date', 'year2', 'month8', 'day5'),
(16, 11111.61111, 'date', 'year2', 'month8', 'day6'),
(17, 11111.71111, 'date', 'year2', 'month8', 'day7'),
(18, 11111.81111, 'date', 'year2', 'month8', 'day8'),
(19, 11111.91111, 'date', 'year2', 'month8', 'day9'),
(11, 11111.01111, 'date', 'year2', 'month9', 'day0'),
(12, 11111.11111, 'date', 'year2', 'month9', 'day1'),
(13, 11111.21111, 'date', 'year2', 'month9', 'day2'),
(14, 11111.31111, 'date', 'year2', 'month9', 'day3'),
(15, 11111.41111, 'date', 'year2', 'month9', 'day4'),
(16, 11111.51111, 'date', 'year2', 'month9', 'day5'),
(17, 11111.61111, 'date', 'year2', 'month9', 'day6'),
(18, 11111.71111, 'date', 'year2', 'month9', 'day7'),
(19, 11111.81111, 'date', 'year2', 'month9', 'day8'),
(20, 11111.91111, 'date', 'year2', 'month9', 'day9'),
(3, 11111.01111, 'date', 'year3', 'month0', 'day0'),
(4, 11111.11111, 'date', 'year3', 'month0', 'day1'),
(5, 11111.21111, 'date', 'year3', 'month0', 'day2'),
(6, 11111.31111, 'date', 'year3', 'month0', 'day3'),
(7, 11111.41111, 'date', 'year3', 'month0', 'day4'),
(8, 11111.51111, 'date', 'year3', 'month0', 'day5'),
(9, 11111.61111, 'date', 'year3', 'month0', 'day6'),
(10, 11111.71111, 'date', 'year3', 'month0', 'day7'),
(11, 11111.81111, 'date', 'year3', 'month0', 'day8'),
(12, 11111.91111, 'date', 'year3', 'month0', 'day9'),
(4, 11111.01111, 'date', 'year3', 'month1', 'day0'),
(5, 11111.11111, 'date', 'year3', 'month1', 'day1'),
(6, 11111.21111, 'date', 'year3', 'month1', 'day2'),
(7, 11111.31111, 'date', 'year3', 'month1', 'day3'),
(8, 11111.41111, 'date', 'year3', 'month1', 'day4'),
(9, 11111.51111, 'date', 'year3', 'month1', 'day5'),
(10, 11111.61111, 'date', 'year3', 'month1', 'day6'),
(11, 11111.71111, 'date', 'year3', 'month1', 'day7'),
(12, 11111.81111, 'date', 'year3', 'month1', 'day8'),
(13, 11111.91111, 'date', 'year3', 'month1', 'day9'),
(5, 11111.01111, 'date', 'year3', 'month2', 'day0'),
(6, 11111.11111, 'date', 'year3', 'month2', 'day1'),
(7, 11111.21111, 'date', 'year3', 'month2', 'day2'),
(8, 11111.31111, 'date', 'year3', 'month2', 'day3'),
(9, 11111.41111, 'date', 'year3', 'month2', 'day4'),
(10, 11111.51111, 'date', 'year3', 'month2', 'day5'),
(11, 11111.61111, 'date', 'year3', 'month2', 'day6'),
(12, 11111.71111, 'date', 'year3', 'month2', 'day7'),
(13, 11111.81111, 'date', 'year3', 'month2', 'day8'),
(14, 11111.91111, 'date', 'year3', 'month2', 'day9'),
(6, 11111.01111, 'date', 'year3', 'month3', 'day0'),
(7, 11111.11111, 'date', 'year3', 'month3', 'day1'),
(8, 11111.21111, 'date', 'year3', 'month3', 'day2'),
(9, 11111.31111, 'date', 'year3', 'month3', 'day3'),
(10, 11111.41111, 'date', 'year3', 'month3', 'day4'),
(11, 11111.51111, 'date', 'year3', 'month3', 'day5'),
(12, 11111.61111, 'date', 'year3', 'month3', 'day6'),
(13, 11111.71111, 'date', 'year3', 'month3', 'day7'),
(14, 11111.81111, 'date', 'year3', 'month3', 'day8'),
(15, 11111.91111, 'date', 'year3', 'month3', 'day9'),
(7, 11111.01111, 'date', 'year3', 'month4', 'day0'),
(8, 11111.11111, 'date', 'year3', 'month4', 'day1'),
(9, 11111.21111, 'date', 'year3', 'month4', 'day2'),
(10, 11111.31111, 'date', 'year3', 'month4', 'day3'),
(11, 11111.41111, 'date', 'year3', 'month4', 'day4'),
(12, 11111.51111, 'date', 'year3', 'month4', 'day5'),
(13, 11111.61111, 'date', 'year3', 'month4', 'day6'),
(14, 11111.71111, 'date', 'year3', 'month4', 'day7'),
(15, 11111.81111, 'date', 'year3', 'month4', 'day8'),
(16, 11111.91111, 'date', 'year3', 'month4', 'day9'),
(8, 11111.01111, 'date', 'year3', 'month5', 'day0'),
(9, 11111.11111, 'date', 'year3', 'month5', 'day1'),
(10, 11111.21111, 'date', 'year3', 'month5', 'day2'),
(11, 11111.31111, 'date', 'year3', 'month5', 'day3'),
(12, 11111.41111, 'date', 'year3', 'month5', 'day4'),
(13, 11111.51111, 'date', 'year3', 'month5', 'day5'),
(14, 11111.61111, 'date', 'year3', 'month5', 'day6'),
(15, 11111.71111, 'date', 'year3', 'month5', 'day7'),
(16, 11111.81111, 'date', 'year3', 'month5', 'day8'),
(17, 11111.91111, 'date', 'year3', 'month5', 'day9'),
(9, 11111.01111, 'date', 'year3', 'month6', 'day0'),
(10, 11111.11111, 'date', 'year3', 'month6', 'day1'),
(11, 11111.21111, 'date', 'year3', 'month6', 'day2'),
(12, 11111.31111, 'date', 'year3', 'month6', 'day3'),
(13, 11111.41111, 'date', 'year3', 'month6', 'day4'),
(14, 11111.51111, 'date', 'year3', 'month6', 'day5'),
(15, 11111.61111, 'date', 'year3', 'month6', 'day6'),
(16, 11111.71111, 'date', 'year3', 'month6', 'day7'),
(17, 11111.81111, 'date', 'year3', 'month6', 'day8'),
(18, 11111.91111, 'date', 'year3', 'month6', 'day9'),
(10, 11111.01111, 'date', 'year3', 'month7', 'day0'),
(11, 11111.11111, 'date', 'year3', 'month7', 'day1'),
(12, 11111.21111, 'date', 'year3', 'month7', 'day2'),
(13, 11111.31111, 'date', 'year3', 'month7', 'day3'),
(14, 11111.41111, 'date', 'year3', 'month7', 'day4'),
(15, 11111.51111, 'date', 'year3', 'month7', 'day5'),
(16, 11111.61111, 'date', 'year3', 'month7', 'day6'),
(17, 11111.71111, 'date', 'year3', 'month7', 'day7'),
(18, 11111.81111, 'date', 'year3', 'month7', 'day8'),
(19, 11111.91111, 'date', 'year3', 'month7', 'day9'),
(11, 11111.01111, 'date', 'year3', 'month8', 'day0'),
(12, 11111.11111, 'date', 'year3', 'month8', 'day1'),
(13, 11111.21111, 'date', 'year3', 'month8', 'day2'),
(14, 11111.31111, 'date', 'year3', 'month8', 'day3'),
(15, 11111.41111, 'date', 'year3', 'month8', 'day4'),
(16, 11111.51111, 'date', 'year3', 'month8', 'day5'),
(17, 11111.61111, 'date', 'year3', 'month8', 'day6'),
(18, 11111.71111, 'date', 'year3', 'month8', 'day7'),
(19, 11111.81111, 'date', 'year3', 'month8', 'day8'),
(20, 11111.91111, 'date', 'year3', 'month8', 'day9'),
(12, 11111.01111, 'date', 'year3', 'month9', 'day0'),
(13, 11111.11111, 'date', 'year3', 'month9', 'day1'),
(14, 11111.21111, 'date', 'year3', 'month9', 'day2'),
(15, 11111.31111, 'date', 'year3', 'month9', 'day3'),
(16, 11111.41111, 'date', 'year3', 'month9', 'day4'),
(17, 11111.51111, 'date', 'year3', 'month9', 'day5'),
(18, 11111.61111, 'date', 'year3', 'month9', 'day6'),
(19, 11111.71111, 'date', 'year3', 'month9', 'day7'),
(20, 11111.81111, 'date', 'year3', 'month9', 'day8'),
(21, 11111.91111, 'date', 'year3', 'month9', 'day9'),
(4, 11111.01111, 'date', 'year4', 'month0', 'day0'),
(5, 11111.11111, 'date', 'year4', 'month0', 'day1'),
(6, 11111.21111, 'date', 'year4', 'month0', 'day2'),
(7, 11111.31111, 'date', 'year4', 'month0', 'day3'),
(8, 11111.41111, 'date', 'year4', 'month0', 'day4'),
(9, 11111.51111, 'date', 'year4', 'month0', 'day5'),
(10, 11111.61111, 'date', 'year4', 'month0', 'day6'),
(11, 11111.71111, 'date', 'year4', 'month0', 'day7'),
(12, 11111.81111, 'date', 'year4', 'month0', 'day8'),
(13, 11111.91111, 'date', 'year4', 'month0', 'day9'),
(5, 11111.01111, 'date', 'year4', 'month1', 'day0'),
(6, 11111.11111, 'date', 'year4', 'month1', 'day1'),
(7, 11111.21111, 'date', 'year4', 'month1', 'day2'),
(8, 11111.31111, 'date', 'year4', 'month1', 'day3'),
(9, 11111.41111, 'date', 'year4', 'month1', 'day4'),
(10, 11111.51111, 'date', 'year4', 'month1', 'day5'),
(11, 11111.61111, 'date', 'year4', 'month1', 'day6'),
(12, 11111.71111, 'date', 'year4', 'month1', 'day7'),
(13, 11111.81111, 'date', 'year4', 'month1', 'day8'),
(14, 11111.91111, 'date', 'year4', 'month1', 'day9'),
(6, 11111.01111, 'date', 'year4', 'month2', 'day0'),
(7, 11111.11111, 'date', 'year4', 'month2', 'day1'),
(8, 11111.21111, 'date', 'year4', 'month2', 'day2'),
(9, 11111.31111, 'date', 'year4', 'month2', 'day3'),
(10, 11111.41111, 'date', 'year4', 'month2', 'day4'),
(11, 11111.51111, 'date', 'year4', 'month2', 'day5'),
(12, 11111.61111, 'date', 'year4', 'month2', 'day6'),
(13, 11111.71111, 'date', 'year4', 'month2', 'day7'),
(14, 11111.81111, 'date', 'year4', 'month2', 'day8'),
(15, 11111.91111, 'date', 'year4', 'month2', 'day9'),
(7, 11111.01111, 'date', 'year4', 'month3', 'day0'),
(8, 11111.11111, 'date', 'year4', 'month3', 'day1'),
(9, 11111.21111, 'date', 'year4', 'month3', 'day2'),
(10, 11111.31111, 'date', 'year4', 'month3', 'day3'),
(11, 11111.41111, 'date', 'year4', 'month3', 'day4'),
(12, 11111.51111, 'date', 'year4', 'month3', 'day5'),
(13, 11111.61111, 'date', 'year4', 'month3', 'day6'),
(14, 11111.71111, 'date', 'year4', 'month3', 'day7'),
(15, 11111.81111, 'date', 'year4', 'month3', 'day8'),
(16, 11111.91111, 'date', 'year4', 'month3', 'day9'),
(8, 11111.01111, 'date', 'year4', 'month4', 'day0'),
(9, 11111.11111, 'date', 'year4', 'month4', 'day1'),
(10, 11111.21111, 'date', 'year4', 'month4', 'day2'),
(11, 11111.31111, 'date', 'year4', 'month4', 'day3'),
(12, 11111.41111, 'date', 'year4', 'month4', 'day4'),
(13, 11111.51111, 'date', 'year4', 'month4', 'day5'),
(14, 11111.61111, 'date', 'year4', 'month4', 'day6'),
(15, 11111.71111, 'date', 'year4', 'month4', 'day7'),
(16, 11111.81111, 'date', 'year4', 'month4', 'day8'),
(17, 11111.91111, 'date', 'year4', 'month4', 'day9'),
(9, 11111.01111, 'date', 'year4', 'month5', 'day0'),
(10, 11111.11111, 'date', 'year4', 'month5', 'day1'),
(11, 11111.21111, 'date', 'year4', 'month5', 'day2'),
(12, 11111.31111, 'date', 'year4', 'month5', 'day3'),
(13, 11111.41111, 'date', 'year4', 'month5', 'day4'),
(14, 11111.51111, 'date', 'year4', 'month5', 'day5'),
(15, 11111.61111, 'date', 'year4', 'month5', 'day6'),
(16, 11111.71111, 'date', 'year4', 'month5', 'day7'),
(17, 11111.81111, 'date', 'year4', 'month5', 'day8'),
(18, 11111.91111, 'date', 'year4', 'month5', 'day9'),
(10, 11111.01111, 'date', 'year4', 'month6', 'day0'),
(11, 11111.11111, 'date', 'year4', 'month6', 'day1'),
(12, 11111.21111, 'date', 'year4', 'month6', 'day2'),
(13, 11111.31111, 'date', 'year4', 'month6', 'day3'),
(14, 11111.41111, 'date', 'year4', 'month6', 'day4'),
(15, 11111.51111, 'date', 'year4', 'month6', 'day5'),
(16, 11111.61111, 'date', 'year4', 'month6', 'day6'),
(17, 11111.71111, 'date', 'year4', 'month6', 'day7'),
(18, 11111.81111, 'date', 'year4', 'month6', 'day8'),
(19, 11111.91111, 'date', 'year4', 'month6', 'day9'),
(11, 11111.01111, 'date', 'year4', 'month7', 'day0'),
(12, 11111.11111, 'date', 'year4', 'month7', 'day1'),
(13, 11111.21111, 'date', 'year4', 'month7', 'day2'),
(14, 11111.31111, 'date', 'year4', 'month7', 'day3'),
(15, 11111.41111, 'date', 'year4', 'month7', 'day4'),
(16, 11111.51111, 'date', 'year4', 'month7', 'day5'),
(17, 11111.61111, 'date', 'year4', 'month7', 'day6'),
(18, 11111.71111, 'date', 'year4', 'month7', 'day7'),
(19, 11111.81111, 'date', 'year4', 'month7', 'day8'),
(20, 11111.91111, 'date', 'year4', 'month7', 'day9'),
(12, 11111.01111, 'date', 'year4', 'month8', 'day0'),
(13, 11111.11111, 'date', 'year4', 'month8', 'day1'),
(14, 11111.21111, 'date', 'year4', 'month8', 'day2'),
(15, 11111.31111, 'date', 'year4', 'month8', 'day3'),
(16, 11111.41111, 'date', 'year4', 'month8', 'day4'),
(17, 11111.51111, 'date', 'year4', 'month8', 'day5'),
(18, 11111.61111, 'date', 'year4', 'month8', 'day6'),
(19, 11111.71111, 'date', 'year4', 'month8', 'day7'),
(20, 11111.81111, 'date', 'year4', 'month8', 'day8'),
(21, 11111.91111, 'date', 'year4', 'month8', 'day9'),
(13, 11111.01111, 'date', 'year4', 'month9', 'day0'),
(14, 11111.11111, 'date', 'year4', 'month9', 'day1'),
(15, 11111.21111, 'date', 'year4', 'month9', 'day2'),
(16, 11111.31111, 'date', 'year4', 'month9', 'day3'),
(17, 11111.41111, 'date', 'year4', 'month9', 'day4'),
(18, 11111.51111, 'date', 'year4', 'month9', 'day5'),
(19, 11111.61111, 'date', 'year4', 'month9', 'day6'),
(20, 11111.71111, 'date', 'year4', 'month9', 'day7'),
(21, 11111.81111, 'date', 'year4', 'month9', 'day8'),
(22, 11111.91111, 'date', 'year4', 'month9', 'day9');

------ iceberg_table3: PARTITIONED ------
CREATE TABLE iceberg_table3
(
    id   bigint,
    name string,
    dt STRING
) PARTITIONED BY (
  hh string
) STORED BY 'org.apache.iceberg.mr.hive.HiveIcebergStorageHandler';

insert into iceberg_table3  values
(1, 'a', 'date1', 'hh1'),
(2, 'b', 'date2', 'hh2'),
(3, 'c', 'date3', 'hh3'),
(4, 'd', 'date4', 'hh4'),
(5, 'e', 'date5', 'hh5'),
(6, 'f', 'date6', 'hh6'),
(7, 'g', 'date7', 'hh7'),
(8, 'h', 'date8', 'hh8'),
(9, 'i', 'date9', 'hh9'),
(10, 'j', 'date10', 'hh10'),
(11, 'k', 'date11', 'hh11'),
(12, 'l', 'date12', 'hh12'),
(13, 'm', 'date13', 'hh13'),
(14, 'n', 'date14', 'hh14'),
(15, 'o', 'date15', 'hh15'),
(16, 'p', 'date16', 'hh16'),
(17, 'q', 'date17', 'hh17'),
(18, 'r', 'date18', 'hh18'),
(19, 's', 'date19', 'hh19'),
(20, 't', 'date20', 'hh20'),
(21, 'u', 'date21', 'hh21'),
(22, 'v', 'date22', 'hh22'),
(23, 'w', 'date23', 'hh23'),
(24, 'x', 'date24', 'hh24'),
(25, 'y', 'date25', 'hh25'),
(26, 'z', 'date26', 'hh26'),
(27, 'aa', 'date27', 'hh27'),
(28, 'bb', 'date28', 'hh28'),
(29, 'cc', 'date29', 'hh29'),
(30, 'dd', 'date30', 'hh30'),
(31, 'ee', 'date31', 'hh31'),
(32, 'ff', 'date32', 'hh32');