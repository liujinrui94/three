.class public Lcn/bmob/v3/BmobObject;
.super Ljava/lang/Object;
.source "BmobObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static data:Lorg/json/JSONObject;

.field protected static increments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ACL:Lcn/bmob/v3/BmobACL;

.field private _c_:Ljava/lang/String;

.field private createdAt:Ljava/lang/String;

.field private objectId:Ljava/lang/String;

.field private updatedAt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/bmob/v3/BmobObject;->increments:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcn/bmob/v3/BmobObject;->_c_:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/BmobObject;->_c_:Ljava/lang/String;

    .line 53
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcn/bmob/v3/BmobObject;->data:Lorg/json/JSONObject;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcn/bmob/v3/BmobObject;->_c_:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcn/bmob/v3/BmobObject;->_c_:Ljava/lang/String;

    .line 58
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcn/bmob/v3/BmobObject;->data:Lorg/json/JSONObject;

    .line 59
    return-void
.end method

.method private Code(Lcn/bmob/v3/listener/SaveListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/bmob/v3/listener/SaveListener",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcn/bmob/v3/http/acknowledge;"
        }
    .end annotation

    .prologue
    .line 367
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 369
    :try_start_0
    invoke-virtual {p0}, Lcn/bmob/v3/BmobObject;->getCurrentData()Lorg/json/JSONObject;

    move-result-object v0

    .line 371
    const-string v2, "createdAt"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 372
    const-string v2, "updatedAt"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 373
    const-string v2, "objectId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 375
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    const-string v0, "c"

    invoke-virtual {p0}, Lcn/bmob/v3/BmobObject;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_0
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    invoke-virtual {p0}, Lcn/bmob/v3/BmobObject;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/util/List;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    const-string v2, "http://open.bmob.cn/8/create"

    invoke-virtual {v0, v2, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/lang/String;Lorg/json/JSONObject;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/BmobObject$1;

    invoke-direct {v1, p0}, Lcn/bmob/v3/BmobObject$1;-><init>(Lcn/bmob/v3/BmobObject;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Lrx/functions/Func1;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/bmob/v3/http/acknowledge$This;->V(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    .line 393
    return-object v0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private Code(Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 3

    .prologue
    .line 462
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    const-string v1, " objectId can\'t be empty "

    invoke-static {p1, v1}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/util/List;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    const-string v1, "http://open.bmob.cn/8/update"

    invoke-direct {p0, p1}, Lcn/bmob/v3/BmobObject;->Code(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/lang/String;Lorg/json/JSONObject;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/BmobObject$2;

    invoke-direct {v1, p0}, Lcn/bmob/v3/BmobObject$2;-><init>(Lcn/bmob/v3/BmobObject;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Lrx/functions/Func1;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/bmob/v3/http/acknowledge$This;->V(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0
.end method

.method private Code(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 424
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 426
    :try_start_0
    invoke-virtual {p0}, Lcn/bmob/v3/BmobObject;->getCurrentData()Lorg/json/JSONObject;

    move-result-object v2

    .line 428
    const-string v0, "createdAt"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 429
    const-string v0, "updatedAt"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 430
    const-string v0, "objectId"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 431
    const-class v0, Lcn/bmob/v3/BmobInstallation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    const-string v0, "deviceType"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 433
    const-string v0, "installationId"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 437
    :cond_0
    :goto_0
    const-string v0, "c"

    invoke-virtual {p0}, Lcn/bmob/v3/BmobObject;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 439
    sget-object v0, Lcn/bmob/v3/BmobObject;->increments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 440
    sget-object v0, Lcn/bmob/v3/BmobObject;->increments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 441
    const-string v4, "key"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 442
    const-string v5, "key"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 443
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 449
    :catch_0
    move-exception v0

    .line 450
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 452
    :goto_2
    return-object v1

    .line 434
    :cond_1
    :try_start_1
    const-class v0, Lcn/bmob/v3/BmobRole;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    const-string v0, "name"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 445
    :cond_2
    sget-object v0, Lcn/bmob/v3/BmobObject;->increments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 447
    :cond_3
    const-string v0, "data"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 448
    const-string v0, "objectId"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private static Code(Ljava/lang/String;Ljava/util/Collection;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 226
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 227
    const-string v1, "__op"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 229
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 230
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 231
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 233
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {v3}, Lcn/bmob/v3/helper/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 237
    :cond_1
    const-string v2, "objects"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    return-object v0
.end method

.method private V(Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 3

    .prologue
    .line 523
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 525
    :try_start_0
    const-string v0, "objectId"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 526
    const-string v0, "c"

    invoke-virtual {p0}, Lcn/bmob/v3/BmobObject;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :goto_0
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    const-string v2, " objectId can\'t be empty "

    invoke-static {p1, v2}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/util/List;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    const-string v2, "http://open.bmob.cn/8/delete"

    invoke-virtual {v0, v2, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/lang/String;Lorg/json/JSONObject;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->I()Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/bmob/v3/http/acknowledge$This;->V(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0

    .line 527
    :catch_0
    move-exception v0

    .line 528
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static disposePointerType(Lcn/bmob/v3/BmobObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 9
    .param p0, "bmobobj"    # Lcn/bmob/v3/BmobObject;
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 330
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 331
    const-class v4, Lcn/bmob/v3/BmobUser;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 332
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 333
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 334
    const-string v5, "__type"

    const-string v6, "Pointer"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    const-string v5, "objectId"

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "objectId"

    const-string v8, "null"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    const-string v5, "className"

    const-string v6, "_User"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_1
    const-class v4, Lcn/bmob/v3/BmobRole;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 341
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 342
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 343
    const-string v5, "__type"

    const-string v6, "Pointer"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 344
    const-string v5, "objectId"

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "objectId"

    const-string v8, "null"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    const-string v5, "className"

    const-string v6, "_Role"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 349
    :cond_2
    const-class v4, Lcn/bmob/v3/BmobObject;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 350
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 351
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 352
    const-string v5, "__type"

    const-string v6, "Pointer"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 353
    const-string v5, "objectId"

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "objectId"

    const-string v8, "null"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    const-string v5, "className"

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 355
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 359
    :cond_3
    return-object p1
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 155
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/bmob/v3/BmobObject;->addAll(Ljava/lang/String;Ljava/util/Collection;)V

    .line 156
    return-void
.end method

.method public addAll(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :try_start_0
    sget-object v0, Lcn/bmob/v3/BmobObject;->data:Lorg/json/JSONObject;

    const-string v1, "Add"

    invoke-static {v1, p2}, Lcn/bmob/v3/BmobObject;->Code(Ljava/lang/String;Ljava/util/Collection;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public addAllUnique(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :try_start_0
    sget-object v0, Lcn/bmob/v3/BmobObject;->data:Lorg/json/JSONObject;

    const-string v1, "AddUnique"

    invoke-static {v1, p2}, Lcn/bmob/v3/BmobObject;->Code(Ljava/lang/String;Ljava/util/Collection;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public addUnique(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 177
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/bmob/v3/BmobObject;->addAllUnique(Ljava/lang/String;Ljava/util/Collection;)V

    .line 178
    return-void
.end method

.method public delete()Lrx/Subscription;
    .locals 1

    .prologue
    .line 549
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/bmob/v3/BmobObject;->delete(Lcn/bmob/v3/listener/UpdateListener;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lcn/bmob/v3/listener/UpdateListener;)Lrx/Subscription;
    .locals 1
    .param p1, "listener"    # Lcn/bmob/v3/listener/UpdateListener;

    .prologue
    .line 557
    invoke-virtual {p0}, Lcn/bmob/v3/BmobObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcn/bmob/v3/BmobObject;->delete(Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lrx/Subscription;
    .locals 1
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcn/bmob/v3/listener/UpdateListener;

    .prologue
    .line 567
    invoke-direct {p0, p1, p2}, Lcn/bmob/v3/BmobObject;->V(Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public deleteObservable(Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p1, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 542
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/bmob/v3/BmobObject;->V(Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getACL()Lcn/bmob/v3/BmobACL;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcn/bmob/v3/BmobObject;->ACL:Lcn/bmob/v3/BmobACL;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcn/bmob/v3/BmobObject;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method protected getCurrentData()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 304
    const/4 v2, 0x0

    .line 306
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p0}, Lcn/bmob/v3/helper/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 307
    :try_start_1
    invoke-static {p0, v1}, Lcn/bmob/v3/BmobObject;->disposePointerType(Lcn/bmob/v3/BmobObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 308
    :try_start_2
    const-string v0, "_c_"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcn/bmob/v3/BmobObject;->data:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 310
    sget-object v0, Lcn/bmob/v3/BmobObject;->data:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 311
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 313
    sget-object v3, Lcn/bmob/v3/BmobObject;->data:Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 317
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 319
    :goto_2
    return-object v0

    :cond_0
    move-object v0, v1

    .line 318
    goto :goto_2

    .line 316
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_1
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcn/bmob/v3/BmobObject;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcn/bmob/v3/BmobObject;->_c_:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcn/bmob/v3/BmobObject;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public increment(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 129
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/bmob/v3/BmobObject;->increment(Ljava/lang/String;Ljava/lang/Number;)V

    .line 130
    return-void
.end method

.method public increment(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "amount"    # Ljava/lang/Number;

    .prologue
    .line 138
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 140
    :try_start_0
    const-string v1, "__op"

    const-string v2, "Increment"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string v1, "amount"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    sget-object v1, Lcn/bmob/v3/BmobObject;->increments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 212
    :try_start_0
    sget-object v0, Lcn/bmob/v3/BmobObject;->data:Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "__op"

    const-string v3, "Delete"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeAll(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :try_start_0
    sget-object v0, Lcn/bmob/v3/BmobObject;->data:Lorg/json/JSONObject;

    const-string v1, "Remove"

    invoke-static {v1, p2}, Lcn/bmob/v3/BmobObject;->Code(Ljava/lang/String;Ljava/util/Collection;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public save()Lrx/Subscription;
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/bmob/v3/BmobObject;->save(Lcn/bmob/v3/listener/SaveListener;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public save(Lcn/bmob/v3/listener/SaveListener;)Lrx/Subscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/bmob/v3/listener/SaveListener",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, "listener":Lcn/bmob/v3/listener/SaveListener;, "Lcn/bmob/v3/listener/SaveListener<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcn/bmob/v3/BmobObject;->Code(Lcn/bmob/v3/listener/SaveListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public saveObservable()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 401
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/bmob/v3/BmobObject;->Code(Lcn/bmob/v3/listener/SaveListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public setACL(Lcn/bmob/v3/BmobACL;)V
    .locals 0
    .param p1, "aCL"    # Lcn/bmob/v3/BmobACL;

    .prologue
    .line 121
    iput-object p1, p0, Lcn/bmob/v3/BmobObject;->ACL:Lcn/bmob/v3/BmobACL;

    .line 122
    return-void
.end method

.method protected setCreatedAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "createdAt"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcn/bmob/v3/BmobObject;->createdAt:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 0
    .param p1, "objectId"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcn/bmob/v3/BmobObject;->objectId:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcn/bmob/v3/BmobObject;->_c_:Ljava/lang/String;

    .line 63
    return-void
.end method

.method protected setUpdatedAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "updatedAt"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcn/bmob/v3/BmobObject;->updatedAt:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 248
    :try_start_0
    sget-object v2, Lcn/bmob/v3/BmobObject;->data:Lorg/json/JSONObject;

    .line 1259
    instance-of v0, p2, Lcn/bmob/v3/datatype/BmobDate;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcn/bmob/v3/datatype/BmobFile;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcn/bmob/v3/datatype/BmobGeoPoint;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcn/bmob/v3/datatype/BmobRelation;

    if-eqz v0, :cond_2

    .line 1263
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p2}, Lcn/bmob/v3/helper/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    .line 248
    .end local p2    # "value":Ljava/lang/Object;
    :cond_1
    :goto_0
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    :goto_1
    return-void

    .line 1264
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v0, p2, Lcn/bmob/v3/BmobObject;

    if-eqz v0, :cond_4

    .line 1265
    check-cast p2, Lcn/bmob/v3/BmobObject;

    .line 1266
    .end local p2    # "value":Ljava/lang/Object;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1267
    const-string v1, "__type"

    const-string v3, "Pointer"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1268
    const-string v3, "objectId"

    invoke-virtual {p2}, Lcn/bmob/v3/BmobObject;->getObjectId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, ""

    :goto_2
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1269
    const-string v1, "className"

    invoke-virtual {p2}, Lcn/bmob/v3/BmobObject;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object p2, v0

    .line 1270
    goto :goto_0

    .line 1268
    :cond_3
    invoke-virtual {p2}, Lcn/bmob/v3/BmobObject;->getObjectId()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1271
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/lang/Byte;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/lang/Short;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/lang/Long;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/lang/Double;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/lang/Float;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/lang/Character;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 1281
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_7

    .line 1282
    check-cast p2, Ljava/util/Collection;

    .line 1283
    .end local p2    # "value":Ljava/lang/Object;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1284
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1285
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 1286
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 249
    :catch_0
    move-exception v0

    .line 250
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 1288
    :cond_5
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {v3}, Lcn/bmob/v3/helper/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1289
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    :cond_6
    move-object p2, v0

    .line 1292
    goto/16 :goto_0

    .line 1294
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p2}, Lcn/bmob/v3/helper/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object p2, v0

    .line 1295
    goto/16 :goto_0
.end method

.method public update()Lrx/Subscription;
    .locals 2

    .prologue
    .line 497
    invoke-virtual {p0}, Lcn/bmob/v3/BmobObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/bmob/v3/BmobObject;->update(Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcn/bmob/v3/listener/UpdateListener;)Lrx/Subscription;
    .locals 1
    .param p1, "listener"    # Lcn/bmob/v3/listener/UpdateListener;

    .prologue
    .line 505
    invoke-virtual {p0}, Lcn/bmob/v3/BmobObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcn/bmob/v3/BmobObject;->update(Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lrx/Subscription;
    .locals 1
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcn/bmob/v3/listener/UpdateListener;

    .prologue
    .line 514
    invoke-direct {p0, p1, p2}, Lcn/bmob/v3/BmobObject;->Code(Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public updateObservable()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 490
    invoke-virtual {p0}, Lcn/bmob/v3/BmobObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/bmob/v3/BmobObject;->updateObservable(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public updateObservable(Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p1, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/bmob/v3/BmobObject;->Code(Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
