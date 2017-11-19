.class public Lcn/bmob/v3/BmobSMS;
.super Ljava/lang/Object;
.source "BmobSMS.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Code(Ljava/lang/Integer;Lcn/bmob/v3/listener/QueryListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcn/bmob/v3/listener/QueryListener",
            "<",
            "Lcn/bmob/v3/datatype/BmobSmsState;",
            ">;)",
            "Lcn/bmob/v3/http/acknowledge;"
        }
    .end annotation

    .prologue
    .line 174
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 176
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 177
    const-string v2, "smsId"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    const-string v2, "smsId is null"

    invoke-static {p0, v2}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/util/List;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    const-string v2, "http://open.bmob.cn/8/query_sms"

    invoke-virtual {v0, v2, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/lang/String;Lorg/json/JSONObject;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/BmobSMS$2;

    invoke-direct {v1}, Lcn/bmob/v3/BmobSMS$2;-><init>()V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Lrx/functions/Func1;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/bmob/v3/http/acknowledge$This;->V(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static Code(Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/QueryListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/listener/QueryListener",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcn/bmob/v3/http/acknowledge;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 100
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 101
    const-string v2, "mobilePhoneNumber"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string v2, "template"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    const-string v1, "phoneNumber can\'t be empty"

    const-string v2, "template can\'t be empty"

    invoke-static {p0, v1, p1, v2}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v2, "http://open.bmob.cn/8/request_sms_code"

    invoke-static {v1, v2, v0, p2}, Lcn/bmob/v3/BmobSMS;->Code(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/QueryListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static Code(Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 4

    .prologue
    .line 135
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 137
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 138
    const-string v2, "mobilePhoneNumber"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string v2, "smsCode"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    const-string v2, "phoneNumber can\'t be empty"

    const-string v3, "smsCode can\'t be empty"

    invoke-static {p0, v2, p1, v3}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/util/List;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    const-string v2, "http://open.bmob.cn/8/verify_sms_code"

    invoke-virtual {v0, v2, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/lang/String;Lorg/json/JSONObject;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->I()Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/bmob/v3/http/acknowledge$This;->V(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/QueryListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/listener/QueryListener",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcn/bmob/v3/http/acknowledge;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 58
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 59
    const-string v1, "mobilePhoneNumber"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v1, "sendTime"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v1, "data"

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    const-string v1, "phoneNumber can\'t be empty"

    const-string v3, "smsContent can\'t be empty"

    const-string v5, "sendTime can\'t be empty"

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "http://open.bmob.cn/8/request_sms"

    invoke-static {v0, v1, v6, p3}, Lcn/bmob/v3/BmobSMS;->Code(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/QueryListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static Code(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/QueryListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/http/bean/R1;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcn/bmob/v3/listener/QueryListener",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcn/bmob/v3/http/acknowledge;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    invoke-virtual {v0, p0}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/util/List;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/lang/String;Lorg/json/JSONObject;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/BmobSMS$1;

    invoke-direct {v1}, Lcn/bmob/v3/BmobSMS$1;-><init>()V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Lrx/functions/Func1;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcn/bmob/v3/http/acknowledge$This;->V(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0
.end method

.method public static querySmsState(Ljava/lang/Integer;Lcn/bmob/v3/listener/QueryListener;)Lrx/Subscription;
    .locals 1
    .param p0, "smsId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcn/bmob/v3/listener/QueryListener",
            "<",
            "Lcn/bmob/v3/datatype/BmobSmsState;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "listener":Lcn/bmob/v3/listener/QueryListener;, "Lcn/bmob/v3/listener/QueryListener<Lcn/bmob/v3/datatype/BmobSmsState;>;"
    invoke-static {p0, p1}, Lcn/bmob/v3/BmobSMS;->Code(Ljava/lang/Integer;Lcn/bmob/v3/listener/QueryListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public static querySmsStateObservable(Ljava/lang/Integer;)Lrx/Observable;
    .locals 1
    .param p0, "smsId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcn/bmob/v3/datatype/BmobSmsState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/bmob/v3/BmobSMS;->Code(Ljava/lang/Integer;Lcn/bmob/v3/listener/QueryListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static requestSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/QueryListener;)Lrx/Subscription;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "smsContent"    # Ljava/lang/String;
    .param p2, "sendTime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/listener/QueryListener",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 78
    .local p3, "listener":Lcn/bmob/v3/listener/QueryListener;, "Lcn/bmob/v3/listener/QueryListener<Ljava/lang/Integer;>;"
    invoke-static {p0, p1, p2, p3}, Lcn/bmob/v3/BmobSMS;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/QueryListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public static requestSMSCode(Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/QueryListener;)Lrx/Subscription;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "template"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/listener/QueryListener",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 116
    .local p2, "listener":Lcn/bmob/v3/listener/QueryListener;, "Lcn/bmob/v3/listener/QueryListener<Ljava/lang/Integer;>;"
    invoke-static {p0, p1, p2}, Lcn/bmob/v3/BmobSMS;->Code(Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/QueryListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public static requestSMSCodeObservable(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "template"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/bmob/v3/BmobSMS;->Code(Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/QueryListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static requestSMSObservable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "smsContent"    # Ljava/lang/String;
    .param p2, "sendTime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/bmob/v3/BmobSMS;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/QueryListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static verifySmsCode(Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lrx/Subscription;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "smsCode"    # Ljava/lang/String;
    .param p2, "listener"    # Lcn/bmob/v3/listener/UpdateListener;

    .prologue
    .line 156
    invoke-static {p0, p1, p2}, Lcn/bmob/v3/BmobSMS;->Code(Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public static verifySmsCodeObservable(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "smsCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/bmob/v3/BmobSMS;->Code(Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
