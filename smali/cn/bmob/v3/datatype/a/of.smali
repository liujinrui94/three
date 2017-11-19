.class public abstract Lcn/bmob/v3/datatype/a/of;
.super Ljava/lang/Object;
.source "BmobUploader.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final B:I

.field private static final C:I

.field private static F:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final S:I


# instance fields
.field protected final Code:Lcn/bmob/v3/datatype/BmobFile;

.field private volatile I:Z

.field protected V:Lcn/bmob/v3/listener/UploadFileListener;

.field private volatile Z:Ljava/util/concurrent/Future;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 23
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 29
    sput v0, Lcn/bmob/v3/datatype/a/of;->B:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/bmob/v3/datatype/a/of;->C:I

    .line 30
    sget v0, Lcn/bmob/v3/datatype/a/of;->B:I

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/bmob/v3/datatype/a/of;->S:I

    .line 31
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcn/bmob/v3/datatype/a/of;->C:I

    sget v3, Lcn/bmob/v3/datatype/a/of;->S:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcn/bmob/v3/datatype/a/of;->F:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 34
    sget-object v0, Lcn/bmob/v3/datatype/a/of;->F:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 36
    :cond_0
    return-void
.end method

.method protected constructor <init>(Lcn/bmob/v3/datatype/BmobFile;Lcn/bmob/v3/listener/UploadFileListener;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean v0, p0, Lcn/bmob/v3/datatype/a/of;->I:Z

    .line 39
    iput-object p1, p0, Lcn/bmob/v3/datatype/a/of;->Code:Lcn/bmob/v3/datatype/BmobFile;

    .line 40
    iput-object p2, p0, Lcn/bmob/v3/datatype/a/of;->V:Lcn/bmob/v3/listener/UploadFileListener;

    .line 41
    iput-boolean v0, p0, Lcn/bmob/v3/datatype/a/of;->I:Z

    .line 42
    return-void
.end method


# virtual methods
.method abstract Code()V
.end method

.method public final Code(Z)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 62
    iget-boolean v1, p0, Lcn/bmob/v3/datatype/a/of;->I:Z

    if-nez v1, :cond_2

    .line 63
    iput-boolean v0, p0, Lcn/bmob/v3/datatype/a/of;->I:Z

    .line 1077
    iget-object v1, p0, Lcn/bmob/v3/datatype/a/of;->Z:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    .line 1078
    iget-object v1, p0, Lcn/bmob/v3/datatype/a/of;->Z:Ljava/util/concurrent/Future;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 2056
    :cond_0
    iget-object v1, p0, Lcn/bmob/v3/datatype/a/of;->V:Lcn/bmob/v3/listener/UploadFileListener;

    if-eqz v1, :cond_1

    .line 2057
    iget-object v1, p0, Lcn/bmob/v3/datatype/a/of;->V:Lcn/bmob/v3/listener/UploadFileListener;

    new-instance v2, Lcn/bmob/v3/exception/BmobException;

    const/16 v3, 0x2337

    const-string v4, "your uploading task is canceled."

    invoke-direct {v2, v3, v4}, Lcn/bmob/v3/exception/BmobException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcn/bmob/v3/listener/UploadFileListener;->done(Lcn/bmob/v3/exception/BmobException;)V

    .line 72
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final V()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcn/bmob/v3/datatype/a/of$1;

    invoke-direct {v0, p0}, Lcn/bmob/v3/datatype/a/of$1;-><init>(Lcn/bmob/v3/datatype/a/of;)V

    .line 52
    sget-object v1, Lcn/bmob/v3/datatype/a/of;->F:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/datatype/a/of;->Z:Ljava/util/concurrent/Future;

    .line 53
    return-void
.end method
