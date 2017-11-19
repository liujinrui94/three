.class public final Lcn/bmob/v3/b/acknowledge;
.super Ljava/lang/Object;
.source "DownloadApk.java"


# instance fields
.field B:Ljava/lang/String;

.field C:Ljava/lang/String;

.field Code:Landroid/app/NotificationManager;

.field private F:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field I:Lcn/bmob/v3/helper/NotificationCompat$Builder;

.field private S:Landroid/content/Context;

.field V:Landroid/app/Notification;

.field Z:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcn/bmob/v3/b/acknowledge$1;

    invoke-direct {v0, p0}, Lcn/bmob/v3/b/acknowledge$1;-><init>(Lcn/bmob/v3/b/acknowledge;)V

    iput-object v0, p0, Lcn/bmob/v3/b/acknowledge;->F:Landroid/os/Handler;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/b/acknowledge;->S:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcn/bmob/v3/b/acknowledge;->B:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcn/bmob/v3/b/acknowledge;->S:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcn/bmob/v3/b/acknowledge;->S:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/b/acknowledge;->C:Ljava/lang/String;

    .line 43
    return-void
.end method

.method static synthetic Code(Lcn/bmob/v3/b/acknowledge;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcn/bmob/v3/b/acknowledge;->S:Landroid/content/Context;

    return-object v0
.end method

.method private Code(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Lcn/bmob/v3/helper/NotificationCompat$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 126
    new-instance v0, Lcn/bmob/v3/helper/NotificationCompat$Builder;

    iget-object v1, p0, Lcn/bmob/v3/b/acknowledge;->S:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/bmob/v3/helper/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Lcn/bmob/v3/helper/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Lcn/bmob/v3/helper/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/bmob/v3/helper/NotificationCompat$Builder;->setSmallIcon(I)Lcn/bmob/v3/helper/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcn/bmob/v3/helper/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcn/bmob/v3/helper/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcn/bmob/v3/helper/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcn/bmob/v3/helper/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcn/bmob/v3/helper/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcn/bmob/v3/helper/NotificationCompat$Builder;

    move-result-object v0

    .line 132
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 133
    invoke-virtual {v0, v2}, Lcn/bmob/v3/helper/NotificationCompat$Builder;->setOngoing(Z)Lcn/bmob/v3/helper/NotificationCompat$Builder;

    .line 137
    :cond_0
    :goto_0
    return-object v0

    .line 134
    :cond_1
    const/16 v1, 0x10

    if-ne p1, v1, :cond_0

    .line 135
    invoke-virtual {v0, v2}, Lcn/bmob/v3/helper/NotificationCompat$Builder;->setAutoCancel(Z)Lcn/bmob/v3/helper/NotificationCompat$Builder;

    goto :goto_0
.end method

.method static synthetic Code(Lcn/bmob/v3/b/acknowledge;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Lcn/bmob/v3/helper/NotificationCompat$Builder;
    .locals 7

    .prologue
    .line 29
    const/16 v1, 0x10

    const v2, 0x1080082

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcn/bmob/v3/b/acknowledge;->Code(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Lcn/bmob/v3/helper/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method private Code(II)V
    .locals 2

    .prologue
    .line 205
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 206
    iput p1, v0, Landroid/os/Message;->what:I

    .line 207
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 208
    iget-object v1, p0, Lcn/bmob/v3/b/acknowledge;->F:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 209
    return-void
.end method

.method static synthetic Code(Lcn/bmob/v3/b/acknowledge;I)V
    .locals 4

    .prologue
    .line 29
    .line 2141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/bmob/v3/b/acknowledge;->S:Landroid/content/Context;

    iget-object v2, p0, Lcn/bmob/v3/b/acknowledge;->S:Landroid/content/Context;

    invoke-static {v2}, Lcn/bmob/v3/b/of;->Code(Landroid/content/Context;)Lcn/bmob/v3/b/of;

    move-result-object v2

    const-string v3, "bmob_common_download_notification_prefix"

    invoke-virtual {v2, v3}, Lcn/bmob/v3/b/of;->I(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/bmob/v3/b/acknowledge;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2143
    iget-object v2, p0, Lcn/bmob/v3/b/acknowledge;->I:Lcn/bmob/v3/helper/NotificationCompat$Builder;

    invoke-virtual {v2, v0}, Lcn/bmob/v3/helper/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcn/bmob/v3/helper/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/bmob/v3/helper/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcn/bmob/v3/helper/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcn/bmob/v3/b/acknowledge;->Z:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Lcn/bmob/v3/helper/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcn/bmob/v3/helper/NotificationCompat$Builder;

    .line 2146
    iget-object v0, p0, Lcn/bmob/v3/b/acknowledge;->I:Lcn/bmob/v3/helper/NotificationCompat$Builder;

    invoke-virtual {v0}, Lcn/bmob/v3/helper/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/b/acknowledge;->V:Landroid/app/Notification;

    .line 2147
    iget-object v0, p0, Lcn/bmob/v3/b/acknowledge;->Code:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/bmob/v3/b/acknowledge;->V:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 29
    return-void
.end method


# virtual methods
.method public final Code()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 95
    invoke-static {}, Lcn/bmob/v3/update/a/This;->I()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/bmob/v3/b/acknowledge;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lcn/bmob/v3/b/acknowledge;->S:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcn/bmob/v3/b/acknowledge;->Code:Landroid/app/NotificationManager;

    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 99
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 100
    iget-object v1, p0, Lcn/bmob/v3/b/acknowledge;->S:Landroid/content/Context;

    invoke-static {v1, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/b/acknowledge;->Z:Landroid/app/PendingIntent;

    .line 103
    iget-object v0, p0, Lcn/bmob/v3/b/acknowledge;->S:Landroid/content/Context;

    iget-object v1, p0, Lcn/bmob/v3/b/acknowledge;->S:Landroid/content/Context;

    invoke-static {v1}, Lcn/bmob/v3/b/of;->Code(Landroid/content/Context;)Lcn/bmob/v3/b/of;

    move-result-object v1

    const-string v2, "bmob_common_start_download_notification"

    invoke-virtual {v1, v2}, Lcn/bmob/v3/b/of;->I(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/bmob/v3/b/acknowledge;->S:Landroid/content/Context;

    iget-object v2, p0, Lcn/bmob/v3/b/acknowledge;->S:Landroid/content/Context;

    invoke-static {v2}, Lcn/bmob/v3/b/of;->Code(Landroid/content/Context;)Lcn/bmob/v3/b/of;

    move-result-object v2

    const-string v4, "bmob_common_download_notification_prefix"

    invoke-virtual {v2, v4}, Lcn/bmob/v3/b/of;->I(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/bmob/v3/b/acknowledge;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 105
    const-string v5, "0%"

    .line 107
    const/4 v1, 0x2

    const v2, 0x1080081

    iget-object v6, p0, Lcn/bmob/v3/b/acknowledge;->Z:Landroid/app/PendingIntent;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcn/bmob/v3/b/acknowledge;->Code(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Lcn/bmob/v3/helper/NotificationCompat$Builder;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/b/acknowledge;->I:Lcn/bmob/v3/helper/NotificationCompat$Builder;

    .line 108
    iget-object v0, p0, Lcn/bmob/v3/b/acknowledge;->I:Lcn/bmob/v3/helper/NotificationCompat$Builder;

    invoke-virtual {v0}, Lcn/bmob/v3/helper/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/b/acknowledge;->V:Landroid/app/Notification;

    .line 109
    iget-object v0, p0, Lcn/bmob/v3/b/acknowledge;->Code:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcn/bmob/v3/b/acknowledge;->V:Landroid/app/Notification;

    invoke-virtual {v0, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcn/bmob/v3/b/acknowledge;->B:Ljava/lang/String;

    iget-object v1, p0, Lcn/bmob/v3/b/acknowledge;->S:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, p0, Lcn/bmob/v3/b/acknowledge;->S:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1151
    new-instance v2, Lcn/bmob/v3/b/acknowledge$2;

    invoke-direct {v2, p0, v0, v1}, Lcn/bmob/v3/b/acknowledge$2;-><init>(Lcn/bmob/v3/b/acknowledge;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcn/bmob/v3/b/acknowledge$2;->start()V

    .line 115
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcn/bmob/v3/b/acknowledge;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcn/bmob/v3/b/acknowledge;->S:Landroid/content/Context;

    iget-object v1, p0, Lcn/bmob/v3/b/acknowledge;->S:Landroid/content/Context;

    invoke-static {v1}, Lcn/bmob/v3/b/of;->Code(Landroid/content/Context;)Lcn/bmob/v3/b/of;

    move-result-object v1

    const-string v2, "bmob_common_download_failed"

    invoke-virtual {v1, v2}, Lcn/bmob/v3/b/of;->I(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public final Code(Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/high16 v9, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    .line 159
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 160
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 163
    :try_start_0
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 164
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    long-to-float v4, v4

    .line 166
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 167
    const/4 v0, 0x0

    .line 168
    if-eqz v5, :cond_3

    .line 169
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcn/bmob/v3/b/acknowledge;->B:Ljava/lang/String;

    invoke-static {v6}, Lcn/bmob/v3/b/mine;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".apk"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 170
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 171
    const/16 v1, 0x400

    new-array v6, v1, [B

    .line 173
    const/4 v1, 0x0

    move v3, v1

    move v1, v2

    .line 175
    :cond_0
    :goto_0
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-eq v7, v10, :cond_3

    .line 176
    const/4 v8, 0x0

    invoke-virtual {v0, v6, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 177
    int-to-float v7, v7

    add-float/2addr v3, v7

    .line 179
    if-eqz v1, :cond_1

    mul-float v7, v3, v9

    div-float/2addr v7, v4

    float-to-int v7, v7

    add-int/lit8 v7, v7, -0xa

    if-le v7, v1, :cond_0

    .line 180
    :cond_1
    add-int/lit8 v1, v1, 0xa

    .line 181
    invoke-static {}, Lcn/bmob/v3/update/a/This;->I()Z

    move-result v7

    if-nez v7, :cond_0

    .line 182
    const/4 v7, 0x1

    mul-float v8, v3, v9

    div-float/2addr v8, v4

    float-to-int v8, v8

    invoke-direct {p0, v7, v8}, Lcn/bmob/v3/b/acknowledge;->Code(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 194
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 195
    iput v10, v1, Landroid/os/Message;->what:I

    .line 196
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 197
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 198
    const-string v3, "error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 200
    iget-object v0, p0, Lcn/bmob/v3/b/acknowledge;->F:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 202
    :cond_2
    :goto_1
    return-void

    .line 187
    :cond_3
    const/4 v1, 0x2

    const/4 v3, 0x0

    :try_start_1
    invoke-direct {p0, v1, v3}, Lcn/bmob/v3/b/acknowledge;->Code(II)V

    .line 188
    if-eqz v0, :cond_2

    .line 189
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 190
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
