.class public Lcn/bmob/v3/BmobBatch;
.super Ljava/lang/Object;
.source "BmobBatch.java"


# instance fields
.field private final Code:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcn/bmob/v3/BmobBatch;->Code:Lorg/json/JSONArray;

    .line 31
    return-void
.end method

.method private Code(Ljava/lang/String;Ljava/util/List;)Lcn/bmob/v3/BmobBatch;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/BmobObject;",
            ">;)",
            "Lcn/bmob/v3/BmobBatch;"
        }
    .end annotation

    .prologue
    .line 68
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/bmob/v3/BmobObject;

    .line 70
    instance-of v2, v0, Lcn/bmob/v3/BmobUser;

    if-eqz v2, :cond_1

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BmobUser does not support batch operations"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 93
    :cond_0
    return-object p0

    .line 73
    :cond_1
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {v0}, Lcn/bmob/v3/helper/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 74
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 75
    const-string v4, "method"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v4, "PUT"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "DELETE"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 77
    :cond_2
    const-string v4, "token"

    new-instance v5, Lcn/bmob/v3/b/The;

    invoke-direct {v5}, Lcn/bmob/v3/b/The;-><init>()V

    const-string v6, "sessionToken"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcn/bmob/v3/b/The;->V(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v4, "path"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/1/classes/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/bmob/v3/BmobObject;->getTableName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcn/bmob/v3/BmobObject;->getObjectId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v4, "createdAt"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    const-string v4, "updatedAt"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    const-string v4, "objectId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    :goto_1
    const-string v4, "_c_"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    const-string v4, "body"

    invoke-static {v0, v2}, Lcn/bmob/v3/BmobObject;->disposePointerType(Lcn/bmob/v3/BmobObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    iget-object v0, p0, Lcn/bmob/v3/BmobBatch;->Code:Lorg/json/JSONArray;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 84
    :cond_3
    const-string v4, "path"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/1/classes/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/bmob/v3/BmobObject;->getTableName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private Code(Lcn/bmob/v3/listener/QueryListListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/bmob/v3/listener/QueryListListener",
            "<",
            "Lcn/bmob/v3/datatype/BatchResult;",
            ">;)",
            "Lcn/bmob/v3/http/acknowledge;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 99
    :try_start_0
    const-string v0, "data"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "requests"

    iget-object v4, p0, Lcn/bmob/v3/BmobBatch;->Code:Lorg/json/JSONArray;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    iget-object v2, p0, Lcn/bmob/v3/BmobBatch;->Code:Lorg/json/JSONArray;

    invoke-static {v2}, Lcn/bmob/v3/http/thing;->Code(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/util/List;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    const-string v2, "http://open.bmob.cn/8/batch"

    invoke-virtual {v0, v2, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/lang/String;Lorg/json/JSONObject;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->B()Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/bmob/v3/http/acknowledge$This;->V(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public deleteBatch(Ljava/util/List;)Lcn/bmob/v3/BmobBatch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/BmobObject;",
            ">;)",
            "Lcn/bmob/v3/BmobBatch;"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lcn/bmob/v3/BmobObject;>;"
    const-string v0, "DELETE"

    invoke-direct {p0, v0, p1}, Lcn/bmob/v3/BmobBatch;->Code(Ljava/lang/String;Ljava/util/List;)Lcn/bmob/v3/BmobBatch;

    move-result-object v0

    return-object v0
.end method

.method public doBatch(Lcn/bmob/v3/listener/QueryListListener;)Lrx/Subscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/bmob/v3/listener/QueryListListener",
            "<",
            "Lcn/bmob/v3/datatype/BatchResult;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "listener":Lcn/bmob/v3/listener/QueryListListener;, "Lcn/bmob/v3/listener/QueryListListener<Lcn/bmob/v3/datatype/BatchResult;>;"
    invoke-direct {p0, p1}, Lcn/bmob/v3/BmobBatch;->Code(Lcn/bmob/v3/listener/QueryListListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public doBatchObservable()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/datatype/BatchResult;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/bmob/v3/BmobBatch;->Code(Lcn/bmob/v3/listener/QueryListListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public insertBatch(Ljava/util/List;)Lcn/bmob/v3/BmobBatch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/BmobObject;",
            ">;)",
            "Lcn/bmob/v3/BmobBatch;"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lcn/bmob/v3/BmobObject;>;"
    const-string v0, "POST"

    invoke-direct {p0, v0, p1}, Lcn/bmob/v3/BmobBatch;->Code(Ljava/lang/String;Ljava/util/List;)Lcn/bmob/v3/BmobBatch;

    move-result-object v0

    return-object v0
.end method

.method public updateBatch(Ljava/util/List;)Lcn/bmob/v3/BmobBatch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/BmobObject;",
            ">;)",
            "Lcn/bmob/v3/BmobBatch;"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lcn/bmob/v3/BmobObject;>;"
    const-string v0, "PUT"

    invoke-direct {p0, v0, p1}, Lcn/bmob/v3/BmobBatch;->Code(Ljava/lang/String;Ljava/util/List;)Lcn/bmob/v3/BmobBatch;

    move-result-object v0

    return-object v0
.end method
