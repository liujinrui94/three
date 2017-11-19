.class final Lcn/bmob/v3/b/acknowledge$1;
.super Landroid/os/Handler;
.source "DownloadApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/b/acknowledge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic Code:Lcn/bmob/v3/b/acknowledge;


# direct methods
.method constructor <init>(Lcn/bmob/v3/b/acknowledge;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcn/bmob/v3/b/acknowledge$1;->Code:Lcn/bmob/v3/b/acknowledge;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 51
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 91
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 54
    :pswitch_1
    iget-object v0, p0, Lcn/bmob/v3/b/acknowledge$1;->Code:Lcn/bmob/v3/b/acknowledge;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcn/bmob/v3/b/acknowledge;->Code(Lcn/bmob/v3/b/acknowledge;I)V

    goto :goto_0

    .line 57
    :pswitch_2
    invoke-static {}, Lcn/bmob/v3/update/a/This;->I()Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lcn/bmob/v3/b/acknowledge$1;->Code:Lcn/bmob/v3/b/acknowledge;

    iget-object v0, v0, Lcn/bmob/v3/b/acknowledge;->Code:Landroid/app/NotificationManager;

    invoke-virtual {v0, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 61
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/bmob/v3/b/acknowledge$1;->Code:Lcn/bmob/v3/b/acknowledge;

    iget-object v4, v4, Lcn/bmob/v3/b/acknowledge;->B:Ljava/lang/String;

    invoke-static {v4}, Lcn/bmob/v3/b/mine;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    iget-object v1, p0, Lcn/bmob/v3/b/acknowledge$1;->Code:Lcn/bmob/v3/b/acknowledge;

    invoke-static {v1}, Lcn/bmob/v3/b/acknowledge;->Code(Lcn/bmob/v3/b/acknowledge;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 66
    :cond_1
    iget-object v1, p0, Lcn/bmob/v3/b/acknowledge$1;->Code:Lcn/bmob/v3/b/acknowledge;

    iget-object v0, p0, Lcn/bmob/v3/b/acknowledge$1;->Code:Lcn/bmob/v3/b/acknowledge;

    invoke-static {v0}, Lcn/bmob/v3/b/acknowledge;->Code(Lcn/bmob/v3/b/acknowledge;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, v1, Lcn/bmob/v3/b/acknowledge;->Code:Landroid/app/NotificationManager;

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/bmob/v3/b/acknowledge$1;->Code:Lcn/bmob/v3/b/acknowledge;

    iget-object v4, v4, Lcn/bmob/v3/b/acknowledge;->B:Ljava/lang/String;

    invoke-static {v4}, Lcn/bmob/v3/b/mine;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    iget-object v1, p0, Lcn/bmob/v3/b/acknowledge$1;->Code:Lcn/bmob/v3/b/acknowledge;

    iget-object v2, p0, Lcn/bmob/v3/b/acknowledge$1;->Code:Lcn/bmob/v3/b/acknowledge;

    invoke-static {v2}, Lcn/bmob/v3/b/acknowledge;->Code(Lcn/bmob/v3/b/acknowledge;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcn/bmob/v3/b/acknowledge;->Z:Landroid/app/PendingIntent;

    .line 74
    iget-object v0, p0, Lcn/bmob/v3/b/acknowledge$1;->Code:Lcn/bmob/v3/b/acknowledge;

    invoke-static {v0}, Lcn/bmob/v3/b/acknowledge;->Code(Lcn/bmob/v3/b/acknowledge;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/bmob/v3/b/acknowledge$1;->Code:Lcn/bmob/v3/b/acknowledge;

    invoke-static {v1}, Lcn/bmob/v3/b/acknowledge;->Code(Lcn/bmob/v3/b/acknowledge;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/bmob/v3/b/of;->Code(Landroid/content/Context;)Lcn/bmob/v3/b/of;

    move-result-object v1

    const-string v2, "bmob_common_silent_download_finish"

    invoke-virtual {v1, v2}, Lcn/bmob/v3/b/of;->I(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 75
    iget-object v0, p0, Lcn/bmob/v3/b/acknowledge$1;->Code:Lcn/bmob/v3/b/acknowledge;

    iget-object v4, v0, Lcn/bmob/v3/b/acknowledge;->C:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcn/bmob/v3/b/acknowledge$1;->Code:Lcn/bmob/v3/b/acknowledge;

    invoke-static {v0}, Lcn/bmob/v3/b/acknowledge;->Code(Lcn/bmob/v3/b/acknowledge;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/bmob/v3/b/acknowledge$1;->Code:Lcn/bmob/v3/b/acknowledge;

    invoke-static {v1}, Lcn/bmob/v3/b/acknowledge;->Code(Lcn/bmob/v3/b/acknowledge;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/bmob/v3/b/of;->Code(Landroid/content/Context;)Lcn/bmob/v3/b/of;

    move-result-object v1

    const-string v2, "bmob_common_silent_download_finish"

    invoke-virtual {v1, v2}, Lcn/bmob/v3/b/of;->I(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 77
    iget-object v7, p0, Lcn/bmob/v3/b/acknowledge$1;->Code:Lcn/bmob/v3/b/acknowledge;

    iget-object v0, p0, Lcn/bmob/v3/b/acknowledge$1;->Code:Lcn/bmob/v3/b/acknowledge;

    const/16 v1, 0x10

    const v2, 0x1080082

    iget-object v6, p0, Lcn/bmob/v3/b/acknowledge$1;->Code:Lcn/bmob/v3/b/acknowledge;

    iget-object v6, v6, Lcn/bmob/v3/b/acknowledge;->Z:Landroid/app/PendingIntent;

    invoke-static/range {v0 .. v6}, Lcn/bmob/v3/b/acknowledge;->Code(Lcn/bmob/v3/b/acknowledge;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Lcn/bmob/v3/helper/NotificationCompat$Builder;

    move-result-object v0

    iput-object v0, v7, Lcn/bmob/v3/b/acknowledge;->I:Lcn/bmob/v3/helper/NotificationCompat$Builder;

    .line 78
    iget-object v0, p0, Lcn/bmob/v3/b/acknowledge$1;->Code:Lcn/bmob/v3/b/acknowledge;

    iget-object v1, p0, Lcn/bmob/v3/b/acknowledge$1;->Code:Lcn/bmob/v3/b/acknowledge;

    iget-object v1, v1, Lcn/bmob/v3/b/acknowledge;->I:Lcn/bmob/v3/helper/NotificationCompat$Builder;

    invoke-virtual {v1}, Lcn/bmob/v3/helper/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iput-object v1, v0, Lcn/bmob/v3/b/acknowledge;->V:Landroid/app/Notification;

    .line 79
    iget-object v0, p0, Lcn/bmob/v3/b/acknowledge$1;->Code:Lcn/bmob/v3/b/acknowledge;

    iget-object v0, v0, Lcn/bmob/v3/b/acknowledge;->Code:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcn/bmob/v3/b/acknowledge$1;->Code:Lcn/bmob/v3/b/acknowledge;

    iget-object v1, v1, Lcn/bmob/v3/b/acknowledge;->V:Landroid/app/Notification;

    invoke-virtual {v0, v8, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 83
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcn/bmob/v3/b/acknowledge$1;->Code:Lcn/bmob/v3/b/acknowledge;

    invoke-static {v1}, Lcn/bmob/v3/b/acknowledge;->Code(Lcn/bmob/v3/b/acknowledge;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 85
    iget-object v0, p0, Lcn/bmob/v3/b/acknowledge$1;->Code:Lcn/bmob/v3/b/acknowledge;

    iget-object v0, v0, Lcn/bmob/v3/b/acknowledge;->Code:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcn/bmob/v3/b/acknowledge$1;->Code:Lcn/bmob/v3/b/acknowledge;

    iget-object v0, v0, Lcn/bmob/v3/b/acknowledge;->Code:Landroid/app/NotificationManager;

    invoke-virtual {v0, v8}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
