.class final Lcn/bmob/v3/http/thing$4;
.super Ljava/lang/Object;
.source "BmobFactory.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/http/thing;->Code(Lorg/json/JSONObject;Lcn/bmob/v3/listener/QueryListener;)Lcn/bmob/v3/http/acknowledge;
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
        "Lcn/bmob/v3/datatype/BmobTableSchema;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcn/bmob/v3/http/thing;)V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Code(Lcom/google/gson/JsonElement;)Lcn/bmob/v3/datatype/BmobTableSchema;
    .locals 3

    .prologue
    .line 332
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 333
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 334
    const-string v0, "className"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 335
    const-string v0, "fields"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 336
    new-instance v0, Lcn/bmob/v3/datatype/BmobTableSchema;

    invoke-static {v1}, Lcn/bmob/v3/datatype/a/This;->Code(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcn/bmob/v3/datatype/BmobTableSchema;-><init>(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    return-object v0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 340
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 328
    check-cast p1, Lcom/google/gson/JsonElement;

    invoke-static {p1}, Lcn/bmob/v3/http/thing$4;->Code(Lcom/google/gson/JsonElement;)Lcn/bmob/v3/datatype/BmobTableSchema;

    move-result-object v0

    return-object v0
.end method
