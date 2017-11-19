.class public Lcn/bmob/v3/datatype/BmobFile;
.super Ljava/lang/Object;
.source "BmobFile.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7eec2605603768d5L


# instance fields
.field private __type:Ljava/lang/String;

.field private transient context:Landroid/content/Context;

.field private transient downloader:Lcn/bmob/v3/http/of;

.field private filename:Ljava/lang/String;

.field private group:Ljava/lang/String;

.field private transient localFile:Ljava/io/File;

.field private transient uploader:Lcn/bmob/v3/datatype/a/of;

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->filename:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->group:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->url:Ljava/lang/String;

    .line 86
    const-string v0, "File"

    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->__type:Ljava/lang/String;

    .line 93
    invoke-static {}, Lcn/bmob/v3/Bmob;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->context:Landroid/content/Context;

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->filename:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->group:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->url:Ljava/lang/String;

    .line 86
    const-string v0, "File"

    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->__type:Ljava/lang/String;

    .line 101
    invoke-static {}, Lcn/bmob/v3/Bmob;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->context:Landroid/content/Context;

    .line 102
    iput-object p1, p0, Lcn/bmob/v3/datatype/BmobFile;->localFile:Ljava/io/File;

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->filename:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->group:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->url:Ljava/lang/String;

    .line 86
    const-string v0, "File"

    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->__type:Ljava/lang/String;

    .line 112
    invoke-static {}, Lcn/bmob/v3/Bmob;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->context:Landroid/content/Context;

    .line 113
    iput-object p1, p0, Lcn/bmob/v3/datatype/BmobFile;->filename:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lcn/bmob/v3/datatype/BmobFile;->group:Ljava/lang/String;

    .line 115
    iput-object p3, p0, Lcn/bmob/v3/datatype/BmobFile;->url:Ljava/lang/String;

    .line 116
    return-void
.end method

.method static synthetic Code(Lcn/bmob/v3/datatype/BmobFile;Lcn/bmob/v3/http/bean/Upyun;Lcn/bmob/v3/listener/ProgressCallback;)Lrx/Observable;
    .locals 2

    .prologue
    .line 47
    .line 1301
    new-instance v0, Lcn/bmob/v3/datatype/BmobFile$5;

    invoke-direct {v0, p0, p1, p2}, Lcn/bmob/v3/datatype/BmobFile$5;-><init>(Lcn/bmob/v3/datatype/BmobFile;Lcn/bmob/v3/http/bean/Upyun;Lcn/bmob/v3/listener/ProgressCallback;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/datatype/BmobFile$4;

    invoke-direct {v1, p0}, Lcn/bmob/v3/datatype/BmobFile$4;-><init>(Lcn/bmob/v3/datatype/BmobFile;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 47
    return-object v0
.end method

.method private Code()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->uploader:Lcn/bmob/v3/datatype/a/of;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->uploader:Lcn/bmob/v3/datatype/a/of;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/bmob/v3/datatype/a/of;->Code(Z)Z

    .line 367
    :cond_0
    return-void
.end method

.method static synthetic Code(I[Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcn/bmob/v3/listener/UploadBatchListener;)V
    .locals 0

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3, p4}, Lcn/bmob/v3/datatype/BmobFile;->V(I[Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcn/bmob/v3/listener/UploadBatchListener;)V

    return-void
.end method

.method static synthetic Code(Lcn/bmob/v3/datatype/BmobFile;Lcn/bmob/v3/http/bean/Upyun;Lcn/bmob/v3/listener/UploadFileListener;)V
    .locals 2

    .prologue
    .line 47
    .line 1340
    invoke-direct {p0}, Lcn/bmob/v3/datatype/BmobFile;->Code()V

    .line 1341
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->context:Landroid/content/Context;

    .line 1352
    new-instance v1, Lcn/bmob/v3/datatype/a/From;

    invoke-direct {v1, v0, p1, p0, p2}, Lcn/bmob/v3/datatype/a/From;-><init>(Landroid/content/Context;Lcn/bmob/v3/http/bean/Upyun;Lcn/bmob/v3/datatype/BmobFile;Lcn/bmob/v3/listener/UploadFileListener;)V

    .line 1341
    iput-object v1, p0, Lcn/bmob/v3/datatype/BmobFile;->uploader:Lcn/bmob/v3/datatype/a/of;

    .line 1342
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->uploader:Lcn/bmob/v3/datatype/a/of;

    invoke-virtual {v0}, Lcn/bmob/v3/datatype/a/of;->V()V

    .line 47
    return-void
.end method

.method private static Code(ZII[Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcn/bmob/v3/listener/UploadBatchListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/datatype/BmobFile;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/bmob/v3/listener/UploadBatchListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 604
    new-instance v0, Ljava/io/File;

    aget-object v1, p3, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 605
    new-instance v1, Lcn/bmob/v3/datatype/BmobFile;

    invoke-direct {v1, v0}, Lcn/bmob/v3/datatype/BmobFile;-><init>(Ljava/io/File;)V

    .line 606
    new-instance v0, Lcn/bmob/v3/datatype/BmobFile$7;

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move v5, p0

    move v6, p2

    move-object v7, p3

    move v8, p1

    invoke-direct/range {v0 .. v8}, Lcn/bmob/v3/datatype/BmobFile$7;-><init>(Lcn/bmob/v3/datatype/BmobFile;Ljava/util/List;Ljava/util/List;Lcn/bmob/v3/listener/UploadBatchListener;ZI[Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcn/bmob/v3/datatype/BmobFile;->uploadblock(Lcn/bmob/v3/listener/UploadFileListener;)Lrx/Subscription;

    .line 629
    return-void
.end method

.method private Code(Lcn/bmob/v3/listener/BmobErrorCallback;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 422
    iget-object v1, p0, Lcn/bmob/v3/datatype/BmobFile;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 423
    if-eqz p1, :cond_0

    .line 424
    const/16 v1, 0x2334

    const-string v2, "context is null(9012)."

    invoke-virtual {p1, v1, v2}, Lcn/bmob/v3/listener/BmobErrorCallback;->doneError(ILjava/lang/String;)V

    .line 454
    :goto_0
    return v0

    .line 428
    :cond_0
    invoke-static {}, Lcn/bmob/v3/http/I;->V()Ljava/lang/String;

    move-result-object v1

    .line 429
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 430
    if-eqz p1, :cond_1

    .line 431
    const/16 v1, 0x2329

    const-string v2, "AppKey is Null, Please initialize BmobSDK(9001)."

    invoke-virtual {p1, v1, v2}, Lcn/bmob/v3/listener/BmobErrorCallback;->doneError(ILjava/lang/String;)V

    goto :goto_0

    .line 433
    :cond_1
    const-string v1, "bmob"

    const-string v2, "AppKey is Null, Please initialize BmobSDK(9001)."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 437
    :cond_2
    iget-object v1, p0, Lcn/bmob/v3/datatype/BmobFile;->context:Landroid/content/Context;

    invoke-static {v1}, Lcn/bmob/v3/b/From;->V(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 438
    if-eqz p1, :cond_3

    .line 439
    const/16 v1, 0x2338

    const-string v2, "The network is not available,please check your network!(9016)"

    invoke-virtual {p1, v1, v2}, Lcn/bmob/v3/listener/BmobErrorCallback;->doneError(ILjava/lang/String;)V

    goto :goto_0

    .line 441
    :cond_3
    const-string v1, "bmob"

    const-string v2, "The network is not available,please check your network!(9016)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 446
    :cond_4
    iget-object v1, p0, Lcn/bmob/v3/datatype/BmobFile;->context:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    invoke-static {v1, v2}, Lcn/bmob/v3/datatype/a/This;->Code(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 447
    if-eqz p1, :cond_5

    .line 448
    const/16 v1, 0x233d

    const-string v2, "permission not defined. You must write android.permission.WAKE_LOCK in AndroidManifest.xml.\n<uses-permission android:name=\"android.permission.WAKE_LOCK\" />(9021)"

    invoke-virtual {p1, v1, v2}, Lcn/bmob/v3/listener/BmobErrorCallback;->doneError(ILjava/lang/String;)V

    goto :goto_0

    .line 450
    :cond_5
    const-string v1, "bmob"

    const-string v2, "permission not defined. You must write android.permission.WAKE_LOCK in AndroidManifest.xml.\n<uses-permission android:name=\"android.permission.WAKE_LOCK\" />(9021)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 454
    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static Code(Ljava/io/File;Lcn/bmob/v3/listener/BmobErrorCallback;)Z
    .locals 7

    .prologue
    const/16 v6, 0x232f

    const/4 v0, 0x0

    .line 463
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 464
    :cond_0
    if-eqz p1, :cond_1

    .line 465
    const/16 v1, 0x2330

    const-string v2, "the file does not exist."

    invoke-virtual {p1, v1, v2}, Lcn/bmob/v3/listener/BmobErrorCallback;->doneError(ILjava/lang/String;)V

    .line 489
    :goto_0
    return v0

    .line 467
    :cond_1
    const-string v1, "bmob"

    const-string v2, "the file does not exist(9008)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 471
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    .line 472
    if-eqz p1, :cond_3

    .line 473
    const-string v1, "the file length must be greater than zero."

    invoke-virtual {p1, v6, v1}, Lcn/bmob/v3/listener/BmobErrorCallback;->doneError(ILjava/lang/String;)V

    goto :goto_0

    .line 475
    :cond_3
    const-string v1, "bmob"

    const-string v2, "the file length must be greater than zero(9007)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 480
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 481
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 482
    if-eqz p1, :cond_5

    .line 483
    const-string v1, "the file must have suffix."

    invoke-virtual {p1, v6, v1}, Lcn/bmob/v3/listener/BmobErrorCallback;->doneError(ILjava/lang/String;)V

    goto :goto_0

    .line 485
    :cond_5
    const-string v1, "bmob"

    const-string v2, "the file must have suffix(9007)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 489
    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private V()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->downloader:Lcn/bmob/v3/http/of;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->downloader:Lcn/bmob/v3/http/of;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/of;->cancel(Z)Z

    .line 373
    :cond_0
    return-void
.end method

.method private static V(I[Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcn/bmob/v3/listener/UploadBatchListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/datatype/BmobFile;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/bmob/v3/listener/UploadBatchListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 593
    array-length v1, p1

    .line 594
    add-int/lit8 v0, p0, 0x1

    if-ge v0, v1, :cond_0

    .line 595
    const/4 v0, 0x0

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcn/bmob/v3/datatype/BmobFile;->Code(ZII[Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcn/bmob/v3/listener/UploadBatchListener;)V

    .line 599
    :goto_0
    return-void

    .line 597
    :cond_0
    const/4 v0, 0x1

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcn/bmob/v3/datatype/BmobFile;->Code(ZII[Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcn/bmob/v3/listener/UploadBatchListener;)V

    goto :goto_0
.end method

.method public static createEmptyFile()Lcn/bmob/v3/datatype/BmobFile;
    .locals 3

    .prologue
    .line 134
    new-instance v0, Lcn/bmob/v3/datatype/BmobFile;

    new-instance v1, Ljava/io/File;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcn/bmob/v3/datatype/BmobFile;-><init>(Ljava/io/File;)V

    .line 135
    const-string v1, "test.apk"

    invoke-virtual {v0, v1}, Lcn/bmob/v3/datatype/BmobFile;->setFilename(Ljava/lang/String;)V

    .line 136
    return-object v0
.end method

.method public static deleteBatch([Ljava/lang/String;Lcn/bmob/v3/listener/DeleteBatchListener;)Lrx/Subscription;
    .locals 1
    .param p0, "urls"    # [Ljava/lang/String;
    .param p1, "listener"    # Lcn/bmob/v3/listener/DeleteBatchListener;

    .prologue
    .line 414
    invoke-static {}, Lcn/bmob/v3/http/thing;->Code()Lcn/bmob/v3/http/thing;

    invoke-static {p0, p1}, Lcn/bmob/v3/http/thing;->Code([Ljava/lang/String;Lcn/bmob/v3/listener/DeleteBatchListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public static deleteBatchObservable([Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p0, "urls"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcn/bmob/v3/datatype/BmobReturn",
            "<[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 406
    invoke-static {}, Lcn/bmob/v3/http/thing;->Code()Lcn/bmob/v3/http/thing;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/bmob/v3/http/thing;->Code([Ljava/lang/String;Lcn/bmob/v3/listener/DeleteBatchListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static uploadBatch([Ljava/lang/String;Lcn/bmob/v3/listener/UploadBatchListener;)V
    .locals 3
    .param p0, "filePaths"    # [Ljava/lang/String;
    .param p1, "listener"    # Lcn/bmob/v3/listener/UploadBatchListener;

    .prologue
    .line 579
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_2

    .line 580
    :cond_0
    if-eqz p1, :cond_1

    .line 581
    const/16 v0, 0x2330

    const-string v1, "the files does not exist."

    invoke-interface {p1, v0, v1}, Lcn/bmob/v3/listener/UploadBatchListener;->onError(ILjava/lang/String;)V

    .line 589
    :cond_1
    :goto_0
    return-void

    .line 585
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 586
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 588
    const/4 v2, 0x0

    invoke-static {v2, p0, v0, v1, p1}, Lcn/bmob/v3/datatype/BmobFile;->V(I[Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcn/bmob/v3/listener/UploadBatchListener;)V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Lcn/bmob/v3/datatype/BmobFile;->Code()V

    .line 360
    invoke-direct {p0}, Lcn/bmob/v3/datatype/BmobFile;->V()V

    .line 361
    return-void
.end method

.method public delete()Lrx/Subscription;
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/bmob/v3/datatype/BmobFile;->delete(Lcn/bmob/v3/listener/UpdateListener;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lcn/bmob/v3/listener/UpdateListener;)Lrx/Subscription;
    .locals 2
    .param p1, "listener"    # Lcn/bmob/v3/listener/UpdateListener;

    .prologue
    .line 387
    invoke-virtual {p0}, Lcn/bmob/v3/datatype/BmobFile;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-static {}, Lcn/bmob/v3/http/thing;->Code()Lcn/bmob/v3/http/thing;

    const-string v1, "url can\'t be empty"

    invoke-static {v0, v1}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcn/bmob/v3/http/thing;->Code(Ljava/util/List;Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public deleteObservable()Lrx/Observable;
    .locals 3
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
    .line 396
    invoke-virtual {p0}, Lcn/bmob/v3/datatype/BmobFile;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-static {}, Lcn/bmob/v3/http/thing;->Code()Lcn/bmob/v3/http/thing;

    const-string v1, "url can\'t be empty"

    invoke-static {v0, v1}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcn/bmob/v3/http/thing;->Code(Ljava/util/List;Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public download(Lcn/bmob/v3/listener/DownloadFileListener;)V
    .locals 3
    .param p1, "listener"    # Lcn/bmob/v3/listener/DownloadFileListener;

    .prologue
    .line 497
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 498
    if-eqz p1, :cond_0

    .line 499
    const/16 v0, 0x2334

    const-string v1, "context is null."

    invoke-virtual {p1, v0, v1}, Lcn/bmob/v3/listener/DownloadFileListener;->doneError(ILjava/lang/String;)V

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/bmob/v3/datatype/BmobFile;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/bmob/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcn/bmob/v3/datatype/BmobFile;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0, v0, p1}, Lcn/bmob/v3/datatype/BmobFile;->download(Ljava/io/File;Lcn/bmob/v3/listener/DownloadFileListener;)V

    goto :goto_0
.end method

.method public download(Ljava/io/File;Lcn/bmob/v3/listener/DownloadFileListener;)V
    .locals 3
    .param p1, "savePath"    # Ljava/io/File;
    .param p2, "listener"    # Lcn/bmob/v3/listener/DownloadFileListener;

    .prologue
    const/16 v2, 0x233a

    .line 512
    invoke-direct {p0, p2}, Lcn/bmob/v3/datatype/BmobFile;->Code(Lcn/bmob/v3/listener/BmobErrorCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    invoke-virtual {p0}, Lcn/bmob/v3/datatype/BmobFile;->getFileUrl()Ljava/lang/String;

    move-result-object v0

    .line 516
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 517
    if-eqz p2, :cond_0

    .line 518
    const-string v0, "fileUrl can\'t be empty"

    invoke-virtual {p2, v2, v0}, Lcn/bmob/v3/listener/DownloadFileListener;->doneError(ILjava/lang/String;)V

    goto :goto_0

    .line 522
    :cond_2
    if-nez p1, :cond_3

    .line 523
    if-eqz p2, :cond_0

    .line 524
    const-string v0, "savePath must not be null"

    invoke-virtual {p2, v2, v0}, Lcn/bmob/v3/listener/DownloadFileListener;->doneError(ILjava/lang/String;)V

    goto :goto_0

    .line 528
    :cond_3
    invoke-direct {p0}, Lcn/bmob/v3/datatype/BmobFile;->V()V

    .line 529
    new-instance v1, Lcn/bmob/v3/http/of;

    iget-object v2, p0, Lcn/bmob/v3/datatype/BmobFile;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0, p1, p2}, Lcn/bmob/v3/http/of;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lcn/bmob/v3/listener/DownloadFileListener;)V

    iput-object v1, p0, Lcn/bmob/v3/datatype/BmobFile;->downloader:Lcn/bmob/v3/http/of;

    .line 530
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->downloader:Lcn/bmob/v3/http/of;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/of;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public downloadObservable(Lcn/bmob/v3/listener/ProgressCallback;)Lrx/Observable;
    .locals 3
    .param p1, "listener"    # Lcn/bmob/v3/listener/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/bmob/v3/listener/ProgressCallback;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 534
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/bmob/v3/datatype/BmobFile;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/bmob/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcn/bmob/v3/datatype/BmobFile;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-virtual {p0, v0, p1}, Lcn/bmob/v3/datatype/BmobFile;->downloadObservable(Ljava/io/File;Lcn/bmob/v3/listener/ProgressCallback;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public downloadObservable(Ljava/io/File;Lcn/bmob/v3/listener/ProgressCallback;)Lrx/Observable;
    .locals 1
    .param p1, "savePath"    # Ljava/io/File;
    .param p2, "listener"    # Lcn/bmob/v3/listener/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcn/bmob/v3/listener/ProgressCallback;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 544
    new-instance v0, Lcn/bmob/v3/datatype/BmobFile$6;

    invoke-direct {v0, p0, p1, p2}, Lcn/bmob/v3/datatype/BmobFile$6;-><init>(Lcn/bmob/v3/datatype/BmobFile;Ljava/io/File;Lcn/bmob/v3/listener/ProgressCallback;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getFileUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->url:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->url:Ljava/lang/String;

    .line 199
    :goto_0
    return-object v0

    .line 195
    :cond_0
    new-instance v0, Lcn/bmob/v3/b/The;

    invoke-direct {v0}, Lcn/bmob/v3/b/The;-><init>()V

    .line 196
    const-string v1, "file"

    const-string v2, "http://file.bmob.cn"

    invoke-virtual {v0, v1, v2}, Lcn/bmob/v3/b/The;->V(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/bmob/v3/datatype/BmobFile;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->localFile:Ljava/io/File;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->url:Ljava/lang/String;

    return-object v0
.end method

.method public obtain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-static {}, Lcn/bmob/v3/Bmob;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->context:Landroid/content/Context;

    .line 125
    iput-object p1, p0, Lcn/bmob/v3/datatype/BmobFile;->filename:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lcn/bmob/v3/datatype/BmobFile;->group:Ljava/lang/String;

    .line 127
    iput-object p3, p0, Lcn/bmob/v3/datatype/BmobFile;->url:Ljava/lang/String;

    .line 128
    return-void
.end method

.method protected setFilename(Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcn/bmob/v3/datatype/BmobFile;->filename:Ljava/lang/String;

    .line 184
    return-void
.end method

.method protected setGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "group"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcn/bmob/v3/datatype/BmobFile;->group:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcn/bmob/v3/datatype/BmobFile;->url:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public upload(Lcn/bmob/v3/listener/UploadFileListener;)Lrx/Subscription;
    .locals 1
    .param p1, "listener"    # Lcn/bmob/v3/listener/UploadFileListener;

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Lcn/bmob/v3/datatype/BmobFile;->uploadblock(Lcn/bmob/v3/listener/UploadFileListener;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public uploadObservable(Lcn/bmob/v3/listener/ProgressCallback;)Lrx/Observable;
    .locals 2
    .param p1, "listener"    # Lcn/bmob/v3/listener/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/bmob/v3/listener/ProgressCallback;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 261
    invoke-direct {p0, v0}, Lcn/bmob/v3/datatype/BmobFile;->Code(Lcn/bmob/v3/listener/BmobErrorCallback;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/bmob/v3/datatype/BmobFile;->localFile:Ljava/io/File;

    invoke-static {v1, v0}, Lcn/bmob/v3/datatype/BmobFile;->Code(Ljava/io/File;Lcn/bmob/v3/listener/BmobErrorCallback;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-object v0

    .line 264
    :cond_1
    new-instance v0, Lcn/bmob/v3/datatype/BmobFile$3;

    invoke-direct {v0, p0}, Lcn/bmob/v3/datatype/BmobFile$3;-><init>(Lcn/bmob/v3/datatype/BmobFile;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/datatype/BmobFile$2;

    invoke-direct {v1, p0, p1}, Lcn/bmob/v3/datatype/BmobFile$2;-><init>(Lcn/bmob/v3/datatype/BmobFile;Lcn/bmob/v3/listener/ProgressCallback;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method

.method public uploadblock(Lcn/bmob/v3/listener/UploadFileListener;)Lrx/Subscription;
    .locals 2
    .param p1, "listener"    # Lcn/bmob/v3/listener/UploadFileListener;

    .prologue
    .line 222
    .line 1231
    invoke-direct {p0, p1}, Lcn/bmob/v3/datatype/BmobFile;->Code(Lcn/bmob/v3/listener/BmobErrorCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile;->localFile:Ljava/io/File;

    invoke-static {v0, p1}, Lcn/bmob/v3/datatype/BmobFile;->Code(Ljava/io/File;Lcn/bmob/v3/listener/BmobErrorCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1232
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1234
    :cond_1
    if-eqz p1, :cond_2

    .line 1235
    invoke-virtual {p1}, Lcn/bmob/v3/listener/UploadFileListener;->internalStart()V

    .line 1246
    :cond_2
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    new-instance v1, Lcn/bmob/v3/datatype/BmobFile$1;

    invoke-direct {v1, p0, p1}, Lcn/bmob/v3/datatype/BmobFile$1;-><init>(Lcn/bmob/v3/datatype/BmobFile;Lcn/bmob/v3/listener/UploadFileListener;)V

    invoke-virtual {p0, v1}, Lcn/bmob/v3/datatype/BmobFile;->uploadObservable(Lcn/bmob/v3/listener/ProgressCallback;)Lrx/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Lrx/Observable;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/bmob/v3/http/acknowledge$This;->V(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    .line 1237
    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    goto :goto_0
.end method
