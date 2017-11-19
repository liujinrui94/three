.class final Lcn/bmob/v3/http/This$4;
.super Ljava/lang/Object;
.source "BmobClient.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/http/This;->I(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Lcom/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic Code:Ljava/lang/String;

.field private synthetic I:Lcn/bmob/v3/http/This;

.field private synthetic V:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcn/bmob/v3/http/This;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcn/bmob/v3/http/This$4;->I:Lcn/bmob/v3/http/This;

    iput-object p2, p0, Lcn/bmob/v3/http/This$4;->Code:Ljava/lang/String;

    iput-object p3, p0, Lcn/bmob/v3/http/This$4;->V:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/16 v4, 0xc8

    .line 205
    check-cast p1, Lrx/Subscriber;

    .line 1209
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1210
    const-string v0, "bmob"

    const-string v1, "createObservable:subcriber is cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    :goto_0
    return-void

    .line 1214
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/bmob/v3/http/This$4;->Code:Ljava/lang/String;

    iget-object v1, p0, Lcn/bmob/v3/http/This$4;->V:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcn/bmob/v3/http/This;->V(Ljava/lang/String;Lorg/json/JSONObject;)Lokhttp3/Request;

    move-result-object v0

    .line 1215
    iget-object v1, p0, Lcn/bmob/v3/http/This$4;->I:Lcn/bmob/v3/http/This;

    invoke-static {v1}, Lcn/bmob/v3/http/This;->V(Lcn/bmob/v3/http/This;)Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 1216
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    .line 1217
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    .line 1218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",content:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/v3/b/This;->V(Ljava/lang/String;)V

    .line 1219
    if-ne v4, v1, :cond_4

    .line 1220
    iget-object v0, p0, Lcn/bmob/v3/http/This$4;->Code:Ljava/lang/String;

    const-string v1, "http://open.bmob.cn/8/delcdnbatch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1221
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    .line 1222
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 1224
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 1226
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1245
    :catch_0
    move-exception v0

    .line 1246
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1247
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1228
    :cond_1
    :try_start_1
    const-class v0, Lcn/bmob/v3/http/bean/Api;

    invoke-static {v2, v0}, Lcn/bmob/v3/helper/GsonUtil;->toObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/bmob/v3/http/bean/Api;

    .line 1229
    invoke-virtual {v0}, Lcn/bmob/v3/http/bean/Api;->getResult()Lcn/bmob/v3/http/bean/Result;

    move-result-object v1

    .line 1230
    if-eqz v1, :cond_3

    .line 1231
    invoke-virtual {v1}, Lcn/bmob/v3/http/bean/Result;->getCode()I

    move-result v2

    .line 1232
    if-eq v4, v2, :cond_2

    .line 1233
    new-instance v0, Lcn/bmob/v3/exception/BmobException;

    invoke-virtual {v1}, Lcn/bmob/v3/http/bean/Result;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcn/bmob/v3/exception/BmobException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1236
    :cond_2
    invoke-virtual {v0}, Lcn/bmob/v3/http/bean/Api;->getData()Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1239
    :cond_3
    new-instance v0, Lcn/bmob/v3/exception/BmobException;

    const/16 v1, 0x232a

    invoke-direct {v0, v1, v2}, Lcn/bmob/v3/exception/BmobException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1243
    :cond_4
    new-instance v0, Lcn/bmob/v3/exception/BmobException;

    invoke-direct {v0, v1, v2}, Lcn/bmob/v3/exception/BmobException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
