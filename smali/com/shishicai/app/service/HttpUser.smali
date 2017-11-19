.class public Lcom/shishicai/app/service/HttpUser;
.super Ljava/lang/Object;
.source "HttpUser.java"


# static fields
.field private static client:Lcom/loopj/android/http/AsyncHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    sput-object v0, Lcom/shishicai/app/service/HttpUser;->client:Lcom/loopj/android/http/AsyncHttpClient;

    .line 17
    sget-object v0, Lcom/shishicai/app/service/HttpUser;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/16 v1, 0x2af8

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancel(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    sget-object v0, Lcom/shishicai/app/service/HttpUser;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->cancelRequests(Landroid/content/Context;Z)V

    .line 54
    return-void
.end method

.method public static get(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 1
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "res"    # Lcom/loopj/android/http/AsyncHttpResponseHandler;

    .prologue
    .line 21
    sget-object v0, Lcom/shishicai/app/service/HttpUser;->client:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0, p0, p1}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 22
    return-void
.end method

.method public static get(Ljava/lang/String;Lcom/loopj/android/http/BinaryHttpResponseHandler;)V
    .locals 1
    .param p0, "uString"    # Ljava/lang/String;
    .param p1, "bHandler"    # Lcom/loopj/android/http/BinaryHttpResponseHandler;

    .prologue
    .line 37
    sget-object v0, Lcom/shishicai/app/service/HttpUser;->client:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0, p0, p1}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 38
    return-void
.end method

.method public static get(Ljava/lang/String;Lcom/loopj/android/http/JsonHttpResponseHandler;)V
    .locals 1
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "res"    # Lcom/loopj/android/http/JsonHttpResponseHandler;

    .prologue
    .line 29
    sget-object v0, Lcom/shishicai/app/service/HttpUser;->client:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0, p0, p1}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 30
    return-void
.end method

.method public static get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 1
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "params"    # Lcom/loopj/android/http/RequestParams;
    .param p2, "res"    # Lcom/loopj/android/http/AsyncHttpResponseHandler;

    .prologue
    .line 25
    sget-object v0, Lcom/shishicai/app/service/HttpUser;->client:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0, p0, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 26
    return-void
.end method

.method public static get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/JsonHttpResponseHandler;)V
    .locals 1
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "params"    # Lcom/loopj/android/http/RequestParams;
    .param p2, "res"    # Lcom/loopj/android/http/JsonHttpResponseHandler;

    .prologue
    .line 33
    sget-object v0, Lcom/shishicai/app/service/HttpUser;->client:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0, p0, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 34
    return-void
.end method

.method public static getClient()Lcom/loopj/android/http/AsyncHttpClient;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/shishicai/app/service/HttpUser;->client:Lcom/loopj/android/http/AsyncHttpClient;

    return-object v0
.end method

.method public static post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 1
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "params"    # Lcom/loopj/android/http/RequestParams;
    .param p2, "res"    # Lcom/loopj/android/http/AsyncHttpResponseHandler;

    .prologue
    .line 49
    sget-object v0, Lcom/shishicai/app/service/HttpUser;->client:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0, p0, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 50
    return-void
.end method

.method public static post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/JsonHttpResponseHandler;)V
    .locals 1
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "params"    # Lcom/loopj/android/http/RequestParams;
    .param p2, "res"    # Lcom/loopj/android/http/JsonHttpResponseHandler;

    .prologue
    .line 45
    sget-object v0, Lcom/shishicai/app/service/HttpUser;->client:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0, p0, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 46
    return-void
.end method
