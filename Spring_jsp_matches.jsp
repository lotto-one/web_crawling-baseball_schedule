<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="../temp/header.jsp"%>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<%-- �߱���� ������� --%>
<style>

.match-info {
    display: none; /* �ʱ⿡ ���� ó�� */
}

#season {
	margin-right: 10px;
	font-size: 1.1rem;
	border-radius: 4px;
	left: 30px;
}

.list-button {
	background-color: #ffB92e;
	padding: 10px 20px;
	cursor: pointer;
	border-radius: 5px;
	width: 150px;
	border: none;
	color: #ffffff;
	font-size: 1.1rem;
}

.list-button:hover {
	background-color: #ffc83c;
	color: #f8f8f8;
	cursor: pointer;
}

.search-button {
	background-color: #000000;
	padding: 10px 20px;
	cursor: pointer;
	border-radius: 5px;
	width: 150px;
	border: none;
	color: #ffffff;
	font-size: 1.1rem;
}

.search-button:hover {
	background-color: #333333;
	color: #f8f8f8;
}

table .blind {
	font-size: 1.2rem;
	margin: 20px 20px;
}

table td {
	font-size: 1.1rem;
	padding: 8px;
	background-color: #f7f7f7 !important;
	font-weight: 500;
}

#mainth {
	background-color: #294faa ! important;
	color: #ffffff;
	font-weight: 500;
}

#scoreboard-click{
	font-size: 1.1rem;
	padding: 8px;
	background-color: #f7f7f7 !important;
	font-weight: 500;

}
#datepickerContainer{
	text-align: center; /* ���� ����� ���� ������ ����� ���� */
    display: flex; /* ���� ��Ҹ� ���η� �����ϱ� ���� Flexbox ��� */
    justify-content: center; /* ���� ��Ҹ� �������� ��� ���� */
    align-items: center; /* ���� ��Ҹ� �������� ��� ���� */
    
}

.team-logo {
        width: 100px; /* �̹��� �ʺ� ���� */
        height: auto; /* �̹��� ���̴� �ڵ����� �����˴ϴ�. */
}

.scoreboard-click-detail:hover{
	cursor: pointer;
	background-color: #294faa !important;
	color: white;

}

.scoreboard-details{
	background-color: #294faa14 !important;
	border-spacing: 10px;
	width: 5%;
	font-weight: bold;
}

.scoreboard-details2{
	background-color: #294faa87 !important;
	border-spacing: 10px;
	width: 5%;
	font-weight: bold;
}
.scoreboard-details3{
	background-color: #596a928a !important;
	border-spacing: 10px;
	width: 5%;
	font-weight: bold;
}

 .ui-widget-header { border: 0px solid #dddddd; background: #fff; } 

 .ui-datepicker-calendar>thead>tr>th { font-size: 14px !important; } 

 .ui-datepicker .ui-datepicker-header { position: relative; padding: 10px 0; } 

 .ui-state-default,
 .ui-widget-content .ui-state-default,
 .ui-widget-header .ui-state-default,
 .ui-button,
 html .ui-button.ui-state-disabled:hover,
 html .ui-button.ui-state-disabled:active { border: 0px solid #c5c5c5; background-color: transparent; font-weight: normal; color: #454545; text-align: center; } 

 .ui-datepicker .ui-datepicker-title { margin: 0 0em; line-height: 16px; text-align: center; font-size: 14px; padding: 0px; font-weight: bold; } 

 .ui-datepicker { display: none; background-color: #fff; border-radius: 4px; margin-top: 10px; margin-left: 0px; margin-right: 0px; padding: 20px; padding-bottom: 10px; width: 300px; box-shadow: 10px 10px 40px rgba(0, 0, 0, 0.1); } 

 .ui-widget.ui-widget-content { border: 1px solid #eee; } 

 #datepicker:focus>.ui-datepicker { display: block; } 

 .ui-datepicker-prev,
 .ui-datepicker-next { cursor: pointer; } 

 .ui-datepicker-next { float: right; } 

 .ui-state-disabled { cursor: auto; color: hsla(0, 0%, 80%, 1); } 

 .ui-datepicker-title { text-align: center; padding: 10px; font-weight: 100; font-size: 20px; } 

 .ui-datepicker-calendar { width: 100%; } 

 .ui-datepicker-calendar>thead>tr>th { padding: 5px; font-size: 20px; font-weight: 400; } 

 .ui-datepicker-calendar>tbody>tr>td>a { color: #000; font-size: 12px !important; font-weight: bold !important; text-decoration: none;}

 .ui-datepicker-calendar>tbody>tr>.ui-state-disabled:hover { cursor: auto; background-color: #fff; } 

 .ui-datepicker-calendar>tbody>tr>td { border-radius: 100%; width: 44px; height: 30px; cursor: pointer; padding: 5px; font-weight: 100; text-align: center; font-size: 12px; } 

 .ui-datepicker-calendar>tbody>tr>td:hover { background-color: transparent; opacity: 0.6; } 

 .ui-state-hover,
 .ui-widget-content .ui-state-hover,
 .ui-widget-header .ui-state-hover,
 .ui-state-focus,
 .ui-widget-content .ui-state-focus,
 .ui-widget-header .ui-state-focus,
 .ui-button:hover,
 .ui-button:focus { border: 0px solid #cccccc; background-color: transparent; font-weight: normal; color: #2b2b2b; } 

 .ui-widget-header .ui-icon { background-image: url('resources/img/btns.png'); } 

 .ui-icon-circle-triangle-e { background-position: -20px 0px; background-size: 36px; } 

 .ui-icon-circle-triangle-w { background-position: -0px -0px; background-size: 36px; } 

 .ui-datepicker-calendar>tbody>tr>td:first-child a { color: red !important; } 

 .ui-datepicker-calendar>tbody>tr>td:last-child a { color: #0099ff !important; } 

 .ui-datepicker-calendar>thead>tr>th:first-child { color: red !important; } 

 .ui-datepicker-calendar>thead>tr>th:last-child { color: #0099ff !important; } 

 .ui-state-highlight,
 .ui-widget-content .ui-state-highlight,
 .ui-widget-header .ui-state-highlight { border: 0px; background: #f1f1f1; border-radius: 50%; padding-top: 10px; padding-bottom: 10px; } 

 .inp { padding: 10px 10px; background-color: #f1f1f1; border-radius: 4px; border: 0px; } 

 .inp:focus { outline: none; background-color: #eee; } 
</style>
<section id="matches">
	<div class="matches_gamesch">
		<div class="container">
			<div class="row">
				<h2>
					<em>KBO���� �������</em>
				</h2>

				<%-- �޷�ǥ�� --%>
                <div id="datepickerContainer" class="d-inline-block text-center">                     
                        <div id="datepicker"></div>
                </div>
                <%-- �޷�ǥ�� --%>
                
				<%-- ����� ���� --%>
				<div class="matches_info" style="cursor: pointer;">				
					<table>
						<thead>
							<tr>
								<th id="mainth" colspan="6">Ȩ��</th>
								<th id="mainth" colspan="8">�������</th>
								<th id="mainth" colspan="6">������</th>
							</tr>	
						</thead>
						<tbody id="matchesTableBody" style="text-align: center;">												
						</tbody>																	
					</table>					
				</div>
				<%-- ����� ���� --%>
				
				<%-- ����ȭ�� ���ư��� ���� --%>
				<p style="text-align: center; margin-bottom: 20px;">
					<a href="main"><i class="fa-solid fa-rotate-left"></i>&nbsp;����ȭ������ ���ư���</a>
				</p>
				<%-- ����ȭ�� ���ư��� ���� --%>
				
				<%-- ũ�Ѹ� ��ó --%>
				<div>(��������: <img src="resources/img/naver_logo.png" alt="naver" style="width: 80px; margin: auto;"> �߱�)</div>
				<%-- ũ�Ѹ� ��ó --%>
				
			</div>
		</div>
	</div>



</section>
<%@include file="../temp/footer.jsp"%>
<script>
    $(document).ready(function() {
        // ������ �ε� �� �ڵ����� ������ ��������
        $.ajax({
        	url: 'http://192.168.0.101:9000/teamproject/load_json_data',
            type: 'GET',
            dataType: 'json',
            contentType: 'application/json; charset=utf-8',
            success: function(data) {
            	 // Ŭ�� �̺�Ʈ - "���ھ�� Click" ���� Ŭ���Ͽ� ������ ���̺� ���̱�
                $(document).on('click', 'tr.scoreboard-click', function() {
				    var detailsRows = $(this).nextUntil('tr.scoreboard-click').filter('tr.scoreboard-details');
				    detailsRows.toggle();
				});
                // ������ �������� ���� �� ���̺� ǥ��
                displayMatchesTable(data);
                // Datepicker �ʱ�ȭ (�ζ��� ���)
                $('#datepicker').datepicker({
                    dateFormat: 'm.d',
                    monthNames: ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12'],
                    dayNamesMin: ['��', '��', 'ȭ', '��', '��', '��', '��'],
                    beforeShowDay: function(date) {
                        // ������(1)�� ��� false�� ��ȯ�Ͽ� Ŭ�� �Ұ����ϰ� ����ϴ�.
                        return [date.getDay() !== 1, '']; // ������(1)�� Ŭ���� �� ������ ����
                    },
                    onSelect: function(selectedDate) {
                    
                        var parts = selectedDate.split('.');
                        var selectedMonth = parts[0];
                        var selectedDay = ('0' + parts[1]).slice(-2);

                        // ������ ���͸�
                        var filteredMatches = data.filter(function(match) {
                            var matchDateParts = match.date.split('.');
                            var matchMonth = matchDateParts[0];
                            var matchDay = ('0' + matchDateParts[1]).slice(-2);

                            return matchMonth === selectedMonth && matchDay === selectedDay;
                        });
                        
                    

                        // ���͸��� ���� ���̺�� ǥ��
                        displayMatchesTable(filteredMatches);
                    },
                    beforeShow: function(input, inst) {
                        inst.dpDiv.css({
                            position: 'absolute',
                            top: $(input).offset().top + $(input).outerHeight(),
                            left: $(input).offset().left
                        });
                    }
                });
                var today = new Date();
                var formattedToday = (today.getMonth() + 1) + '.' + ('0' + today.getDate()).slice(-2);
                $('#datepicker').datepicker('setDate', formattedToday);
            },
            error: function(xhr, status, error) {
                console.error('Failed to load data:', error);
            }
        });

        // �� �̹��� ����
        var teamImages = {
            'KIA': 'resources/img/KIATIGERS.svg',
            'KT': 'resources/img/KTWIZ.svg',
            'LG': 'resources/img/LGTWINS.svg',
            'NC': 'resources/img/NCDINOS.svg',
            'SSG': 'resources/img/SSGLADERS.svg',
            '�λ�': 'resources/img/DOOSANBEARS.svg',
            '�Ե�': 'resources/img/LOTTEGIANTS.svg',
            '�Ｚ': 'resources/img/SAMSUNGLIONS.svg',
            'Ű��': 'resources/img/KIWOOMHEROES.svg',
            '��ȭ': 'resources/img/HANWHAEAGLES.svg'
        };

        // �ѱ� �� �̸��� ��Ī�Ǵ� ���� �� �̸��� ��ȯ�ϴ� �Լ�
        function getEnglishTeamName(koreanTeamName) {
            switch (koreanTeamName) {
                case 'DOOSANBEARS':
                    return '�λ�';
                case 'LOTTEGIANTS':
                    return '�Ե�';
                case 'SAMSUNGLIONS':
                    return '�Ｚ';
                case 'KIWOOMHEROES':
                    return 'Ű��';
                case 'HANWHAEAGLES':
                    return '��ȭ';
                case 'SSGLADERS':
                    return 'SSG';
                case 'NCDINOS':
                    return 'NC';
                case 'LGTWINS':
                    return 'LG';
                case 'KTWIZ':
                    return 'KT';
                case 'KIATIGERS':
                    return 'KIA';
                default:
                    return koreanTeamName;
            }
        }

        // �� �̹��� ��ȯ
        function getTeamImage(teamName) {
            var englishTeamName = getEnglishTeamName(teamName);
            if (englishTeamName in teamImages) {
                return '<img src="' + teamImages[englishTeamName] + '" alt="' + teamName + '" class="team-logo">';
            } else {
                return teamName; // �̹����� ���� ��� �� �̸� �״�� ��ȯ
            }
        }

        // ��� ������ ���̺�� ǥ���ϴ� �Լ�
        function displayMatchesTable(matches) {
            var container = $('#matchesTableBody');
            container.empty(); // ���� ������ ����
            matches.forEach(function(match) {
                var row =   '<tr>' +
                '<td colspan="4" rowspan="3"><p>' + getTeamImage(match.teams1) + '</p>' + match.teams1 + '</td>' +
                '<td colspan="2" rowspan="3">' + match.score1 + '</td>' +
                '<td colspan="8"><b>' + match.game_status + '</b></td>' +
                '<td colspan="2" rowspan="3">' + match.score2 + '</td>' +
                '<td colspan="4" rowspan="3"><p>' + getTeamImage(match.teams2) + '</p>' + match.teams2 +_ '</td>' +
                '</tr>' +
                '<tr>' +             
                '<td colspan="8">' + match.date + ' ' + match.time + '</td>' +
                '</tr>' +
                '<tr>' +               
                '<td colspan="8">' + match.location + '</td>' +                
                '</tr>' +
                '<tr class="scoreboard-click">' + '<td colspan="20" class="scoreboard-click-detail">'+ "���ھ�� [������]" +'</td>' +'</tr>' +
                '<tr class="scoreboard-details" style="display:none;">' +
                '<td colspan="4" class="scoreboard-details2" style="width:20%;">'+ "<b>��</b>" +'</td>' +
                '<td class="scoreboard-details2">'+ "1" +'</td>' +
                '<td class="scoreboard-details2">'+ "2" +'</td>' +
                '<td class="scoreboard-details2">'+ "3" +'</td>' +
                '<td class="scoreboard-details2">'+ "4" +'</td>' +
                '<td class="scoreboard-details2">'+ "5" +'</td>' +
                '<td class="scoreboard-details2">'+ "6" +'</td>' +
                '<td class="scoreboard-details2">'+ "7" +'</td>' +
                '<td class="scoreboard-details2">'+ "8" +'</td>' +
                '<td class="scoreboard-details2">'+ "9" +'</td>' +
                '<td class="scoreboard-details2">'+ "10" +'</td>' +
                '<td class="scoreboard-details2">'+ "11" +'</td>' +
                '<td class="scoreboard-details2">'+ "12" +'</td>' +
                '<td class="scoreboard-details2">'+ "R" +'</td>' +
                '<td class="scoreboard-details2">'+ "H" +'</td>' +
                '<td class="scoreboard-details2">'+ "E" +'</td>' +
                '<td class="scoreboard-details2">'+ "B" +'</td>' +
                '</tr>' +
                '<tr class="scoreboard-details" style="display:none;">' +
                '<td colspan="4" class="scoreboard-details" style="width:20%;">'+ '<b>'+match.teams1+'</b>' +'</td>' +
                '<td class="scoreboard-details">'+ match["1_1_inning"] +'</td>' +
                '<td class="scoreboard-details">'+ match["1_2_inning"] +'</td>' +
                '<td class="scoreboard-details">'+ match["1_3_inning"] +'</td>' +
                '<td class="scoreboard-details">'+ match["1_4_inning"] +'</td>' +
                '<td class="scoreboard-details">'+ match["1_5_inning"] +'</td>' +
                '<td class="scoreboard-details">'+ match["1_6_inning"] +'</td>' +
                '<td class="scoreboard-details">'+ match["1_7_inning"] +'</td>' +
                '<td class="scoreboard-details">'+ match["1_8_inning"] +'</td>' +
                '<td class="scoreboard-details">'+ match["1_9_inning"] +'</td>' +
                '<td class="scoreboard-details">'+ match["1_10_inning"] +'</td>' +
                '<td class="scoreboard-details">'+ match["1_11_inning"] +'</td>' +
                '<td class="scoreboard-details">'+ match["1_12_inning"] +'</td>' +
                '<td class="scoreboard-details3">'+ match["1_R_inning"] +'</td>' +
                '<td class="scoreboard-details3">'+ match["1_H_inning"] +'</td>' +
                '<td class="scoreboard-details3">'+ match["1_E_inning"] +'</td>' +
                '<td class="scoreboard-details3">'+ match["1_B_inning"] +'</td>' +
                '</tr>' +
                '<tr class="scoreboard-details" style="display:none;">' +
                '<td colspan="4" class="scoreboard-details" style="width:20%;">'+ '<b>'+match.teams2+'</b>' +'</td>' +
                '<td class="scoreboard-details">'+ match["2_1_inning"] +'</td>' +
                '<td class="scoreboard-details">'+ match["2_2_inning"] +'</td>' +
                '<td class="scoreboard-details">'+ match["2_3_inning"] +'</td>' +
                '<td class="scoreboard-details">'+ match["2_4_inning"] +'</td>' +
                '<td class="scoreboard-details">'+ match["2_5_inning"] +'</td>' +
                '<td class="scoreboard-details">'+ match["2_6_inning"] +'</td>' +
                '<td class="scoreboard-details">'+ match["2_7_inning"] +'</td>' +
                '<td class="scoreboard-details">'+ match["2_8_inning"] +'</td>' +
                '<td class="scoreboard-details">'+ match["2_9_inning"] +'</td>' +
                '<td class="scoreboard-details">'+ match["2_10_inning"] +'</td>' +
                '<td class="scoreboard-details">'+ match["2_11_inning"] +'</td>' +
                '<td class="scoreboard-details">'+ match["2_12_inning"] +'</td>' +
                '<td class="scoreboard-details3">'+ match["2_R_inning"] +'</td>' +
                '<td class="scoreboard-details3">'+ match["2_H_inning"] +'</td>' +
                '<td class="scoreboard-details3">'+ match["2_E_inning"] +'</td>' +
                '<td class="scoreboard-details3">'+ match["2_B_inning"] +'</td>' +
                '</tr>';

                

                container.append(row);
            });
        }
    });
</script>



