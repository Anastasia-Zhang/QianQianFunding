<!DOCTYPE html>
<html lang="en">
<!--[if IE 9 ]>
<html class="ie9"><![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>QianQian</title>

    <!-- Vendors -->
    <!--<link href="../css/examples.css">-->

    <!-- Animate CSS -->
    <link href="../css/animate.css" rel="stylesheet">


    <!-- Material Design Icons -->
    <link href="../css/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet">

    <!-- Malihu Scrollbar -->
    <link href="vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css"
          rel="stylesheet">

    <!-- Full Calendar -->
    <!--<link href="vendors/bower_components/fullcalendar/dist/fullcalendar.min.css" rel="stylesheet">-->

    <!-- Site CSS -->
    <link href="../css/app.css" rel="stylesheet">

    <!-- Page loader -->
    <script src="../js/page-loader.js"></script>
</head>

<body>
<!-- Page Loader -->
<div id="page-loader">
    <div class="preloader preloader--xl preloader--light">
        <svg viewBox="25 25 50 50">
            <circle cx="50" cy="50" r="20"/>
        </svg>
    </div>
</div>

<!-- Header -->
<header id="header">
    <div class="logo">
        <a href="/test" class="hidden-xs">
            QianQian
            <small>Funding System</small>
        </a>
        <i class="logo__trigger zmdi zmdi-menu" data-mae-action="block-open" data-mae-target="#navigation"></i>
    </div>


    <ul class="top-menu">
        <li class="top-menu__trigger hidden-lg hidden-md">
            <a href=""><i class="zmdi zmdi-search"></i></a>
        </li>
        <li>

            <button class="btn btn-success" style="height: 40px;margin-right: 30px"
                    onclick="location.href='project/raising'">RAISING FINANCE
            </button>

        </li>


        <li class="top-menu__alerts" data-mae-action="block-open" data-mae-target="#notifications" data-toggle="tab"
            data-target="#notifications__messagesm.">
            <a href=""><i class="zmdi zmdi-notifications"></i></a>
        </li>

        <li class="top-menu__profile dropdown">
            <a data-toggle="dropdown" href="">
                <img src="../img/profile-pics/1.jpg" alt="">
            </a>

            <ul class="dropdown-menu pull-right dropdown-menu--icon">

                <li>
                    <a href="/logout"><i class="zmdi zmdi-time-restore"></i> Logout</a>
                </li>
            </ul>
        </li>


    </ul>


    <form id="top-search" action="/project/topSearch" class="top-search">
        <input type="text" name="key" class="top-search__input" placeholder="Search for project">

        <i  id="seachButton" class="zmdi zmdi-search top-search__reset">
        </i>
    </form>
</header>

<section id="main" style="padding:  0 40px 20px 20px;">


    <section id="content" style="width: 100%">
        <div class="container">
            <div class="content__header">
                <h2>Risk Warning
                    <small>To help you understand the risks involved when investing in shares, mini-bonds and funds on
                        Crowdcube, please read the following risk summary. Please #investaware and diversify your
                        investments.
                    </small>
                </h2>
            </div>

            <div class="invoice">


                <div class="invoice__remarks">
                    <h4>The need for diversification when you invest</h4>
                    <p>Diversification involves spreading your money across different types of investments with
                        different risks to reduce your overall risk. However, it will not lessen all types of risk.
                        Diversification is an essential part of investing. Investors should only invest a proportion of
                        their available investment funds via Crowdcube and should balance this with safer, more liquid
                        investments. </p>

                    <h4 class="m-t-30">Risks when investing in equity or funds</h4>
                    <p>
                        Investing in shares (also known as equity) on Crowdcube does not involve a regular return on
                        your investment unlike mini-bonds which offer interest paid regularly.

                        Investing in a fund may help to diversify your investments and to spread the risk but general
                        risks while investing in equity continue to apply. Further specific risks are set out on the
                        applicable fund pitch page.

                        Please bear in mind the following particular risks for equity and fund investments:
                    </p>

                    <h4>Loss of investment or tax relief</h4>
                    <p>The majority of start-up businesses fail or do not scale as planned and therefore investing in
                        these businesses may involve significant risk. It is likely that you may lose all, or part, of
                        your investment. You should only invest an amount that you are willing to lose and should build
                        a diversified portfolio to spread risk and increase the chance of an overall return on your
                        investment capital. If a business you invest in fails, neither the company – nor Crowdcube –
                        will pay you back your investment.
                    </p>
                    <p>Tax relief may also be lost due to your personal circumstances or due to the activities of a
                        company.</p>

                    <h4>Lack of liquidity</h4>
                    <p>Liquidity is the ease with which you can sell your shares after you have purchased them. Buying
                        shares in businesses pitching through Crowdcube cannot be sold easily and they are unlikely to
                        be listed on a secondary trading market, such as AIM, Plus or the London Stock Exchange. Even
                        successful companies rarely list shares on such an exchange. In addition, if you purchase B
                        Investment Shares, these are non-voting shares and may not be attractive to potential buyers.

                    </p>

                    <h4>Rarity of dividends</h4>
                    <p>Dividends are payments made by a business to its shareholders from the company’s profits. Most of
                        the companies pitching for equity on the Crowdcube website are start-ups or early stage
                        companies, and these companies will rarely pay dividends to their investors. This means that you
                        are unlikely to see a return on your investment until you are able to sell your shares. Profits
                        are typically re-invested into the business to fuel growth and build shareholder value.
                        Businesses have no obligation to pay shareholder dividends.</p>

                    <h4>Dilution</h4>
                    <p>Any investment in shares made through Crowdcube may be subject to dilution in the future.
                        Dilution occurs when a company issues more shares. Dilution affects every existing shareholder
                        who does not buy any of the new shares being issued. As a result an existing shareholder's
                        proportionate shareholding of the company is reduced, or ‘diluted’-this has an effect on a
                        number of things, including voting, dividends and value.</p>

                    <p>
                        Some businesses who pitch for equity investment through Crowdcube offer A-Ordinary Shares, which
                        may include pre-emption rights that protect an investor from dilution. In this situation the
                        business must give shareholders with A-Ordinary Shares the opportunity to buy additional shares
                        during a subsequent fundraising round so that they can maintain or preserve their shareholding.
                        Please check a pitch, and the Articles of the company to see if the shares you are buying will
                        have these pre-emption rights. Most companies do not offer pre-emption rights for B Investment
                        Shares.
                    </p>


                    <h4>Risks when investing in Mini-bonds</h4>

                   <p> Mini-bonds are a very different kind of investment to equity and you do not own a stake in the
                    business issuing the mini-bond. Instead you receive regular interest payments from the issuing
                    company (the “Issuer”) and then return your initial investment back at the end of the mini-bonds
                    term (the maturity). Before investing, you must read and agree to the Bond Instrument for each
                    mini-bond as these contain the exact terms and conditions, including the interest payments and final
                    repayment time between investors and the company raising the money. It is important to understand
                    that Issuers are solely responsible for their financial status and consequently their ability to pay
                    interest and return investors’ capital when the mini-bonds mature. Crowdcube does not issue the
                    mini-bonds listed on the Crowdcube platform and is not responsible for their performance. Mini-bonds
                    represent a high degree of risk and you should be aware of some of the specific risks involved in
                    investing in them.</p>

                   <h4> Loss of investment and interest payments</h4>

                    <p> Issuers, like all businesses, are vulnerable to financial difficultly and investing in mini-bonds
                    may involve significant risk of default. In the event of an Issuer being unable or unwilling to meet
                    payments of interest and capital, it is likely that you may lose all, or part, of your initial
                        investment and receive no outstanding or future interest payments.</p>

                    <p>If a business you invest in fails, neither the company you invest in – nor Crowdcube – will pay you
                    back you investment. You should only invest an amount that you are willing to lose and should build
                    a diversified portfolio to spread risk.</p>

                    <p>Mini-bonds are not insured by a third party nor are they protected by any governmental authority
                    such as the Financial Services Compensation Scheme. This means that if the Issuer becomes insolvent,
                    investors could lose some or all of their money.</p>

                   <h4> Lack of liquidity</h4>

                    <p>Liquidity is the ease with which you can sell your investments to a third party after you have
                    purchased them. Mini-bonds purchased from Issuers pitching through Crowdcube may be transferrable if
                    specified in the Bond Instrument, however they will not be listed on any formal investment exchange
                    or secondary trading market such as the LSE ORB and so it may be difficult or impossible to find a
                    buyer to purchase them. Please refer to the individual mini-bond documentation for full details of
                    transferability. Investments in mini-bonds through Crowdcube should be viewed as a long term and
                    illiquid investment.</p>

                    <h4>Restricted redemption rights</h4>

                    <p>Issuers of the mini-bonds set the terms for redeeming your capital. Investors should be aware that
                    they will not be able to redeem their initial investment under any circumstances other than those
                    set out in the terms and conditions of the documentation of an individual mini-bond, meaning their
                    capital will be locked up for the entire term of the mini-bond, typically 3-5 years and should
                    therefore be viewed as a long term and illiquid investment.</p>

                    <h4>Unsecured investment</h4>

                    <p>Unless otherwise set out in the Bond Instrument, mini-bonds are typically an unsecured obligation of
                    the Issuer, meaning there is no security over the property or assets of the Issuer supporting the
                    repayment of your interest or capital. This means that if an Issuer fails, it is unlikely that an
                    investor will have their initial investment or outstanding interest payments returned to them
                    because there is no security over any remaining assets.</p>

                    <h4> Early Call Risk</h4>

                    <p>The Issuer has the right to repay you your money at any time prior to the formal repayment date.
                    Your investment may be materially curtailed because of this.</p>

                    <h4> Lower in the pecking order on winding up</h4>

                    <p>If an Issuer falls into financial difficulty and goes out of business, other creditors and debt
                    holders with seniority – including fixed charge holders, administrators, employees who are owed
                    wages, banks, and secured debtors - will be compensated first. This means it is unlikely mini-bond
                    investors, whose unsecured investment sits below all of the previously mentioned in the pecking
                    order, will have their initial investment or outstanding interest payments returned to them after
                    higher ranked creditors are compensated.</p>

                        <h4>Interest rate and inflation risks</h4>

                    <p>Mini-bonds pay interest at a fixed rate rather than by reference to an underlying index. Accordingly
                    you should note that a rise in interest rates may adversely affect the relative returns that
                    mini-bonds offer. Further, inflation may reduce the real value of the returns over time.</p>


                </div>


                <footer class="invoice__footer">
                    <a href="">support@qianqian.com</a>
                    <a href="">00971 452 9900</a>
                    <a href="">www.QainQian.com</a>
                </footer>
            </div>

        </div>

        <button class="btn btn--float btn--fixed hidden-xs hidden-sm" data-mae-action="print"><i
                class="zmdi zmdi-print"></i></button>
    </section>

    <footer id="footer">
        Copyright &copy; 2018 PiuPiuPiu

        <ul class="footer__menu">
            <li><a href="/test">Home</a></li>
            <li><a href="/warning">Risk Waring</a></li>
            <li><a href="/project/explore">Explore</a></li>
            <li><a href="/raisingIntro">Raising</a></li>
            <li><a href="/investIntro">Invest</a></li>
        </ul>
    </footer>

</section>


<!-- jQuery -->
<script src="../js/jquery.js"></script>


<!-- Bootstrap -->
<script src="../js/bootstrap.js"></script>

<!-- Simple File Input -->
<script src="../js/fileinput/fileinput.min.js"></script>

<!-- Malihu ScrollBar -->
<script src="../js/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>

<!-- Bootstrap Notify -->
<script src="vendors/bower_components/remarkable-bootstrap-notify/dist/bootstrap-notify.min.js"></script>

<!-- Moment -->
<script src="vendors/bower_components/moment/min/moment.min.js"></script>

<!-- FullCalendar -->
<script src="vendors/bower_components/fullcalendar/dist/fullcalendar.min.js"></script>


<!-- Salvattore -->
<script src="../js/salvattore.js"></script>


<!-- Demo Only -->
<script src="demo/js/flot-charts/curved-line.js"></script>
<script src="demo/js/flot-charts/line.js"></script>
<script src="demo/js/easy-pie-charts.js"></script>
<script src="demo/js/misc.js"></script>

<script src="demo/js/sparkline-charts.js"></script>

<!--<script src="demo/js/calendar.js"></script>-->

<!-- Site Functions & Actions -->
<script src="../js/app.js"></script>
<script src="../js/twitter-bootstrap-wizard/jquery.bootstrap.wizard.js"></script>
</body>
</html>
