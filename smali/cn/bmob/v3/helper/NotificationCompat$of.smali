.class final Lcn/bmob/v3/helper/NotificationCompat$of;
.super Lcn/bmob/v3/helper/NotificationCompat$This;
.source "NotificationCompat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/helper/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "of"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcn/bmob/v3/helper/NotificationCompat$This;-><init>()V

    return-void
.end method


# virtual methods
.method public final Code(Lcn/bmob/v3/helper/NotificationCompat$Builder;)Landroid/app/Notification;
    .locals 6

    .prologue
    .line 92
    iget-object v0, p1, Lcn/bmob/v3/helper/NotificationCompat$Builder;->h:Landroid/app/Notification;

    .line 93
    iget-object v1, p1, Lcn/bmob/v3/helper/NotificationCompat$Builder;->Code:Landroid/content/Context;

    iget-object v2, p1, Lcn/bmob/v3/helper/NotificationCompat$Builder;->V:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcn/bmob/v3/helper/NotificationCompat$Builder;->I:Ljava/lang/CharSequence;

    iget-object v4, p1, Lcn/bmob/v3/helper/NotificationCompat$Builder;->Z:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 95
    iget-object v1, p1, Lcn/bmob/v3/helper/NotificationCompat$Builder;->Code:Landroid/content/Context;

    iget-object v2, p1, Lcn/bmob/v3/helper/NotificationCompat$Builder;->V:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcn/bmob/v3/helper/NotificationCompat$Builder;->I:Ljava/lang/CharSequence;

    iget-object v4, p1, Lcn/bmob/v3/helper/NotificationCompat$Builder;->Z:Landroid/app/PendingIntent;

    iget-object v5, p1, Lcn/bmob/v3/helper/NotificationCompat$Builder;->B:Landroid/app/PendingIntent;

    .line 1847
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1848
    iput-object v5, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 98
    iget v1, p1, Lcn/bmob/v3/helper/NotificationCompat$Builder;->L:I

    if-lez v1, :cond_0

    .line 99
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 101
    :cond_0
    return-object v0
.end method
