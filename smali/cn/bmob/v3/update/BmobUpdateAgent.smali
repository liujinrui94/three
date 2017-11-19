.class public Lcn/bmob/v3/update/BmobUpdateAgent;
.super Ljava/lang/Object;
.source "BmobUpdateAgent.java"


# static fields
.field private static Code:Lcn/bmob/v3/listener/BmobDialogButtonListener;

.field private static V:Lcn/bmob/v3/listener/BmobUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcn/bmob/v3/update/BmobUpdateAgent;->V:Lcn/bmob/v3/listener/BmobUpdateListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic Code()Lcn/bmob/v3/listener/BmobUpdateListener;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcn/bmob/v3/update/BmobUpdateAgent;->V:Lcn/bmob/v3/listener/BmobUpdateListener;

    return-object v0
.end method

.method static Code(ILandroid/content/Context;Lcn/bmob/v3/update/UpdateResponse;Ljava/io/File;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 193
    packed-switch p0, :pswitch_data_0

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 195
    :pswitch_0
    invoke-static {}, Lcn/bmob/v3/update/a/This;->I()Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    sget-object v0, Lcn/bmob/v3/update/BmobUpdateAgent;->Code:Lcn/bmob/v3/listener/BmobDialogButtonListener;

    if-eqz v0, :cond_1

    .line 197
    sget-object v0, Lcn/bmob/v3/update/BmobUpdateAgent;->Code:Lcn/bmob/v3/listener/BmobDialogButtonListener;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcn/bmob/v3/listener/BmobDialogButtonListener;->onClick(I)V

    .line 1217
    :cond_1
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1219
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 1220
    iget-wide v2, p2, Lcn/bmob/v3/update/UpdateResponse;->target_size:J

    .line 1221
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    .line 1223
    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 1224
    invoke-static {p1, p3}, Lcn/bmob/v3/update/BmobUpdateAgent;->startInstall(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_0

    .line 1226
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0, p1, p2, p3}, Lcn/bmob/v3/update/BmobUpdateAgent;->Code(ZLandroid/content/Context;Lcn/bmob/v3/update/UpdateResponse;Ljava/io/File;)V

    goto :goto_0

    .line 1230
    :cond_3
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 1231
    sget-object v0, Lcn/bmob/v3/update/BmobUpdateAgent;->V:Lcn/bmob/v3/listener/BmobUpdateListener;

    if-eqz v0, :cond_0

    .line 1232
    sget-object v0, Lcn/bmob/v3/update/BmobUpdateAgent;->V:Lcn/bmob/v3/listener/BmobUpdateListener;

    new-instance v1, Lcn/bmob/v3/update/UpdateResponse;

    const-string v2, ""

    invoke-direct {v1, v6, v2}, Lcn/bmob/v3/update/UpdateResponse;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v6, v1}, Lcn/bmob/v3/listener/BmobUpdateListener;->onUpdateReturned(ILcn/bmob/v3/update/UpdateResponse;)V

    goto :goto_0

    .line 1236
    :cond_4
    const/4 v0, 0x0

    invoke-static {v0, p1, p2, p3}, Lcn/bmob/v3/update/BmobUpdateAgent;->Code(ZLandroid/content/Context;Lcn/bmob/v3/update/UpdateResponse;Ljava/io/File;)V

    goto :goto_0

    .line 204
    :pswitch_1
    sget-object v0, Lcn/bmob/v3/update/BmobUpdateAgent;->Code:Lcn/bmob/v3/listener/BmobDialogButtonListener;

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lcn/bmob/v3/update/BmobUpdateAgent;->Code:Lcn/bmob/v3/listener/BmobDialogButtonListener;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcn/bmob/v3/listener/BmobDialogButtonListener;->onClick(I)V

    goto :goto_0

    .line 209
    :pswitch_2
    sget-object v0, Lcn/bmob/v3/update/BmobUpdateAgent;->Code:Lcn/bmob/v3/listener/BmobDialogButtonListener;

    if-eqz v0, :cond_0

    .line 210
    sget-object v0, Lcn/bmob/v3/update/BmobUpdateAgent;->Code:Lcn/bmob/v3/listener/BmobDialogButtonListener;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcn/bmob/v3/listener/BmobDialogButtonListener;->onClick(I)V

    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic Code(Landroid/content/Context;Lcn/bmob/v3/update/UpdateResponse;Ljava/io/File;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 37
    .line 1389
    invoke-static {}, Lcn/bmob/v3/b/From;->Code()I

    move-result v0

    .line 1390
    iget-object v1, p1, Lcn/bmob/v3/update/UpdateResponse;->version_i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1393
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/bmob/v3/update/UpdateDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1394
    const-string v1, "response"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1395
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1397
    const-string v1, "file"

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1399
    :cond_0
    const-string v1, "showCheckBox"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1400
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1401
    :cond_1
    :goto_0
    return-void

    .line 1403
    :cond_2
    sget-object v0, Lcn/bmob/v3/update/BmobUpdateAgent;->V:Lcn/bmob/v3/listener/BmobUpdateListener;

    if-eqz v0, :cond_1

    .line 1404
    sget-object v0, Lcn/bmob/v3/update/BmobUpdateAgent;->V:Lcn/bmob/v3/listener/BmobUpdateListener;

    new-instance v1, Lcn/bmob/v3/update/UpdateResponse;

    const-string v2, "\u5df2\u7ecf\u662f\u6700\u65b0\u7248\u672c\u4e86\uff0c\u65e0\u9700\u66f4\u65b0\u3002"

    invoke-direct {v1, v3, v2}, Lcn/bmob/v3/update/UpdateResponse;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Lcn/bmob/v3/listener/BmobUpdateListener;->onUpdateReturned(ILcn/bmob/v3/update/UpdateResponse;)V

    goto :goto_0
.end method

.method private static Code(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 486
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 487
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 490
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    add-int/lit8 v0, v2, -0x1

    if-eq v1, v0, :cond_0

    .line 492
    const-string v0, "&"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 496
    :cond_1
    new-instance v0, Lcn/bmob/v3/b/The;

    invoke-direct {v0}, Lcn/bmob/v3/b/The;-><init>()V

    const-string v1, "ignoreversions"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/bmob/v3/b/The;->Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :goto_1
    return-void

    .line 498
    :cond_2
    new-instance v0, Lcn/bmob/v3/b/The;

    invoke-direct {v0}, Lcn/bmob/v3/b/The;-><init>()V

    const-string v1, "ignoreversions"

    invoke-virtual {v0, v1}, Lcn/bmob/v3/b/The;->Code(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static Code(ZLandroid/content/Context;Lcn/bmob/v3/update/UpdateResponse;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 241
    if-eqz p0, :cond_0

    .line 243
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 246
    :cond_0
    new-instance v0, Lcn/bmob/v3/b/acknowledge;

    iget-object v1, p2, Lcn/bmob/v3/update/UpdateResponse;->path:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcn/bmob/v3/b/acknowledge;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0}, Lcn/bmob/v3/b/acknowledge;->Code()V

    .line 248
    return-void
.end method

.method private static Code(Landroid/content/Context;)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 255
    invoke-static {}, Lcn/bmob/v3/update/a/This;->Z()Z

    move-result v0

    if-nez v0, :cond_1

    .line 300
    :cond_0
    :goto_0
    return v1

    .line 263
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1005

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 265
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_3

    move v3, v4

    move v0, v4

    .line 266
    :goto_1
    iget-object v2, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v2, v2

    if-ge v3, v2, :cond_4

    .line 267
    const-string v2, "cn.bmob.v3.update.UpdateDialogActivity"

    iget-object v5, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v5, v5, v3

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 266
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v4

    move v0, v4

    .line 273
    :cond_4
    if-nez v0, :cond_5

    .line 274
    const-string v0, "Please add Activity in AndroidManifest!"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v1, v4

    .line 276
    goto :goto_0

    .line 278
    :cond_5
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_9

    move v0, v4

    move v2, v4

    move v5, v4

    .line 279
    :goto_2
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v7, v7

    if-ge v5, v7, :cond_a

    .line 280
    const-string v7, "android.permission.WRITE_EXTERNAL_STORAGE"

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v3, v1

    .line 279
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 283
    :cond_7
    const-string v7, "android.permission.ACCESS_NETWORK_STATE"

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v2, v1

    .line 285
    goto :goto_3

    .line 286
    :cond_8
    const-string v7, "android.permission.INTERNET"

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v0, v1

    .line 288
    goto :goto_3

    :cond_9
    move v0, v4

    move v2, v4

    .line 292
    :cond_a
    if-eqz v3, :cond_b

    if-eqz v2, :cond_b

    if-eqz v0, :cond_b

    move v0, v1

    .line 293
    :goto_4
    if-nez v0, :cond_0

    .line 294
    const-string v0, "Please add Permission in AndroidManifest!"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    .line 296
    goto/16 :goto_0

    :cond_b
    move v0, v4

    .line 292
    goto :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private static V()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 433
    new-instance v0, Lcn/bmob/v3/b/The;

    invoke-direct {v0}, Lcn/bmob/v3/b/The;-><init>()V

    const-string v1, "ignoreversions"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcn/bmob/v3/b/The;->V(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 434
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 435
    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 438
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 439
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 444
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_1
    :goto_1
    return-object v0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1
.end method

.method private static V(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 317
    invoke-static {p0}, Lcn/bmob/v3/update/BmobUpdateAgent;->Code(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    :goto_0
    return-void

    .line 319
    :cond_0
    new-instance v0, Lcn/bmob/v3/BmobQuery;

    invoke-direct {v0}, Lcn/bmob/v3/BmobQuery;-><init>()V

    .line 320
    const-string v1, "platform"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Lcn/bmob/v3/BmobQuery;->addWhereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcn/bmob/v3/BmobQuery;

    .line 321
    invoke-static {}, Lcn/bmob/v3/update/a/This;->V()Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 323
    const-string v2, "channel"

    invoke-virtual {v0, v2, v1}, Lcn/bmob/v3/BmobQuery;->addWhereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcn/bmob/v3/BmobQuery;

    .line 325
    :cond_1
    const-string v1, "version_i"

    invoke-static {}, Lcn/bmob/v3/b/From;->Code()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/bmob/v3/BmobQuery;->addWhereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcn/bmob/v3/BmobQuery;

    .line 326
    const-string v1, "-version_i"

    invoke-virtual {v0, v1}, Lcn/bmob/v3/BmobQuery;->order(Ljava/lang/String;)Lcn/bmob/v3/BmobQuery;

    .line 327
    new-instance v1, Lcn/bmob/v3/update/BmobUpdateAgent$5;

    invoke-direct {v1, p0}, Lcn/bmob/v3/update/BmobUpdateAgent$5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/BmobQuery;->findObjects(Lcn/bmob/v3/listener/FindListener;)Lrx/Subscription;

    goto :goto_0
.end method

.method public static add2IgnoreVersion(Ljava/lang/String;)V
    .locals 2
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 457
    invoke-static {}, Lcn/bmob/v3/update/BmobUpdateAgent;->V()Ljava/util/List;

    move-result-object v0

    .line 458
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 459
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 460
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_0
    :goto_0
    invoke-static {v0}, Lcn/bmob/v3/update/BmobUpdateAgent;->Code(Ljava/util/List;)V

    .line 466
    return-void

    .line 463
    :cond_1
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static deleteIgnoreVersion(Ljava/lang/String;)V
    .locals 2
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 472
    invoke-static {}, Lcn/bmob/v3/update/BmobUpdateAgent;->V()Ljava/util/List;

    move-result-object v0

    .line 473
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 474
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 478
    :cond_0
    invoke-static {v0}, Lcn/bmob/v3/update/BmobUpdateAgent;->Code(Ljava/util/List;)V

    .line 479
    return-void
.end method

.method public static forceUpdate(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    const/4 v0, 0x1

    invoke-static {v0}, Lcn/bmob/v3/update/a/This;->Z(Z)V

    .line 118
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/bmob/v3/update/a/This;->V(Z)V

    .line 119
    invoke-static {p0}, Lcn/bmob/v3/update/BmobUpdateAgent;->V(Landroid/content/Context;)V

    .line 120
    return-void
.end method

.method public static initAppVersion()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcn/bmob/v3/update/AppVersion;

    invoke-direct {v0}, Lcn/bmob/v3/update/AppVersion;-><init>()V

    .line 47
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/bmob/v3/update/AppVersion;->setUpdate_log(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/bmob/v3/update/AppVersion;->setVersion(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/bmob/v3/update/AppVersion;->setVersion_i(Ljava/lang/Integer;)V

    .line 48
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcn/bmob/v3/update/AppVersion;->setTarget_size(Ljava/lang/String;)V

    invoke-static {}, Lcn/bmob/v3/datatype/BmobFile;->createEmptyFile()Lcn/bmob/v3/datatype/BmobFile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/bmob/v3/update/AppVersion;->setPath(Lcn/bmob/v3/datatype/BmobFile;)V

    .line 49
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/bmob/v3/update/AppVersion;->setAndroid_url(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/bmob/v3/update/AppVersion;->setChannel(Ljava/lang/String;)V

    .line 50
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/bmob/v3/update/AppVersion;->setIos_url(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/bmob/v3/update/AppVersion;->setIsforce(Ljava/lang/Boolean;)V

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Lcn/bmob/v3/update/AppVersion;->setPlatform(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Lcn/bmob/v3/update/AppVersion;->saveObservable()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/update/BmobUpdateAgent$1;

    invoke-direct {v1}, Lcn/bmob/v3/update/BmobUpdateAgent$1;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 58
    new-instance v1, Lcn/bmob/v3/BmobQuery;

    invoke-direct {v1}, Lcn/bmob/v3/BmobQuery;-><init>()V

    .line 59
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/bmob/v3/BmobQuery;->setLimit(I)V

    .line 60
    const-class v2, Lcn/bmob/v3/update/AppVersion;

    invoke-virtual {v1, v2}, Lcn/bmob/v3/BmobQuery;->findObjectsObservable(Ljava/lang/Class;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcn/bmob/v3/update/BmobUpdateAgent$4;

    invoke-direct {v2, v0}, Lcn/bmob/v3/update/BmobUpdateAgent$4;-><init>(Lrx/Observable;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcn/bmob/v3/update/BmobUpdateAgent$3;

    invoke-direct {v2, v0}, Lcn/bmob/v3/update/BmobUpdateAgent$3;-><init>(Lrx/Observable;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->onErrorResumeNext(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/update/BmobUpdateAgent$2;

    invoke-direct {v1}, Lcn/bmob/v3/update/BmobUpdateAgent$2;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    .line 96
    return-void
.end method

.method public static isIgnored(Ljava/lang/String;)Z
    .locals 3
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 414
    invoke-static {}, Lcn/bmob/v3/update/BmobUpdateAgent;->V()Ljava/util/List;

    move-result-object v1

    .line 415
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 416
    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    const/4 v0, 0x1

    .line 422
    :cond_0
    return v0
.end method

.method public static setDefault()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 141
    const/4 v0, 0x1

    invoke-static {v0}, Lcn/bmob/v3/update/BmobUpdateAgent;->setUpdateOnlyWifi(Z)V

    .line 142
    invoke-static {v1}, Lcn/bmob/v3/update/BmobUpdateAgent;->setUpdateListener(Lcn/bmob/v3/listener/BmobUpdateListener;)V

    .line 143
    invoke-static {v1}, Lcn/bmob/v3/update/BmobUpdateAgent;->setDialogListener(Lcn/bmob/v3/listener/BmobDialogButtonListener;)V

    .line 144
    return-void
.end method

.method public static setDialogListener(Lcn/bmob/v3/listener/BmobDialogButtonListener;)V
    .locals 0
    .param p0, "buttonListener"    # Lcn/bmob/v3/listener/BmobDialogButtonListener;

    .prologue
    .line 182
    sput-object p0, Lcn/bmob/v3/update/BmobUpdateAgent;->Code:Lcn/bmob/v3/listener/BmobDialogButtonListener;

    .line 183
    return-void
.end method

.method public static setUpdateCheckConfig(Z)V
    .locals 0
    .param p0, "isCheck"    # Z

    .prologue
    .line 167
    invoke-static {p0}, Lcn/bmob/v3/update/a/This;->I(Z)V

    .line 168
    return-void
.end method

.method public static setUpdateListener(Lcn/bmob/v3/listener/BmobUpdateListener;)V
    .locals 0
    .param p0, "paramBmobUpdateListener"    # Lcn/bmob/v3/listener/BmobUpdateListener;

    .prologue
    .line 175
    sput-object p0, Lcn/bmob/v3/update/BmobUpdateAgent;->V:Lcn/bmob/v3/listener/BmobUpdateListener;

    .line 176
    return-void
.end method

.method public static setUpdateOnlyWifi(Z)V
    .locals 0
    .param p0, "updateOnlyWifi"    # Z

    .prologue
    .line 154
    invoke-static {p0}, Lcn/bmob/v3/update/a/This;->Code(Z)V

    .line 155
    return-void
.end method

.method public static silentUpdate(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    const-string v0, "3"

    invoke-static {p0}, Lcn/bmob/v3/b/From;->Code(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/bmob/v3/update/a/This;->Code()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/bmob/v3/update/a/This;->Z(Z)V

    .line 132
    const/4 v0, 0x1

    invoke-static {v0}, Lcn/bmob/v3/update/a/This;->V(Z)V

    .line 133
    invoke-static {p0}, Lcn/bmob/v3/update/BmobUpdateAgent;->V(Landroid/content/Context;)V

    .line 135
    :cond_1
    return-void
.end method

.method public static startInstall(Landroid/content/Context;Ljava/io/File;)V
    .locals 3
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "paramFile"    # Ljava/io/File;

    .prologue
    .line 309
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 311
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 314
    return-void
.end method

.method public static update(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 104
    const-string v0, "3"

    invoke-static {p0}, Lcn/bmob/v3/b/From;->Code(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/bmob/v3/update/a/This;->Code()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    :cond_0
    invoke-static {v2}, Lcn/bmob/v3/update/a/This;->Z(Z)V

    .line 107
    invoke-static {v2}, Lcn/bmob/v3/update/a/This;->V(Z)V

    .line 108
    invoke-static {p0}, Lcn/bmob/v3/update/BmobUpdateAgent;->V(Landroid/content/Context;)V

    .line 110
    :cond_1
    return-void
.end method
