.class final Lcn/bmob/v3/http/acknowledge$This$14;
.super Ljava/lang/Object;
.source "RxBmob.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/http/acknowledge$This;->B()Lcn/bmob/v3/http/acknowledge$This;
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
        "Lcn/bmob/v3/datatype/BatchResult;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcn/bmob/v3/http/acknowledge$This;)V
    .locals 0

    .prologue
    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Code(Lcom/google/gson/JsonElement;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/datatype/BatchResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v2, 0x2337

    const/4 v0, 0x0

    .line 550
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 552
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 553
    new-instance v5, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    move v3, v0

    .line 555
    :goto_0
    if-ge v3, v6, :cond_4

    .line 556
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 557
    new-instance v7, Lcn/bmob/v3/datatype/BatchResult;

    invoke-direct {v7}, Lcn/bmob/v3/datatype/BatchResult;-><init>()V

    .line 558
    const-string v1, "success"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 559
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lcn/bmob/v3/datatype/BatchResult;->setSuccess(Z)V

    .line 560
    const-string v1, "success"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 561
    const-string v1, "createdAt"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 562
    const-string v1, "createdAt"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcn/bmob/v3/datatype/BatchResult;->setCreatedAt(Ljava/lang/String;)V

    .line 564
    :cond_0
    const-string v1, "objectId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 565
    const-string v1, "objectId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcn/bmob/v3/datatype/BatchResult;->setObjectId(Ljava/lang/String;)V

    .line 567
    :cond_1
    const-string v1, "updatedAt"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 568
    const-string v1, "updatedAt"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcn/bmob/v3/datatype/BatchResult;->setUpdatedAt(Ljava/lang/String;)V

    .line 578
    :cond_2
    :goto_1
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 570
    :cond_3
    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 571
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcn/bmob/v3/datatype/BatchResult;->setSuccess(Z)V

    .line 572
    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 573
    new-instance v9, Lcn/bmob/v3/exception/BmobException;

    const-string v0, "code"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "code"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    :goto_2
    const-string v0, "error"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "error"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-direct {v9, v1, v0}, Lcn/bmob/v3/exception/BmobException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v7, v9}, Lcn/bmob/v3/datatype/BatchResult;->setError(Lcn/bmob/v3/exception/BmobException;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 580
    :catch_0
    move-exception v0

    .line 581
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 583
    :cond_4
    return-object v4

    :cond_5
    move v1, v2

    .line 573
    goto :goto_2

    :cond_6
    :try_start_1
    const-string v0, ""

    goto :goto_3

    .line 575
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcn/bmob/v3/datatype/BatchResult;->setSuccess(Z)V

    .line 576
    new-instance v0, Lcn/bmob/v3/exception/BmobException;

    const/16 v1, 0x2337

    const-string v8, "\u670d\u52a1\u7aef\u8fd4\u56de\u5f02\u5e38"

    invoke-direct {v0, v1, v8}, Lcn/bmob/v3/exception/BmobException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Lcn/bmob/v3/datatype/BatchResult;->setError(Lcn/bmob/v3/exception/BmobException;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 547
    check-cast p1, Lcom/google/gson/JsonElement;

    invoke-static {p1}, Lcn/bmob/v3/http/acknowledge$This$14;->Code(Lcom/google/gson/JsonElement;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
