.class final Lcn/bmob/v3/http/acknowledge$This$8;
.super Ljava/lang/Object;
.source "RxBmob.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/http/acknowledge$This;
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
        "Lcn/bmob/v3/datatype/BmobReturn",
        "<[",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcn/bmob/v3/http/acknowledge$This;)V
    .locals 0

    .prologue
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 427
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 1430
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcn/bmob/v3/http/bean/Api;

    invoke-static {v0, v1}, Lcn/bmob/v3/helper/GsonUtil;->toObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/bmob/v3/http/bean/Api;

    .line 1431
    invoke-virtual {v0}, Lcn/bmob/v3/http/bean/Api;->getResult()Lcn/bmob/v3/http/bean/Result;

    move-result-object v1

    .line 1432
    if-eqz v1, :cond_3

    .line 1433
    invoke-virtual {v1}, Lcn/bmob/v3/http/bean/Result;->getCode()I

    move-result v2

    .line 1434
    invoke-virtual {v1}, Lcn/bmob/v3/http/bean/Result;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 1435
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_2

    .line 1436
    invoke-virtual {v0}, Lcn/bmob/v3/http/bean/Api;->getData()Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 1437
    const-string v3, "upyun"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 1438
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1439
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    .line 1440
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    .line 1441
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    .line 1442
    invoke-virtual {v3, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 1441
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1444
    :cond_0
    new-instance v0, Lcn/bmob/v3/datatype/BmobReturn;

    new-instance v3, Lcn/bmob/v3/exception/BmobException;

    invoke-direct {v3, v2, v1}, Lcn/bmob/v3/exception/BmobException;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v5, v3}, Lcn/bmob/v3/datatype/BmobReturn;-><init>(Ljava/lang/Object;Lcn/bmob/v3/exception/BmobException;)V

    .line 1449
    :goto_1
    return-object v0

    .line 1446
    :cond_1
    new-instance v0, Lcn/bmob/v3/datatype/BmobReturn;

    new-instance v3, Lcn/bmob/v3/exception/BmobException;

    invoke-direct {v3, v2, v1}, Lcn/bmob/v3/exception/BmobException;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v4, v3}, Lcn/bmob/v3/datatype/BmobReturn;-><init>(Ljava/lang/Object;Lcn/bmob/v3/exception/BmobException;)V

    goto :goto_1

    .line 1449
    :cond_2
    new-instance v0, Lcn/bmob/v3/datatype/BmobReturn;

    invoke-direct {v0, v4, v4}, Lcn/bmob/v3/datatype/BmobReturn;-><init>(Ljava/lang/Object;Lcn/bmob/v3/exception/BmobException;)V

    goto :goto_1

    .line 1452
    :cond_3
    new-instance v0, Lcn/bmob/v3/datatype/BmobReturn;

    new-instance v1, Lcn/bmob/v3/exception/BmobException;

    const/16 v2, 0x232a

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/bmob/v3/exception/BmobException;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v4, v1}, Lcn/bmob/v3/datatype/BmobReturn;-><init>(Ljava/lang/Object;Lcn/bmob/v3/exception/BmobException;)V

    goto :goto_1
.end method
