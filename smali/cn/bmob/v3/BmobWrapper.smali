.class public Lcn/bmob/v3/BmobWrapper;
.super Ljava/lang/Object;
.source "BmobWrapper.java"


# static fields
.field private static Code:[B

.field private static volatile V:Lcn/bmob/v3/BmobWrapper;


# instance fields
.field private final B:J

.field private final C:I

.field private D:Ljava/io/File;

.field private F:Ljava/io/File;

.field private final I:Ljava/lang/String;

.field private final S:J

.field private final Z:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcn/bmob/v3/BmobWrapper;->Code:[B

    return-void
.end method

.method private constructor <init>(Lcn/bmob/v3/BmobConfig;)V
    .locals 2
    .param p1, "config"    # Lcn/bmob/v3/BmobConfig;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iget-object v0, p1, Lcn/bmob/v3/BmobConfig;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/BmobWrapper;->Z:Landroid/content/Context;

    .line 43
    iget-object v0, p1, Lcn/bmob/v3/BmobConfig;->applicationId:Ljava/lang/String;

    iput-object v0, p0, Lcn/bmob/v3/BmobWrapper;->I:Ljava/lang/String;

    .line 44
    iget-wide v0, p1, Lcn/bmob/v3/BmobConfig;->connectTimeout:J

    iput-wide v0, p0, Lcn/bmob/v3/BmobWrapper;->B:J

    .line 45
    iget v0, p1, Lcn/bmob/v3/BmobConfig;->uploadBlockSize:I

    iput v0, p0, Lcn/bmob/v3/BmobWrapper;->C:I

    .line 46
    iget-wide v0, p1, Lcn/bmob/v3/BmobConfig;->fileExpiration:J

    iput-wide v0, p0, Lcn/bmob/v3/BmobWrapper;->S:J

    .line 48
    iget-object v0, p0, Lcn/bmob/v3/BmobWrapper;->Z:Landroid/content/Context;

    iget-object v1, p0, Lcn/bmob/v3/BmobWrapper;->I:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/bmob/v3/helper/BmobNative;->init(Landroid/content/Context;Ljava/lang/String;)Z

    .line 50
    return-void
.end method

.method private static Code(Ljava/io/File;)Ljava/io/File;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    :cond_0
    return-object p0
.end method

.method static Code(Lcn/bmob/v3/BmobConfig;)V
    .locals 0

    .prologue
    .line 28
    invoke-static {p0}, Lcn/bmob/v3/BmobWrapper;->V(Lcn/bmob/v3/BmobConfig;)Lcn/bmob/v3/BmobWrapper;

    .line 29
    return-void
.end method

.method private static V(Lcn/bmob/v3/BmobConfig;)Lcn/bmob/v3/BmobWrapper;
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcn/bmob/v3/BmobWrapper;->V:Lcn/bmob/v3/BmobWrapper;

    if-nez v0, :cond_1

    .line 33
    sget-object v1, Lcn/bmob/v3/BmobWrapper;->Code:[B

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcn/bmob/v3/BmobWrapper;->V:Lcn/bmob/v3/BmobWrapper;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcn/bmob/v3/BmobWrapper;

    invoke-direct {v0, p0}, Lcn/bmob/v3/BmobWrapper;-><init>(Lcn/bmob/v3/BmobConfig;)V

    sput-object v0, Lcn/bmob/v3/BmobWrapper;->V:Lcn/bmob/v3/BmobWrapper;

    .line 37
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    sget-object v0, Lcn/bmob/v3/BmobWrapper;->V:Lcn/bmob/v3/BmobWrapper;

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcn/bmob/v3/BmobWrapper;
    .locals 2

    .prologue
    .line 57
    sget-object v1, Lcn/bmob/v3/BmobWrapper;->Code:[B

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lcn/bmob/v3/BmobWrapper;->V:Lcn/bmob/v3/BmobWrapper;

    monitor-exit v1

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method final Code()Ljava/io/File;
    .locals 4

    .prologue
    .line 63
    sget-object v1, Lcn/bmob/v3/BmobWrapper;->Code:[B

    monitor-enter v1

    .line 64
    :try_start_0
    iget-object v0, p0, Lcn/bmob/v3/BmobWrapper;->F:Ljava/io/File;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcn/bmob/v3/BmobWrapper;->Z:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "cn.bmob"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/bmob/v3/BmobWrapper;->F:Ljava/io/File;

    .line 67
    :cond_0
    iget-object v0, p0, Lcn/bmob/v3/BmobWrapper;->F:Ljava/io/File;

    invoke-static {v0}, Lcn/bmob/v3/BmobWrapper;->Code(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final V()Ljava/io/File;
    .locals 4

    .prologue
    .line 72
    sget-object v1, Lcn/bmob/v3/BmobWrapper;->Code:[B

    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcn/bmob/v3/BmobWrapper;->D:Ljava/io/File;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcn/bmob/v3/BmobWrapper;->Z:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "cn.bmob"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/bmob/v3/BmobWrapper;->D:Ljava/io/File;

    .line 76
    :cond_0
    iget-object v0, p0, Lcn/bmob/v3/BmobWrapper;->D:Ljava/io/File;

    invoke-static {v0}, Lcn/bmob/v3/BmobWrapper;->Code(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcn/bmob/v3/BmobWrapper;->Z:Landroid/content/Context;

    return-object v0
.end method

.method public getConnectTimeout()J
    .locals 4

    .prologue
    .line 94
    iget-wide v0, p0, Lcn/bmob/v3/BmobWrapper;->B:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 95
    sget v0, Lcn/bmob/v3/BmobConstants;->CONNECT_TIMEOUT:I

    int-to-long v0, v0

    .line 97
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcn/bmob/v3/BmobWrapper;->B:J

    goto :goto_0
.end method

.method public getFileExpiration()J
    .locals 4

    .prologue
    .line 116
    iget-wide v0, p0, Lcn/bmob/v3/BmobWrapper;->S:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 117
    sget-wide v0, Lcn/bmob/v3/BmobConstants;->EXPIRATION:J

    .line 119
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcn/bmob/v3/BmobWrapper;->S:J

    goto :goto_0
.end method

.method public getUploadBlockSize()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcn/bmob/v3/BmobWrapper;->C:I

    if-nez v0, :cond_0

    .line 106
    sget v0, Lcn/bmob/v3/BmobConstants;->BLOCK_SIZE:I

    .line 108
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/bmob/v3/BmobWrapper;->C:I

    goto :goto_0
.end method
