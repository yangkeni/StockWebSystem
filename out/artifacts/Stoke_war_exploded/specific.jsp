<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/11/9
  Time: 17:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <base target="_self" />
    <link href="${pageContext.request.contextPath}/img/favicon-ver1.1.ico" rel="shortcut icon">
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/specific.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index-specific.css">
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>

    <title>五粮液</title>
</head>
<body>
<div class="wrapper">
    <header>
        <div class="nav_header">
            <nav class="menu-wrap">
                <ul>
                    <li class="current-menu-item">
                        <a href="../html/index.html"><i class="fa fa-home"></i>  首页</a>
                    </li>
                    <li><a href="../html/news.html"><i class="fa fa-envelope"></i>  咨询速递</a></li>
                    <li><a href="https://github.com/yangkeni/StockWebUI" target="_blank"><i class="fa fa-github"></i>  我的github</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <div class="Content">
        <div class="container">
            <div class="StockHeader">
                <div class="title">
                    <a href="#">
                        <h3>六粮液</h3> (<span>ssss</span>)
                    </a>
                </div>
                <div class="mainData">
                    <div class="priceInfo">
                                <span class="price bigTheme">235.
                                    <span>00</span>
                                </span>
                        <i class="fa fa-2x"></i>
                        <span class="amount littleTheme">-1.
                                    <span>24</span>
                                </span>
                        <span class="range littleTheme">(-0.
                                    <span>52</span>%)
                                </span>
                    </div>
                    <div class="otherInfo">
                        <table cellspacing="0" cellpadding="0" class="yfw">
                            <tbody>
                            <tr>
                                <td class = "open">今开：</td>
                                <td>235.20</td>
                                <td class="high">最高：</td>
                                <td>239.78</td>
                                <td class="limitUp">涨停：</td>
                                <td class="color-red">259.86</td>
                                <td class="totalVolume">成交量：</td>
                                <td><span>19.63</span>手</td>
                            </tr>
                            <tr>
                                <td class="close">昨收：</td>
                                <td>236.24</td>
                                <td class="low">最低：</td>
                                <td>233.80</td>
                                <td class="limitDown">跌停：</td>
                                <td class="color-green">212.62</td>
                                <td class="turnover">成交额：</td>
                                <td><span>46.43</span>万</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="main">
                <div class="StockInfo">
                    <div class="tagChoice">
                        <ul>
                            <a href="javascipt:void(0)"><li class="CandlesTag currentLink">Candles</li></a>
                            <a href="javascipt:void(0)"><li class="VolumeTag">Volume</li></a>
                            <a href="javascipt:void(0)"><li class="AroonTag">Aroon</li></a>
                            <a href="javascipt:void(0)"><li class="MACDTag">MACD</li></a>
                            <a href="javascipt:void(0)"><li class="ACDTag">ACD</li></a>
                            <a href="javascipt:void(0)"><li class="WRTag">W%R</li></a>
                        </ul>
                    </div>
                    <div class="layout">
                        <script src="https://d3js.org/d3.v4.min.js"></script>
                        <script src="http://techanjs.org/techan.min.js"></script>
                    </div>
                </div>
                <div class="predict">
                    <article>
                        <div class="score">
                            <h3>
                                综合评分
                            </h3>
                            <span class="color-red ">
                                       78
                                    </span>
                            <div class="plus">
                                        <span >
                                            今日表现
                                            <span class="color-red">
                                                -3.20
                                            </span>
                                        </span>
                            </div>
                        </div>
                        <div class="probability">
                            <div class="bit">
                                <p>
                                    打败了&nbsp;<span class="color-red">93.55%</span>&nbsp;的股票
                                </p>
                            </div>
                            <p>近日消息面活跃，主力资金有大幅介入迹象，短期呈现震荡趋势。公司质地优秀，市场关注意愿无明显变化。

                            </p>
                        </div>
                    </article>
                </div>
                <div class="clear"></div>

            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/specific_init.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/Candles.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/Volume.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/Aroon.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/MACD.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/ADX.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/WR.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/layout.js"></script>
</body>
</html>
