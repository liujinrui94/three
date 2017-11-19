.class final Lcn/bmob/v3/update/BmobUpdateAgent$5;
.super Lcn/bmob/v3/listener/FindListener;
.source "BmobUpdateAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/update/BmobUpdateAgent;->V(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/bmob/v3/listener/FindListener",
        "<",
        "Lcn/bmob/v3/update/AppVersion;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic Code:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcn/bmob/v3/update/BmobUpdateAgent$5;->Code:Landroid/content/Context;

    invoke-direct {p0}, Lcn/bmob/v3/listener/FindListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic done(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 327
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcn/bmob/v3/exception/BmobException;

    invoke-virtual {p0, p1, p2}, Lcn/bmob/v3/update/BmobUpdateAgent$5;->done(Ljava/util/List;Lcn/bmob/v3/exception/BmobException;)V

    return-void
.end method

.method public final done(Ljava/util/List;Lcn/bmob/v3/exception/BmobException;)V
    .locals 10
    .param p2, "e"    # Lcn/bmob/v3/exception/BmobException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/update/AppVersion;",
            ">;",
            "Lcn/bmob/v3/exception/BmobException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lcn/bmob/v3/update/AppVersion;>;"
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 331
    if-nez p2, :cond_9

    .line 332
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 333
    new-instance v1, Lcn/bmob/v3/update/UpdateResponse;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/bmob/v3/update/AppVersion;

    invoke-direct {v1, v0}, Lcn/bmob/v3/update/UpdateResponse;-><init>(Lcn/bmob/v3/update/AppVersion;)V

    .line 334
    iget-wide v2, v1, Lcn/bmob/v3/update/UpdateResponse;->target_size:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    .line 335
    invoke-static {}, Lcn/bmob/v3/update/BmobUpdateAgent;->Code()Lcn/bmob/v3/listener/BmobUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    invoke-static {}, Lcn/bmob/v3/update/BmobUpdateAgent;->Code()Lcn/bmob/v3/listener/BmobUpdateListener;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/update/UpdateResponse;

    const-string v2, "target_size\u4e3a\u7a7a\u6216\u683c\u5f0f\u4e0d\u5bf9\uff0c\u8bf7\u586b\u5199apk\u6587\u4ef6\u5927\u5c0f(long\u7c7b\u578b)\u3002"

    invoke-direct {v1, v7, v2}, Lcn/bmob/v3/update/UpdateResponse;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Lcn/bmob/v3/listener/BmobUpdateListener;->onUpdateReturned(ILcn/bmob/v3/update/UpdateResponse;)V

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v0, v1, Lcn/bmob/v3/update/UpdateResponse;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 342
    invoke-static {}, Lcn/bmob/v3/update/BmobUpdateAgent;->Code()Lcn/bmob/v3/listener/BmobUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    invoke-static {}, Lcn/bmob/v3/update/BmobUpdateAgent;->Code()Lcn/bmob/v3/listener/BmobUpdateListener;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/update/UpdateResponse;

    const-string v2, "path/android_url\u9700\u586b\u5199\u5176\u4e2d\u4e4b\u4e00\u3002"

    invoke-direct {v1, v7, v2}, Lcn/bmob/v3/update/UpdateResponse;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Lcn/bmob/v3/listener/BmobUpdateListener;->onUpdateReturned(ILcn/bmob/v3/update/UpdateResponse;)V

    goto :goto_0

    .line 347
    :cond_2
    invoke-static {}, Lcn/bmob/v3/update/BmobUpdateAgent;->Code()Lcn/bmob/v3/listener/BmobUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 348
    invoke-static {}, Lcn/bmob/v3/update/BmobUpdateAgent;->Code()Lcn/bmob/v3/listener/BmobUpdateListener;

    move-result-object v0

    invoke-interface {v0, v6, v1}, Lcn/bmob/v3/listener/BmobUpdateListener;->onUpdateReturned(ILcn/bmob/v3/update/UpdateResponse;)V

    .line 350
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcn/bmob/v3/update/UpdateResponse;->path_md5:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 352
    invoke-static {}, Lcn/bmob/v3/update/a/This;->I()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 353
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 355
    iget-object v2, p0, Lcn/bmob/v3/update/BmobUpdateAgent$5;->Code:Landroid/content/Context;

    invoke-static {v2, v1, v0, v6}, Lcn/bmob/v3/update/BmobUpdateAgent;->Code(Landroid/content/Context;Lcn/bmob/v3/update/UpdateResponse;Ljava/io/File;Z)V

    goto :goto_0

    .line 358
    :cond_4
    const/4 v2, 0x6

    iget-object v3, p0, Lcn/bmob/v3/update/BmobUpdateAgent$5;->Code:Landroid/content/Context;

    invoke-static {v2, v3, v1, v0}, Lcn/bmob/v3/update/BmobUpdateAgent;->Code(ILandroid/content/Context;Lcn/bmob/v3/update/UpdateResponse;Ljava/io/File;)V

    goto :goto_0

    .line 361
    :cond_5
    invoke-static {}, Lcn/bmob/v3/update/a/This;->B()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 362
    iget-object v2, p0, Lcn/bmob/v3/update/BmobUpdateAgent$5;->Code:Landroid/content/Context;

    invoke-static {v2, v1, v0, v6}, Lcn/bmob/v3/update/BmobUpdateAgent;->Code(Landroid/content/Context;Lcn/bmob/v3/update/UpdateResponse;Ljava/io/File;Z)V

    goto :goto_0

    .line 364
    :cond_6
    iget-object v2, v1, Lcn/bmob/v3/update/UpdateResponse;->version_i:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/bmob/v3/update/BmobUpdateAgent;->isIgnored(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 365
    iget-object v2, p0, Lcn/bmob/v3/update/BmobUpdateAgent$5;->Code:Landroid/content/Context;

    invoke-static {v2, v1, v0, v8}, Lcn/bmob/v3/update/BmobUpdateAgent;->Code(Landroid/content/Context;Lcn/bmob/v3/update/UpdateResponse;Ljava/io/File;Z)V

    goto :goto_0

    .line 367
    :cond_7
    invoke-static {}, Lcn/bmob/v3/update/BmobUpdateAgent;->Code()Lcn/bmob/v3/listener/BmobUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    invoke-static {}, Lcn/bmob/v3/update/BmobUpdateAgent;->Code()Lcn/bmob/v3/listener/BmobUpdateListener;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/update/UpdateResponse;

    const-string v2, "\u8be5\u7248\u672c\u5df2\u88ab\u5ffd\u7565\u66f4\u65b0"

    invoke-direct {v1, v9, v2}, Lcn/bmob/v3/update/UpdateResponse;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v9, v1}, Lcn/bmob/v3/listener/BmobUpdateListener;->onUpdateReturned(ILcn/bmob/v3/update/UpdateResponse;)V

    goto/16 :goto_0

    .line 374
    :cond_8
    invoke-static {}, Lcn/bmob/v3/update/BmobUpdateAgent;->Code()Lcn/bmob/v3/listener/BmobUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    invoke-static {}, Lcn/bmob/v3/update/BmobUpdateAgent;->Code()Lcn/bmob/v3/listener/BmobUpdateListener;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/update/UpdateResponse;

    const-string v2, "\u672a\u67e5\u8be2\u5230\u7248\u672c\u66f4\u65b0\u4fe1\u606f\u3002"

    invoke-direct {v1, v8, v2}, Lcn/bmob/v3/update/UpdateResponse;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v8, v1}, Lcn/bmob/v3/listener/BmobUpdateListener;->onUpdateReturned(ILcn/bmob/v3/update/UpdateResponse;)V

    goto/16 :goto_0

    .line 379
    :cond_9
    invoke-static {}, Lcn/bmob/v3/update/BmobUpdateAgent;->Code()Lcn/bmob/v3/listener/BmobUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    invoke-static {}, Lcn/bmob/v3/update/BmobUpdateAgent;->Code()Lcn/bmob/v3/listener/BmobUpdateListener;

    move-result-object v0

    const/4 v1, -0x1

    new-instance v2, Lcn/bmob/v3/update/UpdateResponse;

    invoke-virtual {p2}, Lcn/bmob/v3/exception/BmobException;->getErrorCode()I

    move-result v3

    invoke-virtual {p2}, Lcn/bmob/v3/exception/BmobException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcn/bmob/v3/update/UpdateResponse;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcn/bmob/v3/listener/BmobUpdateListener;->onUpdateReturned(ILcn/bmob/v3/update/UpdateResponse;)V

    goto/16 :goto_0
.end method
