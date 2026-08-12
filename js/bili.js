let body = $response.body;

if (body) {
    try {
        let obj = JSON.parse(body);

        if (obj.data && obj.data.vip) {
            obj.data.vip.type = 2;          // 伪装年度大会员
            obj.data.vip.status = 1;        // 状态为激活
            obj.data.vip.vip_pay_type = 1; 
            obj.data.vip.due_date = 4669824160; // 长期有效

            if (obj.data.vip_type !== undefined) {
                obj.data.vip_type = 2;
            }
        }
        body = JSON.stringify(obj);
    } catch (e) {
        console.log("脚本执行出错: " + e);
    }
}

$done({ body });