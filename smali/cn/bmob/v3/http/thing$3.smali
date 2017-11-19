.class final Lcn/bmob/v3/http/thing$3;
.super Ljava/lang/Object;
.source "BmobFactory.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/http/thing;->Code(Lorg/json/JSONObject;Lcn/bmob/v3/listener/QueryListListener;)Lcn/bmob/v3/http/acknowledge;
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
        "Ljava/util/List",
        "<",
        "Lcn/bmob/v3/datatype/BmobTableSchema;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcn/bmob/v3/http/thing;)V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Code(Lcom/google/gson/JsonElement;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/datatype/BmobTableSchema;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 302
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "results"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 303
    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 305
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 306
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 307
    const-string v4, "className"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 308
    const-string v5, "fields"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 309
    new-instance v5, Lcn/bmob/v3/datatype/BmobTableSchema;

    invoke-static {v3}, Lcn/bmob/v3/datatype/a/This;->Code(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v5, v4, v3}, Lcn/bmob/v3/datatype/BmobTableSchema;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 310
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 316
    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 297
    check-cast p1, Lcom/google/gson/JsonElement;

    invoke-static {p1}, Lcn/bmob/v3/http/thing$3;->Code(Lcom/google/gson/JsonElement;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
