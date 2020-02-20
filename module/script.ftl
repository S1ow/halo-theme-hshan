<#include "mathjax.ftl">
<#--<script src="${static!}/assets/media/scripts/plugins.js"></script>-->
<#--<script src="${static!}/assets/media/scripts/main.js"></script>-->
<script src="//cdn.jsdelivr.net/gh/hshanx/halo-theme-hshan@v1.3.0/assets/media/scripts/plugins.js"></script>
<script src="//cdn.jsdelivr.net/gh/hshanx/halo-theme-hshan@v1.3.0/assets/media/scripts/main.js"></script>

<!-- Md5 Min JS -->
<#--<script src="${static!}/assets/media/scripts/md5.min.js"></script>-->
<#-- 暗夜模式 -->
<#if settings.auto_night_mode!true>
    <script src="//cdn.jsdelivr.net/gh/hshanx/halo-theme-hshan@v1.3.0/assets/media/scripts/night-mode.js"></script>
<#--    <script src="${static!}/assets/media/scripts/night-mode.js"></script>-->
</#if>

<#if settings.visit_statistics!false>
    <script async src="//busuanzi.ibruce.info/busuanzi/2.3/busuanzi.pure.mini.js"></script>
</#if>

<script src="//cdn.jsdelivr.net/gh/hshanx/halo-theme-hshan@v.1.2.10/assets/prism/js/prism.js"></script>
<script src="//cdn.jsdelivr.net/gh/hshanx/halo-theme-hshan@v.1.2.10/assets/prism/js/prism-line-numbers.js"></script>
<!-- highlight -->
<#if post??>

    <div class="qr-code">
        <span class="closinglayer"><i class="fa fa-times"></i></span>
        <#if settings.QR_code_zfb??>
            <img class="qr_code_zfb" src="${settings.QR_code_zfb!}"/>
        </#if>
        <#if settings.QR_code_wx??>
            <img class="qr_code_wx" src="${settings.QR_code_wx!}"/>
        </#if>
        <#if settings.QR_code_zfb?? && settings.QR_code_wx??>
            <div class="switch-btn">
                <span class="zfb-btn">支付宝</span>
                <span class="wx-btn">微信</span>
            </div>
        </#if>
    </div>
</#if>

<#--目录-->
<#if is_post?? && settings.post_toc!true>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tocbot/4.4.2/tocbot.min.js"></script>
</#if>

<#if is_post??>
    <script type="application/javascript">
        var displayReadProgress = <#if (settings.open_read_progress)??>${settings.open_read_progress?c}<#else>true</#if>;
    </script>
    <script src="${static!}/assets/media/scripts/post.js"></script>
    <style>
        /* 阅读进度的进度条颜色 */
        #readProgress .read-progress-bar {
            background: ${settings.progress_color?default('#2474b5')} !important;
            height: 0.1875rem;
        }
    </style>
</#if>


<#if settings.TimeStatistics??>
    <script type="text/javascript">
        // 建站时间统计
        function show_date_time() {
            if ($("#span_dt_dt").length > 0) {
                window.setTimeout("show_date_time()", 1000);
                BirthDay = new Date("${settings.TimeStatistics!}");
                today = new Date();
                timeold = (today.getTime() - BirthDay.getTime());
                sectimeold = timeold / 1000;
                secondsold = Math.floor(sectimeold);
                msPerDay = 24 * 60 * 60 * 1000;
                e_daysold = timeold / msPerDay;
                daysold = Math.floor(e_daysold);
                e_hrsold = (e_daysold - daysold) * 24;
                hrsold = Math.floor(e_hrsold);
                e_minsold = (e_hrsold - hrsold) * 60;
                minsold = Math.floor((e_hrsold - hrsold) * 60);
                seconds = Math.floor((e_minsold - minsold) * 60);
                span_dt_dt.innerHTML = daysold + "天" + hrsold + "小时" + minsold + "分" + seconds + "秒";
            }
        }
        show_date_time();
    </script>
</#if>

<#if settings.Custom_js_foot??>
    <script type="text/javascript">
        ${settings.Custom_js_foot!}
    </script>
</#if>

<#if settings.Custom_js_foot_src??>
    ${settings.Custom_js_foot_src!}
</#if>

<script type="text/javascript">
    console.clear();
    console.log("%c 有朋自远方来, 不亦说乎.", "background:#24272A; color:#ffffff", "");
    console.log("%c Github %c", "background:#24272A; color:#ffffff", "", "https://github.com/hshanx");
</script>