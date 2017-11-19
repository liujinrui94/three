.class public Lcom/shishicai/app/service/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static client:Lcom/loopj/android/http/AsyncHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    sput-object v0, Lcom/shishicai/app/service/HttpUtils;->client:Lcom/loopj/android/http/AsyncHttpClient;

    .line 12
    sget-object v0, Lcom/shishicai/app/service/HttpUtils;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/16 v1, 0x2af8

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 1
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "res"    # Lcom/loopj/android/http/AsyncHttpResponseHandler;

    .prologue
    .line 19
    sget-object v0, Lcom/shishicai/app/service/HttpUtils;->client:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0, p0, p1}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 20
    return-void
.end method

.method public static get(Ljava/lang/String;Lcom/loopj/android/http/BinaryHttpResponseHandler;)V
    .locals 1
    .param p0, "uString"    # Ljava/lang/String;
    .param p1, "bHandler"    # Lcom/loopj/android/http/BinaryHttpResponseHandler;

    .prologue
    .line 47
    sget-object v0, Lcom/shishicai/app/service/HttpUtils;->client:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0, p0, p1}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 48
    return-void
.end method

.method public static get(Ljava/lang/String;Lcom/loopj/android/http/JsonHttpResponseHandler;)V
    .locals 1
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "res"    # Lcom/loopj/android/http/JsonHttpResponseHandler;

    .prologue
    .line 33
    sget-object v0, Lcom/shishicai/app/service/HttpUtils;->client:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0, p0, p1}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 34
    return-void
.end method

.method public static get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 1
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "params"    # Lcom/loopj/android/http/RequestParams;
    .param p2, "res"    # Lcom/loopj/android/http/AsyncHttpResponseHandler;

    .prologue
    .line 26
    sget-object v0, Lcom/shishicai/app/service/HttpUtils;->client:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0, p0, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 27
    return-void
.end method

.method public static get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/JsonHttpResponseHandler;)V
    .locals 1
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "params"    # Lcom/loopj/android/http/RequestParams;
    .param p2, "res"    # Lcom/loopj/android/http/JsonHttpResponseHandler;

    .prologue
    .line 40
    sget-object v0, Lcom/shishicai/app/service/HttpUtils;->client:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0, p0, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 41
    return-void
.end method

.method public static getClient()Lcom/loopj/android/http/AsyncHttpClient;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/shishicai/app/service/HttpUtils;->client:Lcom/loopj/android/http/AsyncHttpClient;

    return-object v0
.end method

.method public static post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 1
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "params"    # Lcom/loopj/android/http/RequestParams;
    .param p2, "res"    # Lcom/loopj/android/http/AsyncHttpResponseHandler;

    .prologue
    .line 59
    sget-object v0, Lcom/shishicai/app/service/HttpUtils;->client:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0, p0, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 60
    return-void
.end method

.method public static post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/JsonHttpResponseHandler;)V
    .locals 1
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "params"    # Lcom/loopj/android/http/RequestParams;
    .param p2, "res"    # Lcom/loopj/android/http/JsonHttpResponseHandler;

    .prologue
    .line 55
    sget-object v0, Lcom/shishicai/app/service/HttpUtils;->client:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0, p0, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 56
    return-void
.end method
