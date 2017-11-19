.class public Lcn/bmob/v3/Bmob;
.super Ljava/lang/Object;
.source "Bmob.java"


# static fields
.field private static Code:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcn/bmob/v3/Bmob;->Code:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Code(Lcn/bmob/v3/listener/QueryListListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/bmob/v3/listener/QueryListListener",
            "<",
            "Lcn/bmob/v3/datatype/BmobTableSchema;",
            ">;)",
            "Lcn/bmob/v3/http/acknowledge;"
        }
    .end annotation

    .prologue
    .line 188
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 190
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 192
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string v1, "c"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 197
    :goto_0
    invoke-static {}, Lcn/bmob/v3/http/thing;->Code()Lcn/bmob/v3/http/thing;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcn/bmob/v3/http/thing;->Code(Lorg/json/JSONObject;Lcn/bmob/v3/listener/QueryListListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0

    .line 194
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 195
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 194
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static Code(Ljava/lang/String;Lcn/bmob/v3/listener/QueryListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/listener/QueryListener",
            "<",
            "Lcn/bmob/v3/datatype/BmobTableSchema;",
            ">;)",
            "Lcn/bmob/v3/http/acknowledge;"
        }
    .end annotation

    .prologue
    .line 216
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 218
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 220
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    const-string v1, "c"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 225
    :goto_0
    invoke-static {}, Lcn/bmob/v3/http/thing;->Code()Lcn/bmob/v3/http/thing;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcn/bmob/v3/http/thing;->Code(Lorg/json/JSONObject;Lcn/bmob/v3/listener/QueryListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0

    .line 222
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 223
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 222
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static Code()V
    .locals 2

    .prologue
    .line 117
    invoke-static {}, Lcn/bmob/v3/BmobWrapper;->getInstance()Lcn/bmob/v3/BmobWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/BmobWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "applicationContext is null. You must call initialize  before using the Bmob library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    return-void
.end method

.method public static getAllTableSchema(Lcn/bmob/v3/listener/QueryListListener;)Lrx/Subscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/bmob/v3/listener/QueryListListener",
            "<",
            "Lcn/bmob/v3/datatype/BmobTableSchema;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "listener":Lcn/bmob/v3/listener/QueryListListener;, "Lcn/bmob/v3/listener/QueryListListener<Lcn/bmob/v3/datatype/BmobTableSchema;>;"
    invoke-static {p0}, Lcn/bmob/v3/Bmob;->Code(Lcn/bmob/v3/listener/QueryListListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public static getAllTableSchemaObservable()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/datatype/BmobTableSchema;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/bmob/v3/Bmob;->Code(Lcn/bmob/v3/listener/QueryListListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lcn/bmob/v3/Bmob;->Code()V

    .line 130
    invoke-static {}, Lcn/bmob/v3/BmobWrapper;->getInstance()Lcn/bmob/v3/BmobWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/BmobWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcn/bmob/v3/BmobWrapper;->getInstance()Lcn/bmob/v3/BmobWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/BmobWrapper;->Code()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheDir(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "subDir"    # Ljava/lang/String;

    .prologue
    .line 89
    sget-object v1, Lcn/bmob/v3/Bmob;->Code:[B

    monitor-enter v1

    .line 90
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcn/bmob/v3/Bmob;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 94
    :cond_0
    monitor-exit v1

    return-object v0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getConnectTimeout()J
    .locals 2

    .prologue
    .line 138
    invoke-static {}, Lcn/bmob/v3/Bmob;->Code()V

    .line 139
    invoke-static {}, Lcn/bmob/v3/BmobWrapper;->getInstance()Lcn/bmob/v3/BmobWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/BmobWrapper;->getConnectTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFileBlockSize()I
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lcn/bmob/v3/Bmob;->Code()V

    .line 148
    invoke-static {}, Lcn/bmob/v3/BmobWrapper;->getInstance()Lcn/bmob/v3/BmobWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/BmobWrapper;->getUploadBlockSize()I

    move-result v0

    return v0
.end method

.method public static getFileExpiration()J
    .locals 2

    .prologue
    .line 156
    invoke-static {}, Lcn/bmob/v3/Bmob;->Code()V

    .line 157
    invoke-static {}, Lcn/bmob/v3/BmobWrapper;->getInstance()Lcn/bmob/v3/BmobWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/BmobWrapper;->getFileExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFilesDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcn/bmob/v3/BmobWrapper;->getInstance()Lcn/bmob/v3/BmobWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/BmobWrapper;->V()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getFilesDir(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "subDir"    # Ljava/lang/String;

    .prologue
    .line 104
    sget-object v1, Lcn/bmob/v3/Bmob;->Code:[B

    monitor-enter v1

    .line 105
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcn/bmob/v3/Bmob;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 109
    :cond_0
    monitor-exit v1

    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getServerTime(Lcn/bmob/v3/listener/QueryListener;)Lrx/Subscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/bmob/v3/listener/QueryListener",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "listener":Lcn/bmob/v3/listener/QueryListener;, "Lcn/bmob/v3/listener/QueryListener<Ljava/lang/Long;>;"
    invoke-static {}, Lcn/bmob/v3/http/thing;->Code()Lcn/bmob/v3/http/thing;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/bmob/v3/http/thing;->Code(Lcn/bmob/v3/listener/QueryListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public static getServerTimeObservable()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    invoke-static {}, Lcn/bmob/v3/http/thing;->Code()Lcn/bmob/v3/http/thing;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/thing;->Code(Lcn/bmob/v3/listener/QueryListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static getTableSchema(Ljava/lang/String;Lcn/bmob/v3/listener/QueryListener;)Lrx/Subscription;
    .locals 1
    .param p0, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/listener/QueryListener",
            "<",
            "Lcn/bmob/v3/datatype/BmobTableSchema;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, "listener":Lcn/bmob/v3/listener/QueryListener;, "Lcn/bmob/v3/listener/QueryListener<Lcn/bmob/v3/datatype/BmobTableSchema;>;"
    invoke-static {p0, p1}, Lcn/bmob/v3/Bmob;->Code(Ljava/lang/String;Lcn/bmob/v3/listener/QueryListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public static getTableSchemaObservable(Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p0, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcn/bmob/v3/datatype/BmobTableSchema;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/bmob/v3/Bmob;->Code(Ljava/lang/String;Lcn/bmob/v3/listener/QueryListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appkey"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v0, Lcn/bmob/v3/BmobConfig$Builder;

    invoke-direct {v0, p0}, Lcn/bmob/v3/BmobConfig$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcn/bmob/v3/BmobConfig$Builder;->setApplicationId(Ljava/lang/String;)Lcn/bmob/v3/BmobConfig$Builder;

    move-result-object v0

    sget v1, Lcn/bmob/v3/BmobConstants;->BLOCK_SIZE:I

    invoke-virtual {v0, v1}, Lcn/bmob/v3/BmobConfig$Builder;->setUploadBlockSize(I)Lcn/bmob/v3/BmobConfig$Builder;

    move-result-object v0

    sget-wide v2, Lcn/bmob/v3/BmobConstants;->EXPIRATION:J

    invoke-virtual {v0, v2, v3}, Lcn/bmob/v3/BmobConfig$Builder;->setFileExpiration(J)Lcn/bmob/v3/BmobConfig$Builder;

    move-result-object v0

    sget v1, Lcn/bmob/v3/BmobConstants;->CONNECT_TIMEOUT:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcn/bmob/v3/BmobConfig$Builder;->setConnectTimeout(J)Lcn/bmob/v3/BmobConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/BmobConfig$Builder;->build()Lcn/bmob/v3/BmobConfig;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/v3/BmobWrapper;->Code(Lcn/bmob/v3/BmobConfig;)V

    .line 52
    return-void
.end method

.method public static initialize(Lcn/bmob/v3/BmobConfig;)V
    .locals 2
    .param p0, "config"    # Lcn/bmob/v3/BmobConfig;

    .prologue
    .line 59
    iget-object v0, p0, Lcn/bmob/v3/BmobConfig;->applicationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ApplicationId is null. You must call setApplicationId(Your AppId) method in BmobConfig.Builder(context)."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    invoke-static {p0}, Lcn/bmob/v3/BmobWrapper;->Code(Lcn/bmob/v3/BmobConfig;)V

    .line 64
    return-void
.end method

.method public static uploadBatch([Ljava/lang/String;Lcn/bmob/v3/listener/UploadBatchListener;)V
    .locals 0
    .param p0, "filePaths"    # [Ljava/lang/String;
    .param p1, "listener"    # Lcn/bmob/v3/listener/UploadBatchListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 168
    invoke-static {p0, p1}, Lcn/bmob/v3/datatype/BmobFile;->uploadBatch([Ljava/lang/String;Lcn/bmob/v3/listener/UploadBatchListener;)V

    .line 169
    return-void
.end method
