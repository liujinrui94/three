.class public Lcom/shishicai/app/service/MyPushMessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MyPushMessageReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MyPushMessageReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 29
    sget-object v13, Lcn/bmob/push/PushConstants;->EXTRA_PUSH_MESSAGE_STRING:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 30
    .local v9, "message":Ljava/lang/String;
    const-string v13, "MyPushMessageReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "message="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/4 v12, 0x0

    .line 40
    .local v12, "pushInfo":Lcom/shishicai/app/domain/PushInfo;
    :try_start_0
    const-class v13, Lcom/shishicai/app/domain/PushInfo;

    invoke-static {v9, v13}, Lcom/shishicai/app/utils/GsonUtils;->parseJSON(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lcom/shishicai/app/domain/PushInfo;

    move-object v12, v0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    if-eqz v12, :cond_0

    .line 49
    invoke-virtual {v12}, Lcom/shishicai/app/domain/PushInfo;->getAlert()Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "alert":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/shishicai/app/domain/PushInfo;->getArticleurl()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "articleUrl":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 56
    .end local v2    # "alert":Ljava/lang/String;
    .end local v3    # "articleUrl":Ljava/lang/String;
    .local v5, "content":Ljava/lang/String;
    :goto_1
    const-string v13, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 65
    .local v8, "manager":Landroid/app/NotificationManager;
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 66
    .local v4, "builder1":Landroid/app/Notification$Builder;
    const v13, 0x7f020089

    invoke-virtual {v4, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 67
    const-string v13, "\u663e\u793a\u901a\u77e5"

    invoke-virtual {v4, v13}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 68
    const-string v13, "\u6536\u5230\u4e00\u6761\u63a8\u9001"

    invoke-virtual {v4, v13}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 69
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 71
    const/4 v13, -0x1

    invoke-virtual {v4, v13}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 72
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 73
    new-instance v7, Landroid/content/Intent;

    const-class v13, Lcom/shishicai/app/activity/MainActivity;

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v7, "intent1":Landroid/content/Intent;
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v7, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 75
    .local v11, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 76
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    .line 77
    .local v10, "notification1":Landroid/app/Notification;
    const/16 v13, 0x7c

    invoke-virtual {v8, v13, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 78
    return-void

    .line 41
    .end local v4    # "builder1":Landroid/app/Notification$Builder;
    .end local v5    # "content":Ljava/lang/String;
    .end local v7    # "intent1":Landroid/content/Intent;
    .end local v8    # "manager":Landroid/app/NotificationManager;
    .end local v10    # "notification1":Landroid/app/Notification;
    .end local v11    # "pendingIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v6

    .line 42
    .local v6, "e":Lcom/google/gson/JsonSyntaxException;
    const-string v13, "MyPushMessageReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "err="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v6}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto/16 :goto_0

    .line 53
    .end local v6    # "e":Lcom/google/gson/JsonSyntaxException;
    :cond_0
    move-object v5, v9

    .restart local v5    # "content":Ljava/lang/String;
    goto :goto_1
.end method
