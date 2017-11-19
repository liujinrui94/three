.class public final Lcn/bmob/v3/http/of;
.super Landroid/os/AsyncTask;
.source "BmobFileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        "Lcn/bmob/v3/exception/BmobException;",
        ">;"
    }
.end annotation


# instance fields
.field private B:Ljava/io/File;

.field private C:Landroid/content/Context;

.field private Code:Landroid/os/PowerManager$WakeLock;

.field private I:Lcn/bmob/v3/listener/DownloadFileListener;

.field private V:Lcn/bmob/v3/a/b/This;

.field private Z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lcn/bmob/v3/listener/DownloadFileListener;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 36
    iput-object p1, p0, Lcn/bmob/v3/http/of;->C:Landroid/content/Context;

    .line 37
    new-instance v0, Lcn/bmob/v3/a/b/This;

    invoke-direct {v0}, Lcn/bmob/v3/a/b/This;-><init>()V

    iput-object v0, p0, Lcn/bmob/v3/http/of;->V:Lcn/bmob/v3/a/b/This;

    .line 38
    iput-object p2, p0, Lcn/bmob/v3/http/of;->Z:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcn/bmob/v3/http/of;->I:Lcn/bmob/v3/listener/DownloadFileListener;

    .line 40
    iput-object p3, p0, Lcn/bmob/v3/http/of;->B:Ljava/io/File;

    .line 41
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/v3/datatype/a/This;->V(Ljava/io/File;)Z

    .line 42
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 45
    :cond_0
    return-void
.end method

.method private varargs Code()Lcn/bmob/v3/exception/BmobException;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 60
    .line 62
    :try_start_0
    iget-object v1, p0, Lcn/bmob/v3/http/of;->V:Lcn/bmob/v3/a/b/This;

    iget-object v2, p0, Lcn/bmob/v3/http/of;->Z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/bmob/v3/a/b/This;->V(Ljava/lang/String;)Lokhttp3/Response;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    .line 64
    invoke-direct {p0, v1}, Lcn/bmob/v3/http/of;->Code(Lokhttp3/Response;)Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcn/bmob/v3/http/of;->B:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcn/bmob/v3/exception/BmobException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 75
    :cond_0
    :goto_0
    return-object v0

    .line 68
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 69
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 70
    new-instance v0, Lcn/bmob/v3/exception/BmobException;

    const/16 v2, 0x2337

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcn/bmob/v3/exception/BmobException;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 71
    :catch_1
    move-exception v0

    .line 72
    invoke-virtual {v0}, Lcn/bmob/v3/exception/BmobException;->printStackTrace()V

    goto :goto_0
.end method

.method private Code(Lokhttp3/Response;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 111
    .line 112
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 116
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 117
    :try_start_1
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v6

    .line 118
    const-wide/16 v4, 0x0

    .line 119
    iget-object v1, p0, Lcn/bmob/v3/http/of;->B:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcn/bmob/v3/datatype/a/This;->V(Ljava/io/File;)Z

    .line 120
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v8, p0, Lcn/bmob/v3/http/of;->B:Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 121
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v8, -0x1

    if-eq v2, v8, :cond_3

    .line 122
    int-to-long v8, v2

    add-long/2addr v4, v8

    .line 123
    const/4 v8, 0x0

    invoke-virtual {v1, v0, v8, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 124
    iget-object v2, p0, Lcn/bmob/v3/http/of;->I:Lcn/bmob/v3/listener/DownloadFileListener;

    if-eqz v2, :cond_0

    .line 125
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Long;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v2, v8

    const/4 v8, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v2, v8

    invoke-virtual {p0, v2}, Lcn/bmob/v3/http/of;->publishProgress([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    move-object v2, v3

    .line 132
    :goto_1
    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 136
    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 138
    :cond_2
    :goto_3
    throw v0

    .line 128
    :cond_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 129
    iget-object v0, p0, Lcn/bmob/v3/http/of;->B:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    .line 132
    if-eqz v3, :cond_4

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 136
    :cond_4
    :goto_4
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 138
    :goto_5
    return-object v0

    :catch_0
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_3

    .line 131
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcn/bmob/v3/http/of;->Code()Lcn/bmob/v3/exception/BmobException;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 26
    check-cast p1, Lcn/bmob/v3/exception/BmobException;

    .line 1091
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1092
    iget-object v0, p0, Lcn/bmob/v3/http/of;->Code:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1093
    if-nez p1, :cond_2

    .line 1094
    iget-object v0, p0, Lcn/bmob/v3/http/of;->I:Lcn/bmob/v3/listener/DownloadFileListener;

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Lcn/bmob/v3/http/of;->I:Lcn/bmob/v3/listener/DownloadFileListener;

    iget-object v1, p0, Lcn/bmob/v3/http/of;->B:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcn/bmob/v3/listener/DownloadFileListener;->done(Ljava/lang/String;Lcn/bmob/v3/exception/BmobException;)V

    .line 1102
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/bmob/v3/http/of;->I:Lcn/bmob/v3/listener/DownloadFileListener;

    if-eqz v0, :cond_1

    .line 1103
    iget-object v0, p0, Lcn/bmob/v3/http/of;->I:Lcn/bmob/v3/listener/DownloadFileListener;

    invoke-virtual {v0}, Lcn/bmob/v3/listener/DownloadFileListener;->onFinish()V

    .line 26
    :cond_1
    return-void

    .line 1098
    :cond_2
    iget-object v0, p0, Lcn/bmob/v3/http/of;->I:Lcn/bmob/v3/listener/DownloadFileListener;

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcn/bmob/v3/http/of;->I:Lcn/bmob/v3/listener/DownloadFileListener;

    new-instance v1, Lcn/bmob/v3/exception/BmobException;

    invoke-virtual {p1}, Lcn/bmob/v3/exception/BmobException;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcn/bmob/v3/exception/BmobException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/bmob/v3/exception/BmobException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v4, v1}, Lcn/bmob/v3/listener/DownloadFileListener;->done(Ljava/lang/String;Lcn/bmob/v3/exception/BmobException;)V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 3

    .prologue
    .line 49
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 50
    iget-object v0, p0, Lcn/bmob/v3/http/of;->C:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 51
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/http/of;->Code:Landroid/os/PowerManager$WakeLock;

    .line 52
    iget-object v0, p0, Lcn/bmob/v3/http/of;->Code:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 53
    iget-object v0, p0, Lcn/bmob/v3/http/of;->I:Lcn/bmob/v3/listener/DownloadFileListener;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcn/bmob/v3/http/of;->I:Lcn/bmob/v3/listener/DownloadFileListener;

    invoke-virtual {v0}, Lcn/bmob/v3/listener/DownloadFileListener;->internalStart()V

    .line 56
    :cond_0
    return-void
.end method

.method protected final synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 26
    check-cast p1, [Ljava/lang/Long;

    .line 1080
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 1081
    iget-object v0, p0, Lcn/bmob/v3/http/of;->I:Lcn/bmob/v3/listener/DownloadFileListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 1082
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1083
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1084
    long-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    long-to-float v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 1085
    iget-object v1, p0, Lcn/bmob/v3/http/of;->I:Lcn/bmob/v3/listener/DownloadFileListener;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, v2, v3}, Lcn/bmob/v3/listener/DownloadFileListener;->onProgress(Ljava/lang/Integer;J)V

    .line 26
    :cond_0
    return-void
.end method
