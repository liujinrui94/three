.class final Lcn/bmob/v3/http/acknowledge$This$3;
.super Ljava/lang/Object;
.source "RxBmob.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/http/acknowledge$This;->Code()Lcn/bmob/v3/http/acknowledge$This;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lcom/google/gson/JsonElement;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcn/bmob/v3/http/acknowledge$This;)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Code(Lcom/google/gson/JsonElement;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 322
    const/4 v1, 0x0

    .line 324
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 328
    :goto_0
    return-object v0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto :goto_0

    .line 329
    :catch_1
    move-exception v0

    .line 330
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 331
    new-instance v1, Lcn/bmob/v3/exception/BmobException;

    invoke-direct {v1, v0}, Lcn/bmob/v3/exception/BmobException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 318
    check-cast p1, Lcom/google/gson/JsonElement;

    invoke-static {p1}, Lcn/bmob/v3/http/acknowledge$This$3;->Code(Lcom/google/gson/JsonElement;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
