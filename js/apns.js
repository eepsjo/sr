const url = "https://init-p01st.push.apple.com/bag?v=1";

$task.fetch({
    url: url,
    opts: {
        policy: "PROXY"
    }
}).then(response => {
    console.log("[APNs 续租成功] 状态码: " + response.statusCode);
    $notification.post("APNs 续租成功", "云端会话已刷新", "当前已伪装为海外IP环境");
}, reason => {
    console.log("[APNs 续租失败] 原因: " + reason.error);
    $done();
});