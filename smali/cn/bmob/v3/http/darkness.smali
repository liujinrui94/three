.class public final Lcn/bmob/v3/http/darkness;
.super Ljava/lang/Object;
.source "QueryConditions.java"


# instance fields
.field private B:Lorg/json/JSONObject;

.field private C:Ljava/lang/String;

.field private Code:I

.field private D:Ljava/lang/String;

.field private F:Ljava/lang/Integer;

.field private I:Lorg/json/JSONObject;

.field private L:Ljava/lang/String;

.field private S:Ljava/lang/Integer;

.field private V:Lorg/json/JSONObject;

.field private Z:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Lorg/json/JSONObject;

.field private i:Ljava/lang/String;

.field private j:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/bmob/v3/http/darkness;->g:Z

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/bmob/v3/http/darkness;->j:[Ljava/lang/Object;

    .line 71
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcn/bmob/v3/http/darkness;->V:Lorg/json/JSONObject;

    .line 72
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    .line 73
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcn/bmob/v3/http/darkness;->B:Lorg/json/JSONObject;

    .line 74
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcn/bmob/v3/http/darkness;->h:Lorg/json/JSONObject;

    .line 75
    return-void
.end method

.method private Code(Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/datatype/BmobGeoPoint;D)V
    .locals 2

    .prologue
    .line 317
    const-string v0, "$nearSphere"

    invoke-virtual {p0, p1, v0, p3}, Lcn/bmob/v3/http/darkness;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 318
    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcn/bmob/v3/http/darkness;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 319
    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 626
    iput-object p1, p0, Lcn/bmob/v3/http/darkness;->i:Ljava/lang/String;

    .line 627
    return-void
.end method

.method public final B([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 600
    invoke-static {p1}, Lcn/bmob/v3/datatype/a/This;->Code([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/http/darkness;->f:Ljava/lang/String;

    .line 601
    return-void
.end method

.method public final Code()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->B:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final Code(I)V
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lcn/bmob/v3/http/darkness;->Code:I

    .line 84
    return-void
.end method

.method public final Code(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 92
    iput-object p1, p0, Lcn/bmob/v3/http/darkness;->Z:Ljava/lang/Class;

    .line 93
    return-void
.end method

.method public final Code(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcn/bmob/v3/http/darkness;->S:Ljava/lang/Integer;

    .line 97
    return-void
.end method

.method public final Code(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcn/bmob/v3/http/darkness;->D:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public final Code(Ljava/lang/String;Lcn/bmob/v3/datatype/BmobGeoPoint;D)V
    .locals 7

    .prologue
    .line 280
    const-string v2, "$maxDistanceInMiles"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcn/bmob/v3/http/darkness;->Code(Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/datatype/BmobGeoPoint;D)V

    .line 285
    return-void
.end method

.method public final Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 451
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 452
    instance-of v0, p3, Lcn/bmob/v3/BmobUser;

    if-eqz v0, :cond_0

    .line 453
    check-cast p3, Lcn/bmob/v3/BmobUser;

    .line 454
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 455
    const-string v1, "__type"

    const-string v2, "Pointer"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 456
    const-string v1, "objectId"

    invoke-virtual {p3}, Lcn/bmob/v3/BmobUser;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 457
    const-string v1, "className"

    const-string v2, "_User"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 458
    iget-object v1, p0, Lcn/bmob/v3/http/darkness;->B:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 523
    :goto_0
    return-void

    .line 459
    :cond_0
    instance-of v0, p3, Lcn/bmob/v3/BmobObject;

    if-eqz v0, :cond_1

    .line 460
    check-cast p3, Lcn/bmob/v3/BmobObject;

    .line 461
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 462
    const-string v1, "__type"

    const-string v2, "Pointer"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 463
    const-string v1, "objectId"

    invoke-virtual {p3}, Lcn/bmob/v3/BmobObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 464
    const-string v1, "className"

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 465
    iget-object v1, p0, Lcn/bmob/v3/http/darkness;->B:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 520
    :catch_0
    move-exception v0

    .line 521
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 467
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->B:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 470
    :cond_2
    instance-of v0, p3, Lcn/bmob/v3/datatype/BmobGeoPoint;

    if-eqz v0, :cond_5

    .line 471
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p3}, Lcn/bmob/v3/helper/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object p3, v0

    .line 507
    :cond_3
    :goto_1
    const/4 v1, 0x0

    .line 508
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->B:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 509
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->B:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 510
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_9

    .line 511
    check-cast v0, Lorg/json/JSONObject;

    .line 514
    :goto_2
    if-nez v0, :cond_4

    .line 515
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 517
    :cond_4
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    iget-object v1, p0, Lcn/bmob/v3/http/darkness;->B:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 472
    :cond_5
    instance-of v0, p3, Lcn/bmob/v3/BmobUser;

    if-eqz v0, :cond_6

    .line 473
    check-cast p3, Lcn/bmob/v3/BmobUser;

    .line 474
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 475
    const-string v1, "__type"

    const-string v2, "Pointer"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 476
    const-string v1, "objectId"

    invoke-virtual {p3}, Lcn/bmob/v3/BmobUser;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 477
    const-string v1, "className"

    const-string v2, "_User"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object p3, v0

    .line 479
    goto :goto_1

    :cond_6
    instance-of v0, p3, Lcn/bmob/v3/BmobObject;

    if-eqz v0, :cond_7

    .line 480
    check-cast p3, Lcn/bmob/v3/BmobObject;

    .line 481
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 482
    const-string v1, "__type"

    const-string v2, "Pointer"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 483
    const-string v1, "objectId"

    invoke-virtual {p3}, Lcn/bmob/v3/BmobObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 484
    const-string v1, "className"

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object p3, v0

    .line 486
    goto :goto_1

    :cond_7
    instance-of v0, p3, Lcn/bmob/v3/datatype/BmobDate;

    if-eqz v0, :cond_8

    .line 487
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p3}, Lcn/bmob/v3/helper/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object p3, v0

    goto/16 :goto_1

    .line 488
    :cond_8
    instance-of v0, p3, Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 490
    check-cast p3, Ljava/util/ArrayList;

    .line 491
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 492
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 493
    const-string v0, "__type"

    const-string v3, "GeoPoint"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 494
    const-string v3, "longitude"

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/bmob/v3/datatype/BmobGeoPoint;

    invoke-virtual {v0}, Lcn/bmob/v3/datatype/BmobGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 495
    const-string v3, "latitude"

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/bmob/v3/datatype/BmobGeoPoint;

    invoke-virtual {v0}, Lcn/bmob/v3/datatype/BmobGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 497
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 498
    const-string v0, "__type"

    const-string v4, "GeoPoint"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 499
    const-string v4, "longitude"

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/bmob/v3/datatype/BmobGeoPoint;

    invoke-virtual {v0}, Lcn/bmob/v3/datatype/BmobGeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 500
    const-string v4, "latitude"

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/bmob/v3/datatype/BmobGeoPoint;

    invoke-virtual {v0}, Lcn/bmob/v3/datatype/BmobGeoPoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 501
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 502
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 503
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 504
    const-string v0, "$box"

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_9
    move-object v0, v1

    goto/16 :goto_2
.end method

.method public final Code(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 608
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 609
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 610
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 612
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 613
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 615
    :try_start_0
    iget-object v3, p0, Lcn/bmob/v3/http/darkness;->h:Lorg/json/JSONObject;

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 619
    :catch_0
    move-exception v0

    goto :goto_0

    .line 621
    :cond_0
    return-void
.end method

.method public final Code(Z)V
    .locals 0

    .prologue
    .line 556
    iput-boolean p1, p0, Lcn/bmob/v3/http/darkness;->g:Z

    .line 557
    return-void
.end method

.method public final Code([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lcn/bmob/v3/http/darkness;->j:[Ljava/lang/Object;

    .line 638
    return-void
.end method

.method public final Code([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 565
    invoke-static {p1}, Lcn/bmob/v3/datatype/a/This;->Code([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/http/darkness;->b:Ljava/lang/String;

    .line 566
    return-void
.end method

.method public final I()Lorg/json/JSONObject;
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 646
    .line 1079
    :try_start_0
    iget v1, p0, Lcn/bmob/v3/http/darkness;->Code:I

    .line 646
    if-eq v1, v2, :cond_0

    .line 2079
    iget v1, p0, Lcn/bmob/v3/http/darkness;->Code:I

    .line 646
    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 2118
    :cond_0
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->a:Ljava/lang/String;

    .line 647
    if-eqz v0, :cond_6

    .line 648
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->V:Lorg/json/JSONObject;

    const-string v1, "objectId"

    .line 3118
    iget-object v2, p0, Lcn/bmob/v3/http/darkness;->a:Ljava/lang/String;

    .line 648
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 655
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 656
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    const-string v1, "keys"

    iget-object v2, p0, Lcn/bmob/v3/http/darkness;->C:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 658
    :cond_2
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    const-string v1, "limit"

    iget-object v2, p0, Lcn/bmob/v3/http/darkness;->S:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 659
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    const-string v1, "skip"

    iget-object v2, p0, Lcn/bmob/v3/http/darkness;->F:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 660
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 661
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    const-string v1, "order"

    iget-object v2, p0, Lcn/bmob/v3/http/darkness;->D:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 663
    :cond_3
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->L:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 664
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    const-string v1, "include"

    iget-object v2, p0, Lcn/bmob/v3/http/darkness;->L:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 742
    :cond_4
    :goto_1
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->Z:Ljava/lang/Class;

    if-eqz v0, :cond_5

    .line 743
    const-class v0, Lcn/bmob/v3/BmobUser;

    iget-object v1, p0, Lcn/bmob/v3/http/darkness;->Z:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 744
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->V:Lorg/json/JSONObject;

    const-string v1, "c"

    const-string v2, "_User"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 751
    :cond_5
    :goto_2
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->V:Lorg/json/JSONObject;

    const-string v1, "data"

    iget-object v2, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :goto_3
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->V:Lorg/json/JSONObject;

    return-object v0

    .line 650
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->B:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 652
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    const-string v1, "where"

    iget-object v2, p0, Lcn/bmob/v3/http/darkness;->B:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 752
    :catch_0
    move-exception v0

    .line 753
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 4079
    :cond_7
    :try_start_2
    iget v1, p0, Lcn/bmob/v3/http/darkness;->Code:I

    .line 666
    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    .line 667
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->B:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_8

    .line 669
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    const-string v1, "where"

    iget-object v2, p0, Lcn/bmob/v3/http/darkness;->B:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 671
    :cond_8
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    const-string v1, "limit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 672
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    const-string v1, "count"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    .line 5079
    :cond_9
    iget v1, p0, Lcn/bmob/v3/http/darkness;->Code:I

    .line 673
    const/4 v2, 0x4

    if-ne v1, v2, :cond_c

    .line 675
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->B:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_a

    .line 676
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    const-string v1, "where"

    iget-object v2, p0, Lcn/bmob/v3/http/darkness;->B:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 678
    :cond_a
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    const-string v1, "keys"

    iget-object v2, p0, Lcn/bmob/v3/http/darkness;->C:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 679
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    const-string v1, "skip"

    iget-object v2, p0, Lcn/bmob/v3/http/darkness;->F:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 680
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    const-string v1, "limit"

    iget-object v2, p0, Lcn/bmob/v3/http/darkness;->S:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 681
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    const-string v1, "order"

    iget-object v2, p0, Lcn/bmob/v3/http/darkness;->D:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 682
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    const-string v1, "include"

    iget-object v2, p0, Lcn/bmob/v3/http/darkness;->L:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 684
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    const-string v1, "sum"

    iget-object v2, p0, Lcn/bmob/v3/http/darkness;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 685
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    const-string v1, "max"

    iget-object v2, p0, Lcn/bmob/v3/http/darkness;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 686
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    const-string v1, "min"

    iget-object v2, p0, Lcn/bmob/v3/http/darkness;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 687
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    const-string v1, "average"

    iget-object v2, p0, Lcn/bmob/v3/http/darkness;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 688
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    const-string v1, "groupby"

    iget-object v2, p0, Lcn/bmob/v3/http/darkness;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 690
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->h:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_b

    .line 691
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    const-string v1, "having"

    iget-object v2, p0, Lcn/bmob/v3/http/darkness;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 693
    :cond_b
    iget-boolean v0, p0, Lcn/bmob/v3/http/darkness;->g:Z

    if-eqz v0, :cond_4

    .line 694
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    const-string v1, "groupcount"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 6079
    :cond_c
    iget v1, p0, Lcn/bmob/v3/http/darkness;->Code:I

    .line 696
    const/4 v2, 0x5

    if-ne v1, v2, :cond_f

    .line 697
    iget-object v1, p0, Lcn/bmob/v3/http/darkness;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 698
    iget-object v1, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    const-string v2, "bql"

    iget-object v3, p0, Lcn/bmob/v3/http/darkness;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 700
    :cond_d
    iget-object v1, p0, Lcn/bmob/v3/http/darkness;->j:[Ljava/lang/Object;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcn/bmob/v3/http/darkness;->j:[Ljava/lang/Object;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 701
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 702
    iget-object v2, p0, Lcn/bmob/v3/http/darkness;->j:[Ljava/lang/Object;

    array-length v3, v2

    :goto_4
    if-ge v0, v3, :cond_e

    aget-object v4, v2, v0

    .line 703
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 702
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 705
    :cond_e
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    const-string v2, "values"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 6118
    :cond_f
    iget-object v1, p0, Lcn/bmob/v3/http/darkness;->a:Ljava/lang/String;

    .line 708
    if-eqz v1, :cond_15

    .line 709
    iget-object v1, p0, Lcn/bmob/v3/http/darkness;->V:Lorg/json/JSONObject;

    const-string v2, "objectId"

    .line 7118
    iget-object v3, p0, Lcn/bmob/v3/http/darkness;->a:Ljava/lang/String;

    .line 709
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 716
    :cond_10
    :goto_5
    iget-object v1, p0, Lcn/bmob/v3/http/darkness;->C:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 717
    iget-object v1, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    const-string v2, "keys"

    iget-object v3, p0, Lcn/bmob/v3/http/darkness;->C:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 720
    :cond_11
    iget-object v1, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    const-string v2, "limit"

    iget-object v3, p0, Lcn/bmob/v3/http/darkness;->S:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 721
    iget-object v1, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    const-string v2, "skip"

    iget-object v3, p0, Lcn/bmob/v3/http/darkness;->F:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 723
    iget-object v1, p0, Lcn/bmob/v3/http/darkness;->D:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 724
    iget-object v1, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    const-string v2, "order"

    iget-object v3, p0, Lcn/bmob/v3/http/darkness;->D:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 726
    :cond_12
    iget-object v1, p0, Lcn/bmob/v3/http/darkness;->L:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 727
    iget-object v1, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    const-string v2, "include"

    iget-object v3, p0, Lcn/bmob/v3/http/darkness;->L:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 730
    :cond_13
    iget-object v1, p0, Lcn/bmob/v3/http/darkness;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 731
    iget-object v1, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    const-string v2, "bql"

    iget-object v3, p0, Lcn/bmob/v3/http/darkness;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 733
    :cond_14
    iget-object v1, p0, Lcn/bmob/v3/http/darkness;->j:[Ljava/lang/Object;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcn/bmob/v3/http/darkness;->j:[Ljava/lang/Object;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 734
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 735
    iget-object v2, p0, Lcn/bmob/v3/http/darkness;->j:[Ljava/lang/Object;

    array-length v3, v2

    :goto_6
    if-ge v0, v3, :cond_16

    aget-object v4, v2, v0

    .line 736
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 735
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 711
    :cond_15
    iget-object v1, p0, Lcn/bmob/v3/http/darkness;->B:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_10

    .line 713
    iget-object v1, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    const-string v2, "where"

    iget-object v3, p0, Lcn/bmob/v3/http/darkness;->B:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_5

    .line 738
    :cond_16
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->I:Lorg/json/JSONObject;

    const-string v2, "values"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 745
    :cond_17
    const-class v0, Lcn/bmob/v3/BmobInstallation;

    iget-object v1, p0, Lcn/bmob/v3/http/darkness;->Z:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 746
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->V:Lorg/json/JSONObject;

    const-string v1, "c"

    const-string v2, "_Installation"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 748
    :cond_18
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->V:Lorg/json/JSONObject;

    const-string v1, "c"

    iget-object v2, p0, Lcn/bmob/v3/http/darkness;->Z:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method

.method public final I(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcn/bmob/v3/http/darkness;->a:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public final I(Ljava/lang/String;Lcn/bmob/v3/datatype/BmobGeoPoint;D)V
    .locals 7

    .prologue
    .line 313
    const-string v2, "$maxDistanceInKilometers"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcn/bmob/v3/http/darkness;->Code(Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/datatype/BmobGeoPoint;D)V

    .line 314
    return-void
.end method

.method public final I([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 584
    invoke-static {p1}, Lcn/bmob/v3/datatype/a/This;->Code([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/http/darkness;->d:Ljava/lang/String;

    .line 585
    return-void
.end method

.method public final V()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcn/bmob/v3/http/darkness;->V:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final V(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcn/bmob/v3/http/darkness;->F:Ljava/lang/Integer;

    .line 101
    return-void
.end method

.method public final V(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcn/bmob/v3/http/darkness;->L:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public final V(Ljava/lang/String;Lcn/bmob/v3/datatype/BmobGeoPoint;D)V
    .locals 7

    .prologue
    .line 295
    const-string v2, "$maxDistanceInKilometers"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcn/bmob/v3/http/darkness;->Code(Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/datatype/BmobGeoPoint;D)V

    .line 300
    return-void
.end method

.method public final V([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 574
    invoke-static {p1}, Lcn/bmob/v3/datatype/a/This;->Code([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/http/darkness;->c:Ljava/lang/String;

    .line 575
    return-void
.end method

.method public final Z(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcn/bmob/v3/http/darkness;->C:Ljava/lang/String;

    .line 413
    return-void
.end method

.method public final Z([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 592
    invoke-static {p1}, Lcn/bmob/v3/datatype/a/This;->Code([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/http/darkness;->e:Ljava/lang/String;

    .line 593
    return-void
.end method
