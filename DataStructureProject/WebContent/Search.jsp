<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GoogleSearch</title>
<style type="text/css">
.title{
position:absolute;
left:50%;
top:10%;
margin-top:-50px;
margin-left:-500px
}
.button{
	position:absolute;
	width:45px;
	height:25px;
	font-size:15px;
	left:50%;
	top:50%;
}
.border-style {
	border-radius:75px/90px;
}
#padding{
	padding: 0px 0px 0px 15px;
}
.note{
	position:absolute;
	width:50px;
	height:50px;
	animation-timing-function: ease-in-out;
	animation-direction: alternate;
	animation-name:note;
	animation-duration:5s;
	animation-iteration-count:infinite;
	
}
@keyframes note{
	0%{
		
		left:640px;		
		top:0px;
		
	}
	25%{
		left:700px;
		top:60px;
		
	}
	50%{
		left:760px;
		top:0px;
	}
	75%{
		left:700px;
		top:-60px;
	}
	100%{
		left:640px;
		top:0px;
	}
}
.note1{
	position:absolute;
	width:50px;
	height:50px;
	animation-direction: alternate;
	animation-timing-function: ease-in-out;
	animation-name:note1;
	animation-duration:5s;
	animation-iteration-count:infinite;
}
@keyframes note1{
	0%{
		left:760px;		
		top:0px;
		
	}
	25%{
		left:700px;
		top:-60px;
	}
	50%{
		left:640px;
		top:0px;
	}
	75%{
		left:700px;
		top:60px;
	}
	100%{
		left:760px;
		top:0px;
		
	}
}
.note2{
	position:absolute;
	width:50px;
	height:50px;
	animation-direction: alternate;
	animation-timing-function: ease-in-out;
	animation-name:note2;
	animation-duration:5s;
	animation-iteration-count:infinite;
}
@keyframes note2{
	0%{
		left:700px;		
		top:-60px;		
	}
	25%{
		left:640px;
		top:0px;
	}
	50%{
		left:700px;
		top:60px;
	}
	75%{
		left:760px;
		top:0px;
	}
	100%{
		left:700px;
		top:-60px;
		
	}
}
.note3{
	position:absolute;
	width:50px;
	height:50px;
	animation-direction: alternate;
	animation-timing-function: ease-in-out;
	animation-name:note3;
	animation-duration:5s;
	animation-iteration-count:infinite;
}
@keyframes note3{
	0%{
		left:700px;		
		top:60px;		
	}
	25%{
		left:760px;
		top:0px;
	}
	50%{
		left:700px;
		top:-60px;
	}
	75%{
		left:640px;
		top:0px;
	}
	100%{
		left:700px;
		top:60px;
		
	}
}
.box{
  position:relative;
}
.box:before{
  content:'';
  position:absolute;
  z-index:2;
  top:60px;
  left:50px;
  width:50px;
  height:50px;
  
  border-radius:2px;
  transform: rotate(45deg);
  -webkit-animation:box 1.25s infinite ; 
}
@-webkit-keyframes box{
  0%{
    top:50px;
  }
  20%{
    border-radius:2px;  
  }
  50%{
    top:80px; 
    border-bottom-right-radius:25px;
  }
  80%{
    border-radius:2px; 
  }
  100%{
    top:50px;
  }
}
.box:after{
  content:'';
  position:absolute;
  z-index:1;
  top:128px;
  left:52px;
  width:44px;
  height:3px;
  background:#eaeaea;
  border-radius:100%;
  -webkit-animation:shadow 1.25s infinite ; 
}
@-webkit-keyframes shadow{
  0%,100%{
    left:54px;
    width:40px;
    background:#eaeaea;
  }
  50%{
    top:126px;
    left:50px;   
    width:50px;
    height:7px;
    background:#eee;
  }
}
</style>
<script type="text/javascript">
function click10() {
	document.getElementsByName("searchNum")[0].value = 10;
	document.getElementsByName("searchNum")[0].style.color = '#0489B1';
}
function click20() {
	document.getElementsByName("searchNum")[0].value = 20;
	document.getElementsByName("searchNum")[0].style.color = '#0489B1';
}
function click40() {
	document.getElementsByName("searchNum")[0].value = 40;
	document.getElementsByName("searchNum")[0].style.color = '#0489B1';
}
function click80() {
	document.getElementsByName("searchNum")[0].value = 80;
	document.getElementsByName("searchNum")[0].style.color = '#0489B1';
}
</script>
</head>
<body style='background-color:	#66b2b2'>
<form action='${requestUri}' method='get'>

<div class = 'box'style = 'position:absolute;margin-top:610px;margin-left:700px;'></div>
<div class='note'>
<img src="images/xi.png" style = 'position:absolute;width:160px;height:160px;margin-top:520px' >
</div> 
 
<div>
<input type='text' class="border-style" id="padding"  
style='font-size:120%;position:absolute;left:50%;top:48%;
margin-top:-47px;margin-left:-400px;width:800px;height:45px' name='keyword' placeholder='please input a politician you what to understand'
onfocus="placeholder= '' " onblur="placeholder='請輸入關鍵字'" />
</div>
<div>
<h3 class = 'border-style' style='position:absolute; margin-left:630px; margin-top:0px; left:48; top:50%;'>"The ballot is stronger than the bullet." - Abraham Lincoln </h3> 
</div>
<div>
<input type='text' name='searchNum' value='10' style='color:#0489B1;border-style:none;background-color:#0489B1'>
</div>
<div>
<input type='image' src="images/loupe-2.png" 
style='position:absolute;width:37px;height:37px;left:50%;top:50%;margin-top:-55px;
margin-left:368px '/>
</div>
<div>
<svg class = title width="1004" height="276" viewBox="0 0 1004 276" fill="none" xmlns="http://www.w3.org/2000/svg">
<g clip-path="url(#clip0_1_187)">
<rect x="560" y="111.5" width="100" height="100" rx="50" fill="white"/>
<g clip-path="url(#clip1_1_187)">
<path d="M660 111.5H560V211.5H660V111.5Z" fill="white"/>
<path d="M660 111.5H560V211.5H660V111.5Z" fill="#2C2C2C"/>
<path d="M586.95 147.3C606.694 147.3 622.7 131.294 622.7 111.55C622.7 91.8058 606.694 75.8 586.95 75.8C567.206 75.8 551.2 91.8058 551.2 111.55C551.2 131.294 567.206 147.3 586.95 147.3Z" fill="url(#paint0_linear_1_187)"/>
<path d="M635.35 247.3C655.094 247.3 671.1 231.294 671.1 211.55C671.1 191.806 655.094 175.8 635.35 175.8C615.606 175.8 599.6 191.806 599.6 211.55C599.6 231.294 615.606 247.3 635.35 247.3Z" fill="url(#paint1_linear_1_187)"/>
<g opacity="0.7">
<path opacity="0.6" d="M581.565 184.519C584.619 182.631 585.563 178.626 583.675 175.572C581.787 172.519 577.782 171.574 574.728 173.462C571.675 175.35 570.73 179.356 572.618 182.409C574.506 185.463 578.512 186.407 581.565 184.519Z" fill="url(#paint2_linear_1_187)"/>
<path opacity="0.6" d="M602.829 171.371C605.882 169.483 606.827 165.478 604.939 162.424C603.051 159.371 599.045 158.426 595.992 160.314C592.939 162.202 591.994 166.208 593.882 169.261C595.77 172.315 599.776 173.259 602.829 171.371Z" fill="url(#paint3_linear_1_187)"/>
<path opacity="0.6" d="M624.092 158.223C627.146 156.335 628.09 152.33 626.202 149.276C624.314 146.223 620.309 145.278 617.255 147.166C614.202 149.054 613.257 153.06 615.145 156.113C617.033 159.167 621.039 160.111 624.092 158.223Z" fill="url(#paint4_linear_1_187)"/>
<path opacity="0.6" d="M645.355 145.075C648.409 143.187 649.353 139.182 647.465 136.128C645.577 133.075 641.572 132.13 638.518 134.018C635.465 135.906 634.52 139.912 636.408 142.965C638.296 146.019 642.302 146.963 645.355 145.075Z" fill="url(#paint5_linear_1_187)"/>
</g>
</g>
<path d="M595.647 178.8V141.709H601.244V159.422H601.696L617.253 141.709H624.299L609.339 158.407L624.353 178.8H617.616L605.626 162.229L601.244 167.263V178.8H595.647Z" fill="white"/>
</g>
<g clip-path="url(#clip2_1_187)">
<rect x="279.5" y="111" width="100" height="100" rx="50" fill="white"/>
<g clip-path="url(#clip3_1_187)">
<path d="M379.5 111H279.5V211H379.5V111Z" fill="white"/>
<path d="M379.5 111H279.5V211H379.5V111Z" fill="#2C2C2C"/>
<path d="M306.45 146.8C326.194 146.8 342.2 130.794 342.2 111.05C342.2 91.3058 326.194 75.3 306.45 75.3C286.706 75.3 270.7 91.3058 270.7 111.05C270.7 130.794 286.706 146.8 306.45 146.8Z" fill="url(#paint6_linear_1_187)"/>
<path d="M354.85 246.8C374.594 246.8 390.6 230.794 390.6 211.05C390.6 191.306 374.594 175.3 354.85 175.3C335.106 175.3 319.1 191.306 319.1 211.05C319.1 230.794 335.106 246.8 354.85 246.8Z" fill="url(#paint7_linear_1_187)"/>
<g opacity="0.7">
<path opacity="0.6" d="M301.065 184.019C304.119 182.131 305.063 178.126 303.175 175.072C301.287 172.019 297.282 171.074 294.228 172.962C291.175 174.85 290.23 178.856 292.118 181.909C294.006 184.963 298.012 185.907 301.065 184.019Z" fill="url(#paint8_linear_1_187)"/>
<path opacity="0.6" d="M322.329 170.871C325.382 168.983 326.327 164.978 324.439 161.924C322.551 158.871 318.545 157.926 315.492 159.814C312.439 161.702 311.494 165.708 313.382 168.761C315.27 171.815 319.276 172.759 322.329 170.871Z" fill="url(#paint9_linear_1_187)"/>
<path opacity="0.6" d="M343.592 157.723C346.646 155.835 347.59 151.83 345.702 148.776C343.814 145.723 339.809 144.778 336.755 146.666C333.702 148.554 332.757 152.56 334.645 155.613C336.533 158.667 340.539 159.611 343.592 157.723Z" fill="url(#paint10_linear_1_187)"/>
<path opacity="0.6" d="M364.855 144.575C367.909 142.687 368.853 138.682 366.965 135.628C365.077 132.575 361.072 131.63 358.018 133.518C354.965 135.406 354.02 139.412 355.908 142.465C357.796 145.519 361.802 146.463 364.855 144.575Z" fill="url(#paint11_linear_1_187)"/>
</g>
</g>
<path d="M318.81 178.3H312.87L326.217 141.209H332.683L346.03 178.3H340.09L329.604 147.946H329.314L318.81 178.3ZM319.806 163.775H339.076V168.484H319.806V163.775Z" fill="white"/>
</g>
<g clip-path="url(#clip4_1_187)">
<rect x="426.5" y="112" width="100" height="100" rx="50" fill="white"/>
<g clip-path="url(#clip5_1_187)">
<path d="M526.5 112H426.5V212H526.5V112Z" fill="white"/>
<path d="M526.5 112H426.5V212H526.5V112Z" fill="#2C2C2C"/>
<path d="M453.45 147.8C473.194 147.8 489.2 131.794 489.2 112.05C489.2 92.3058 473.194 76.3 453.45 76.3C433.706 76.3 417.7 92.3058 417.7 112.05C417.7 131.794 433.706 147.8 453.45 147.8Z" fill="url(#paint12_linear_1_187)"/>
<path d="M501.85 247.8C521.594 247.8 537.6 231.794 537.6 212.05C537.6 192.306 521.594 176.3 501.85 176.3C482.106 176.3 466.1 192.306 466.1 212.05C466.1 231.794 482.106 247.8 501.85 247.8Z" fill="url(#paint13_linear_1_187)"/>
<g opacity="0.7">
<path opacity="0.6" d="M448.065 185.019C451.119 183.131 452.063 179.126 450.175 176.072C448.287 173.019 444.282 172.074 441.228 173.962C438.175 175.85 437.23 179.856 439.118 182.909C441.006 185.963 445.012 186.907 448.065 185.019Z" fill="url(#paint14_linear_1_187)"/>
<path opacity="0.6" d="M469.329 171.871C472.382 169.983 473.327 165.978 471.439 162.924C469.551 159.871 465.545 158.926 462.492 160.814C459.439 162.702 458.494 166.708 460.382 169.761C462.27 172.815 466.276 173.759 469.329 171.871Z" fill="url(#paint15_linear_1_187)"/>
<path opacity="0.6" d="M490.592 158.723C493.646 156.835 494.59 152.83 492.702 149.776C490.814 146.723 486.809 145.778 483.755 147.666C480.702 149.554 479.757 153.56 481.645 156.613C483.533 159.667 487.539 160.611 490.592 158.723Z" fill="url(#paint16_linear_1_187)"/>
<path opacity="0.6" d="M511.855 145.575C514.909 143.687 515.853 139.682 513.965 136.628C512.077 133.575 508.072 132.63 505.018 134.518C501.965 136.406 501.02 140.412 502.908 143.465C504.796 146.519 508.802 147.463 511.855 145.575Z" fill="url(#paint17_linear_1_187)"/>
</g>
</g>
<path d="M492.501 154.271H486.85C486.633 153.063 486.228 152.001 485.637 151.083C485.045 150.166 484.321 149.387 483.464 148.747C482.606 148.107 481.646 147.624 480.584 147.298C479.533 146.972 478.417 146.809 477.233 146.809C475.096 146.809 473.183 147.346 471.492 148.421C469.814 149.496 468.486 151.071 467.508 153.148C466.542 155.225 466.059 157.76 466.059 160.754C466.059 163.773 466.542 166.321 467.508 168.397C468.486 170.474 469.82 172.044 471.51 173.106C473.201 174.169 475.102 174.7 477.215 174.7C478.386 174.7 479.497 174.543 480.548 174.229C481.61 173.903 482.57 173.426 483.427 172.798C484.285 172.17 485.009 171.404 485.601 170.498C486.204 169.58 486.621 168.53 486.85 167.347L492.501 167.365C492.199 169.188 491.613 170.866 490.744 172.4C489.887 173.921 488.782 175.237 487.43 176.348C486.09 177.447 484.556 178.298 482.83 178.901C481.103 179.505 479.22 179.807 477.179 179.807C473.967 179.807 471.106 179.046 468.595 177.525C466.083 175.992 464.103 173.8 462.654 170.951C461.217 168.101 460.499 164.703 460.499 160.754C460.499 156.794 461.223 153.395 462.672 150.558C464.121 147.709 466.101 145.523 468.613 144.002C471.124 142.469 473.98 141.702 477.179 141.702C479.147 141.702 480.982 141.986 482.685 142.553C484.399 143.109 485.939 143.93 487.303 145.016C488.667 146.091 489.796 147.407 490.69 148.964C491.583 150.51 492.187 152.279 492.501 154.271Z" fill="white"/>
</g>
<g clip-path="url(#clip6_1_187)">
<rect x="140" y="111.5" width="100" height="100" rx="50" fill="white"/>
<g clip-path="url(#clip7_1_187)">
<path d="M240 111.5H140V211.5H240V111.5Z" fill="white"/>
<path d="M240 111.5H140V211.5H240V111.5Z" fill="#2C2C2C"/>
<path d="M166.95 147.3C186.694 147.3 202.7 131.294 202.7 111.55C202.7 91.8058 186.694 75.8 166.95 75.8C147.206 75.8 131.2 91.8058 131.2 111.55C131.2 131.294 147.206 147.3 166.95 147.3Z" fill="url(#paint18_linear_1_187)"/>
<path d="M215.35 247.3C235.094 247.3 251.1 231.294 251.1 211.55C251.1 191.806 235.094 175.8 215.35 175.8C195.606 175.8 179.6 191.806 179.6 211.55C179.6 231.294 195.606 247.3 215.35 247.3Z" fill="url(#paint19_linear_1_187)"/>
<g opacity="0.7">
<path opacity="0.6" d="M161.565 184.519C164.619 182.631 165.563 178.626 163.675 175.572C161.787 172.519 157.782 171.574 154.728 173.462C151.675 175.35 150.73 179.356 152.618 182.409C154.506 185.463 158.512 186.407 161.565 184.519Z" fill="url(#paint20_linear_1_187)"/>
<path opacity="0.6" d="M182.829 171.371C185.882 169.483 186.827 165.478 184.939 162.424C183.051 159.371 179.045 158.426 175.992 160.314C172.939 162.202 171.994 166.208 173.882 169.261C175.77 172.315 179.776 173.259 182.829 171.371Z" fill="url(#paint21_linear_1_187)"/>
<path opacity="0.6" d="M204.092 158.223C207.146 156.335 208.09 152.33 206.202 149.276C204.314 146.223 200.309 145.278 197.255 147.166C194.202 149.054 193.257 153.06 195.145 156.113C197.033 159.167 201.039 160.111 204.092 158.223Z" fill="url(#paint22_linear_1_187)"/>
<path opacity="0.6" d="M225.355 145.075C228.409 143.187 229.353 139.182 227.465 136.128C225.577 133.075 221.572 132.13 218.518 134.018C215.465 135.906 214.52 139.912 216.408 142.965C218.296 146.019 222.302 146.963 225.355 145.075Z" fill="url(#paint23_linear_1_187)"/>
</g>
</g>
<path d="M178.798 178.8V141.709H184.395V173.983H201.202V178.8H178.798Z" fill="white"/>
</g>
<g clip-path="url(#clip8_1_187)">
<rect y="111.5" width="100" height="100" rx="50" fill="white"/>
<g clip-path="url(#clip9_1_187)">
<path d="M100 111.5H0V211.5H100V111.5Z" fill="white"/>
<path d="M100 111.5H0V211.5H100V111.5Z" fill="#2C2C2C"/>
<path d="M26.95 147.3C46.6941 147.3 62.7 131.294 62.7 111.55C62.7 91.8058 46.6941 75.8 26.95 75.8C7.20577 75.8 -8.80005 91.8058 -8.80005 111.55C-8.80005 131.294 7.20577 147.3 26.95 147.3Z" fill="url(#paint24_linear_1_187)"/>
<path d="M75.35 247.3C95.0942 247.3 111.1 231.294 111.1 211.55C111.1 191.806 95.0942 175.8 75.35 175.8C55.6058 175.8 39.6 191.806 39.6 211.55C39.6 231.294 55.6058 247.3 75.35 247.3Z" fill="url(#paint25_linear_1_187)"/>
<g opacity="0.7">
<path opacity="0.6" d="M21.5654 184.519C24.6187 182.631 25.5633 178.626 23.6754 175.572C21.7874 172.519 17.7817 171.574 14.7284 173.462C11.6751 175.35 10.7305 179.356 12.6184 182.409C14.5064 185.463 18.5121 186.407 21.5654 184.519Z" fill="url(#paint26_linear_1_187)"/>
<path opacity="0.6" d="M42.8288 171.371C45.8821 169.483 46.8268 165.478 44.9388 162.424C43.0508 159.371 39.0451 158.426 35.9919 160.314C32.9386 162.202 31.9939 166.208 33.8818 169.261C35.7698 172.315 39.7755 173.259 42.8288 171.371Z" fill="url(#paint27_linear_1_187)"/>
<path opacity="0.6" d="M64.0922 158.223C67.1455 156.335 68.0902 152.33 66.2022 149.276C64.3143 146.223 60.3086 145.278 57.2553 147.166C54.202 149.054 53.2573 153.06 55.1453 156.113C57.0332 159.167 61.0389 160.111 64.0922 158.223Z" fill="url(#paint28_linear_1_187)"/>
<path opacity="0.6" d="M85.3554 145.075C88.4087 143.187 89.3534 139.182 87.4654 136.128C85.5774 133.075 81.5718 132.13 78.5185 134.018C75.4652 135.906 74.5205 139.912 76.4085 142.965C78.2964 146.019 82.3021 146.963 85.3554 145.075Z" fill="url(#paint29_linear_1_187)"/>
</g>
</g>
<path d="M36.6342 178.8V141.709H50.2173C52.8494 141.709 55.0287 142.144 56.7553 143.013C58.4819 143.87 59.7738 145.036 60.631 146.509C61.4883 147.969 61.9169 149.618 61.9169 151.453C61.9169 152.998 61.6332 154.302 61.0657 155.365C60.4982 156.415 59.7376 157.26 58.7837 157.9C57.842 158.528 56.8036 158.987 55.6687 159.277V159.639C56.9002 159.699 58.1015 160.098 59.2727 160.834C60.4559 161.559 61.4339 162.591 62.2067 163.931C62.9794 165.271 63.3657 166.901 63.3657 168.821C63.3657 170.717 62.919 172.419 62.0255 173.928C61.1442 175.425 59.7798 176.615 57.9325 177.496C56.0852 178.365 53.7248 178.8 50.8512 178.8H36.6342ZM42.2305 174.001H50.3079C52.9883 174.001 54.908 173.482 56.0671 172.443C57.2262 171.405 57.8057 170.107 57.8057 168.549C57.8057 167.378 57.5099 166.304 56.9183 165.326C56.3267 164.348 55.4815 163.569 54.3828 162.989C53.2961 162.41 52.0042 162.12 50.5071 162.12H42.2305V174.001ZM42.2305 157.755H49.7283C50.984 157.755 52.1129 157.514 53.115 157.031C54.1292 156.548 54.9322 155.872 55.5238 155.002C56.1275 154.121 56.4293 153.083 56.4293 151.887C56.4293 150.354 55.892 149.068 54.8175 148.03C53.7429 146.991 52.0948 146.472 49.8732 146.472H42.2305V157.755Z" fill="white"/>
</g>
<path d="M909.896 162.38C941.046 149.48 972.216 136.57 1003.96 123.44C1001.52 117.84 999.626 112.85 997.246 108.1C979.326 72.52 940.786 59.95 907.476 79.36C885.626 92.1 875.876 112.44 874.476 137.1C871.566 190.44 922.306 226.59 971.346 206.16C984.226 200.79 994.346 191.95 1002.45 180.37L978.446 164.47C958.706 193.77 919.456 187.12 909.896 162.38ZM932.596 99.15C946.696 95.15 961.266 100.73 967.176 112.85L904.646 138.85C903.096 121.03 915.296 104.05 932.596 99.15Z" fill="#DB4437"/>
<path d="M808.796 75.1901H779.706C779.546 78.7501 779.406 82.09 779.226 86.05L773.086 81.39L766.086 76.71C752.926 69.38 739.016 68.91 724.916 72.88C698.026 80.44 677.266 104.58 674.486 132.18C671.396 162.75 683.046 186.67 709.306 202.75C730.756 215.88 760.096 215.47 778.106 196.75C778.256 196.6 778.696 196.75 779.106 196.75C779.106 202.55 779.606 208.37 779.016 214.07C777.266 230.84 768.306 241.7 753.546 245.71C737.796 249.99 722.066 244.87 712.476 232.15C710.186 229.15 708.346 225.76 706.076 222.15L679.636 233.15C694.536 268.89 733.536 283.71 769.046 270.15L785.606 260.58C785.657 260.593 785.711 260.595 785.763 260.587C785.816 260.578 785.865 260.558 785.91 260.529C785.954 260.5 785.992 260.462 786.02 260.417C786.049 260.373 786.068 260.322 786.076 260.27L786.996 259.42L787.996 258.42L791.376 254.89L791.326 254.77C793.866 251.54 796.816 248.55 798.856 245.03C806.226 232.32 808.976 218.36 808.986 203.79C808.986 162.15 808.986 120.507 808.986 78.86C809.016 77.76 808.886 76.6201 808.796 75.1901ZM777.856 160.56C771.076 176.92 756.426 185.32 739.236 183.49C723.416 181.81 709.636 168.74 706.066 151.85C705.316 148.3 705.066 144.63 704.796 142.27C705.386 125.56 710.976 112.76 724.296 104.22C728.236 101.622 732.653 99.8328 737.29 98.9575C741.928 98.0822 746.693 98.1381 751.309 99.1217C755.924 100.105 760.298 101.997 764.176 104.687C768.054 107.377 771.358 110.811 773.896 114.79C783.246 129.23 784.396 144.77 777.856 160.56V160.56Z" fill="#4285F4"/>
<path d="M829.916 0V207.18H860.416V0H829.916Z" fill="#0F9D58"/>
<defs>
<linearGradient id="paint0_linear_1_187" x1="587" y1="107" x2="601.65" y2="142.75" gradientUnits="userSpaceOnUse">
<stop stop-color="#95F3FF"/>
<stop offset="1" stop-color="#95F3FF" stop-opacity="0"/>
</linearGradient>
<linearGradient id="paint1_linear_1_187" x1="617.3" y1="177.5" x2="639.7" y2="216.25" gradientUnits="userSpaceOnUse">
<stop stop-color="#EFFFF9" stop-opacity="0"/>
<stop offset="1" stop-color="#EFFFF9"/>
</linearGradient>
<linearGradient id="paint2_linear_1_187" x1="578.906" y1="170.88" x2="578.154" y2="182.298" gradientUnits="userSpaceOnUse">
<stop stop-color="#EFFFF9" stop-opacity="0"/>
<stop offset="1" stop-color="#EFFFF9"/>
</linearGradient>
<linearGradient id="paint3_linear_1_187" x1="600.169" y1="157.732" x2="599.417" y2="169.15" gradientUnits="userSpaceOnUse">
<stop stop-color="#EFFFF9" stop-opacity="0"/>
<stop offset="1" stop-color="#EFFFF9"/>
</linearGradient>
<linearGradient id="paint4_linear_1_187" x1="621.432" y1="144.584" x2="620.681" y2="156.002" gradientUnits="userSpaceOnUse">
<stop stop-color="#EFFFF9" stop-opacity="0"/>
<stop offset="1" stop-color="#EFFFF9"/>
</linearGradient>
<linearGradient id="paint5_linear_1_187" x1="642.696" y1="131.436" x2="641.944" y2="142.854" gradientUnits="userSpaceOnUse">
<stop stop-color="#EFFFF9" stop-opacity="0"/>
<stop offset="1" stop-color="#EFFFF9"/>
</linearGradient>
<linearGradient id="paint6_linear_1_187" x1="306.5" y1="106.5" x2="321.15" y2="142.25" gradientUnits="userSpaceOnUse">
<stop stop-color="#95F3FF"/>
<stop offset="1" stop-color="#95F3FF" stop-opacity="0"/>
</linearGradient>
<linearGradient id="paint7_linear_1_187" x1="336.8" y1="177" x2="359.2" y2="215.75" gradientUnits="userSpaceOnUse">
<stop stop-color="#EFFFF9" stop-opacity="0"/>
<stop offset="1" stop-color="#EFFFF9"/>
</linearGradient>
<linearGradient id="paint8_linear_1_187" x1="298.406" y1="170.38" x2="297.654" y2="181.798" gradientUnits="userSpaceOnUse">
<stop stop-color="#EFFFF9" stop-opacity="0"/>
<stop offset="1" stop-color="#EFFFF9"/>
</linearGradient>
<linearGradient id="paint9_linear_1_187" x1="319.669" y1="157.232" x2="318.917" y2="168.65" gradientUnits="userSpaceOnUse">
<stop stop-color="#EFFFF9" stop-opacity="0"/>
<stop offset="1" stop-color="#EFFFF9"/>
</linearGradient>
<linearGradient id="paint10_linear_1_187" x1="340.932" y1="144.084" x2="340.181" y2="155.502" gradientUnits="userSpaceOnUse">
<stop stop-color="#EFFFF9" stop-opacity="0"/>
<stop offset="1" stop-color="#EFFFF9"/>
</linearGradient>
<linearGradient id="paint11_linear_1_187" x1="362.196" y1="130.936" x2="361.444" y2="142.354" gradientUnits="userSpaceOnUse">
<stop stop-color="#EFFFF9" stop-opacity="0"/>
<stop offset="1" stop-color="#EFFFF9"/>
</linearGradient>
<linearGradient id="paint12_linear_1_187" x1="453.5" y1="107.5" x2="468.15" y2="143.25" gradientUnits="userSpaceOnUse">
<stop stop-color="#95F3FF"/>
<stop offset="1" stop-color="#95F3FF" stop-opacity="0"/>
</linearGradient>
<linearGradient id="paint13_linear_1_187" x1="483.8" y1="178" x2="506.2" y2="216.75" gradientUnits="userSpaceOnUse">
<stop stop-color="#EFFFF9" stop-opacity="0"/>
<stop offset="1" stop-color="#EFFFF9"/>
</linearGradient>
<linearGradient id="paint14_linear_1_187" x1="445.406" y1="171.38" x2="444.654" y2="182.798" gradientUnits="userSpaceOnUse">
<stop stop-color="#EFFFF9" stop-opacity="0"/>
<stop offset="1" stop-color="#EFFFF9"/>
</linearGradient>
<linearGradient id="paint15_linear_1_187" x1="466.669" y1="158.232" x2="465.917" y2="169.65" gradientUnits="userSpaceOnUse">
<stop stop-color="#EFFFF9" stop-opacity="0"/>
<stop offset="1" stop-color="#EFFFF9"/>
</linearGradient>
<linearGradient id="paint16_linear_1_187" x1="487.932" y1="145.084" x2="487.181" y2="156.502" gradientUnits="userSpaceOnUse">
<stop stop-color="#EFFFF9" stop-opacity="0"/>
<stop offset="1" stop-color="#EFFFF9"/>
</linearGradient>
<linearGradient id="paint17_linear_1_187" x1="509.196" y1="131.936" x2="508.444" y2="143.354" gradientUnits="userSpaceOnUse">
<stop stop-color="#EFFFF9" stop-opacity="0"/>
<stop offset="1" stop-color="#EFFFF9"/>
</linearGradient>
<linearGradient id="paint18_linear_1_187" x1="167" y1="107" x2="181.65" y2="142.75" gradientUnits="userSpaceOnUse">
<stop stop-color="#95F3FF"/>
<stop offset="1" stop-color="#95F3FF" stop-opacity="0"/>
</linearGradient>
<linearGradient id="paint19_linear_1_187" x1="197.3" y1="177.5" x2="219.7" y2="216.25" gradientUnits="userSpaceOnUse">
<stop stop-color="#EFFFF9" stop-opacity="0"/>
<stop offset="1" stop-color="#EFFFF9"/>
</linearGradient>
<linearGradient id="paint20_linear_1_187" x1="158.906" y1="170.88" x2="158.154" y2="182.298" gradientUnits="userSpaceOnUse">
<stop stop-color="#EFFFF9" stop-opacity="0"/>
<stop offset="1" stop-color="#EFFFF9"/>
</linearGradient>
<linearGradient id="paint21_linear_1_187" x1="180.169" y1="157.732" x2="179.417" y2="169.15" gradientUnits="userSpaceOnUse">
<stop stop-color="#EFFFF9" stop-opacity="0"/>
<stop offset="1" stop-color="#EFFFF9"/>
</linearGradient>
<linearGradient id="paint22_linear_1_187" x1="201.432" y1="144.584" x2="200.681" y2="156.002" gradientUnits="userSpaceOnUse">
<stop stop-color="#EFFFF9" stop-opacity="0"/>
<stop offset="1" stop-color="#EFFFF9"/>
</linearGradient>
<linearGradient id="paint23_linear_1_187" x1="222.696" y1="131.436" x2="221.944" y2="142.854" gradientUnits="userSpaceOnUse">
<stop stop-color="#EFFFF9" stop-opacity="0"/>
<stop offset="1" stop-color="#EFFFF9"/>
</linearGradient>
<linearGradient id="paint24_linear_1_187" x1="27" y1="107" x2="41.65" y2="142.75" gradientUnits="userSpaceOnUse">
<stop stop-color="#95F3FF"/>
<stop offset="1" stop-color="#95F3FF" stop-opacity="0"/>
</linearGradient>
<linearGradient id="paint25_linear_1_187" x1="57.3" y1="177.5" x2="79.7" y2="216.25" gradientUnits="userSpaceOnUse">
<stop stop-color="#EFFFF9" stop-opacity="0"/>
<stop offset="1" stop-color="#EFFFF9"/>
</linearGradient>
<linearGradient id="paint26_linear_1_187" x1="18.9056" y1="170.88" x2="18.154" y2="182.298" gradientUnits="userSpaceOnUse">
<stop stop-color="#EFFFF9" stop-opacity="0"/>
<stop offset="1" stop-color="#EFFFF9"/>
</linearGradient>
<linearGradient id="paint27_linear_1_187" x1="40.1689" y1="157.732" x2="39.4174" y2="169.15" gradientUnits="userSpaceOnUse">
<stop stop-color="#EFFFF9" stop-opacity="0"/>
<stop offset="1" stop-color="#EFFFF9"/>
</linearGradient>
<linearGradient id="paint28_linear_1_187" x1="61.4323" y1="144.584" x2="60.6809" y2="156.002" gradientUnits="userSpaceOnUse">
<stop stop-color="#EFFFF9" stop-opacity="0"/>
<stop offset="1" stop-color="#EFFFF9"/>
</linearGradient>
<linearGradient id="paint29_linear_1_187" x1="82.6956" y1="131.436" x2="81.9441" y2="142.854" gradientUnits="userSpaceOnUse">
<stop stop-color="#EFFFF9" stop-opacity="0"/>
<stop offset="1" stop-color="#EFFFF9"/>
</linearGradient>
<clipPath id="clip0_1_187">
<rect x="560" y="111.5" width="100" height="100" rx="50" fill="white"/>
</clipPath>
<clipPath id="clip1_1_187">
<rect width="100" height="100" fill="white" transform="translate(560 111.5)"/>
</clipPath>
<clipPath id="clip2_1_187">
<rect x="279.5" y="111" width="100" height="100" rx="50" fill="white"/>
</clipPath>
<clipPath id="clip3_1_187">
<rect width="100" height="100" fill="white" transform="translate(279.5 111)"/>
</clipPath>
<clipPath id="clip4_1_187">
<rect x="426.5" y="112" width="100" height="100" rx="50" fill="white"/>
</clipPath>
<clipPath id="clip5_1_187">
<rect width="100" height="100" fill="white" transform="translate(426.5 112)"/>
</clipPath>
<clipPath id="clip6_1_187">
<rect x="140" y="111.5" width="100" height="100" rx="50" fill="white"/>
</clipPath>
<clipPath id="clip7_1_187">
<rect width="100" height="100" fill="white" transform="translate(140 111.5)"/>
</clipPath>
<clipPath id="clip8_1_187">
<rect y="111.5" width="100" height="100" rx="50" fill="white"/>
</clipPath>
<clipPath id="clip9_1_187">
<rect width="100" height="100" fill="white" transform="translate(0 111.5)"/>
</clipPath>
</defs>
</svg>

</div>
</form>
</body>
</html>