<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ include file="../common/header.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" reason="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" reason="ie=edge">
    <title>template</title>
    <%@ include file="../common/resources.jsp"%>
    <link rel="stylesheet" href="/static/css/user/user.css" />
</head>

<!-- 
    userServiceImpl.getPersonalProfile
 -->

<body>
<jsp:include page="../common/topNav.jsp"></jsp:include>
    <div class="container live-container">
        <div class="row">
            <div class="col-lg-offset-1 col-lg-10 col-md-offset-1 col-md-10">
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <div class="page-header">
                            <div>个人中心</div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-2 col-md-2">
                        <div class="user-side">
                            <ul class="user-side-ul">
                                <li>
                                    <a href="/person/" class="clicked">
                                        <i class="fa fa-vcard fa-fw"></i> &nbsp;个人资料
                                    </a>
                                </li>
                                <li>
                                    <a href="/person/following">
                                        <i class="fa fa-user-o fa-fw"></i> &nbsp;我的关注
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-tv fa-fw"></i> &nbsp;直播相关
                                        <i class="live-caret"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="/person/application" class="li-children">
                                        <i class="fa fa-fw"></i> &nbsp;直播申请
                                    </a>
                                </li>
                                <li>
                                    <a href="/person/liveSetting" class="li-children">
                                        <i class="fa fa-fw"></i> &nbsp;直播设置
                                    </a>
                                </li>
                                <li>
                                    <a href="/person/liveRecord" class="li-children">
                                        <i class="fa fa-fw"></i> &nbsp;直播记录
                                    </a>
                                </li>
                                <c:if test="${sessionScope.user.type == 2}">
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-tv fa-fw"></i> &nbsp;超管相关
                                            <i class="live-caret"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="/person/managerApplication" class="li-children">
                                            <i class="fa fa-fw"></i> &nbsp;申请管理
                                        </a>
                                    </li>
                                    <li>
                                        <a href="/person/managerRoomMute" class="li-children">
                                            <i class="fa fa-fw"></i> &nbsp;主播封禁
                                        </a>
                                    </li>
                                </c:if>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-10 col-md-10">
                        <div class="user-body">
                            <ol class="breadcrumb">
                                <i class="fa fa-vcard"></i> &nbsp;
                                <li class="active">个人资料</li>
                            </ol>
                            <div class="user-info">
                                <div class="user-info-pic">
                                    <img src="${personalProfileDTO.pic}" alt="">
                                    <br>
                                    <div class="user-info-pic-btn">
                                        <a href="changePic" class="btn btn-default">更换头像</a>
                                    </div>
                                </div>
                                <div class="user-info-name">
                                    <span class="user-name">${personalProfileDTO.nickName}</span>
                                    <a href="changeNickname" class="btn btn-default btn-sm" style="margin-left: 15px;">修改昵称</a>
                                </div>
                            </div>
                            <hr>
                            <div class="user-info-name">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="user-setting">
                                            <i class="fa fa-lock fa-5x"></i>
                                            <div class="user-setting-word">
                                                <h3>修改密码</h3>
                                                <span>定期修改密码以确保账号安全</span>
                                            </div>
                                            <a href="changePass" class="btn btn-default">修改密码</a>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <c:choose>
                                            <c:when test="${empty personalProfileDTO.isIdCardState()}">
                                                <div class="user-setting">
                                                    <i class="fa fa-user-o fa-5x"></i>
                                                    <div class="user-setting-word">
                                                        <h3>实名认证</h3>
                                                        <span>正在审核</span>
                                                    </div>
                                                </div>
                                            </c:when>
                                            <c:otherwise>
                                                <c:choose>
                                                    <c:when test="${personalProfileDTO.isIdCardState()}">
                                                        <div class="user-setting">
                                                            <i class="fa fa-user-o fa-5x"></i>
                                                            <div class="user-setting-word">
                                                                <h3>实名认证</h3>
                                                                <span>已认证</span>
                                                            </div>
                                                        </div>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <div class="user-setting">
                                                            <i class="fa fa-user-o fa-5x"></i>
                                                            <div class="user-setting-word">
                                                                <h3>实名认证</h3>
                                                                <span>认证后可进行直播</span>
                                                            </div>
                                                            <a href="application" class="btn btn-default">实名认证</a>
                                                        </div>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<%@ include file="../common/resources-foot.jsp" %>
<script type="text/javascript" src="/static/js/user/common.js"></script>
</html>
