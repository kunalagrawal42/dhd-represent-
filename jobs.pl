company(1, 1, 'Lufa farms', 'Canada').
company(2, 2, 'Jio', 'India').
company(3, 3, 'TCS', 'India').
company(4, 4, 'Apple', 'USA').
company(5, 5, 'Infotech', 'UK').
company(11, 67, 'Ava Pugh', 'Pakistan').
company(12, 56, 'Lavinia Mitchell', 'Austria').
company(13, 98, 'Scott Roy', 'Ukraine').
company(14, 25, 'Tamara Haney', 'Colombia').
company(15, 23, 'Thor Dawson', 'Vietnam').
company(16, 77, 'Cyrus Leonard', 'Norway').
company(17, 17, 'Xena Burks', 'Australia').
company(18, 74, 'Hall Wolf', 'Nigeria').
company(19, 95, 'Paul Lopez', 'Austria').
company(20, 59, 'Veda Glenn', 'Belgium').

employee('29-03-2022', 91129, 122886, 1, 1).
employee('17-02-2022', 128455, 129615, 2, 2).
employee('29-12-2021', 82153, 141593, 3, 1).
employee('25-08-2023', 63990, 147791, 4, 2).
employee('21-09-2022', 222995, 150655, 5, 1).
employee('13-02-2022', 7486427, 355589, 21, 1).
employee('10-08-2022', 1240304, 2334516, 22, 2).
employee('18-12-2022', 8191386, 4641802, 23, 3).
employee('18-11-2022', 9945372, 9058819, 24, 4).
employee('21-07-2023', 1805869, 674746, 25, 5).
employee('04-08-2022', 8655812, 5223859, 26, 6).
employee('25-11-2021', 8946741, 7628205, 27, 7).
employee('24-04-2023', 1018811, 7763021, 28, 8).
employee('27-08-2023', 5390186, 5658160, 29, 9).
employee('10-09-2022', 5040077, 4125683, 30, 10).

freelancer(2, 'FE', 1, 151014).
freelancer(4, 'FE', 2, 152994).
freelancer(6, 'FE', 1, 156528).
freelancer(8, 'FE', 2, 167667).
freelancer(10, 'BE', 1, 183386).
freelancer(11, 'Programmer', 6, 4726667).
freelancer(12, 'Analyst', 7, 4745539).
freelancer(13, 'HR', 8, 7265572).
freelancer(14, 'Security', 9, 9840499).
freelancer(15, 'Supervisor', 10, 6002540).
freelancer(16, 'Programmer', 11, 3083545).
freelancer(17, 'Analyst', 12, 1777392).
freelancer(18, 'HR', 13, 3316779).
freelancer(19, 'Security', 14, 2537097).
freelancer(20, 'Supervisor', 15, 7339185).

job(1, 25, '04-04-2023', 94, 1, 151014).
job(2, 37, '14-01-2023', 78, 2, 152994).
job(3, 25, '11-06-2022', 48, 1, 156528).
job(4, 24, '13-07-2022', 40, 6, 167667).
job(5, 21, '01-07-2023', 78, 1, 183386).
job(11, 27, '05-11-2021', 924, 6, 3827132).
job(12, 95, '01-10-2021', 935, 7, 2273891).
job(13, 54, '08-03-2022', 625, 8, 2063906).
job(14, 92, '25-03-2022', 912, 9, 4531089).
job(15, 47, '07-01-2023', 781, 10, 8244579).
job(16, 21, '04-11-2022', 321, 11, 8152101).
job(17, 63, '13-09-2022', 356, 12, 5888519).
job(18, 24, '10-03-2023', 524, 13, 879380).
job(19, 27, '14-10-2022', 534, 14, 6072334).
job(20, 61, '05-01-2023', 352, 15, 8119295).

person(122886, 'Madeline Mejia').
person(129615, 'Ferris Shelton').
person(141593, 'Brandon Floyd').
person(147791, 'Justina Keith').
person(150655, 'Quamar William').
person(151014, 'Hamish Page').
person(152994, 'Dana Robinson').
person(156528, 'Steven Sweeney').
person(167667, 'Stella Long').
person(183386, 'Charles Griffith').
person(983051, 'Nehru Small').
person(1221489, 'Ulla Mccall').
person(4486654, 'Hope Stuart').
person(5441016, 'Ciara Buchanan').
person(7797340, 'Dai Dickerson').
person(7838106, 'Martina Munoz').
person(7944455, 'Hayley Gallegos').
person(7955127, 'Lee Norris').
person(8680086, 'Dara Orr').
person(8748683, 'Jordan Jimenez').


printEmployeesOfCompany(CN) :- forall(company(C,_,CN,_),forall(employee(_,_,S,_,C),(forall(person(S,N),(write("name : "),write(N),nl))))).


printFreelancersOfCompanyWithSpecialization(CN,SP) :- forall(company(C,_,CN,_),forall(freelancer(_,SP,C,S),forall(person(S,N),(write("name : "),write(N),nl)))).

printFreelancersWithPayRateMoreThan(PR) :- forall((job(_,P,_,_,_,S),P>PR),forall(freelancer(_,_,_,S),forall(person(S,N),(write("name : "),write(N),nl)))).

printNameAndSalaryOfManagerFromCompany(CN) :- forall(company(_,M,CN,_),forall(employee(_,_,S,M,_),(forall(person(S,N),(write("name : "),write(N),write(", salary : "),write(S),nl))))).
