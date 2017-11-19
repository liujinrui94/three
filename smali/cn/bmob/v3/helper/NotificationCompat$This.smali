.class Lcn/bmob/v3/helper/NotificationCompat$This;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Lcn/bmob/v3/helper/NotificationCompat$thing;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/helper/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "This"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Code(Lcn/bmob/v3/helper/NotificationCompat$Builder;)Landroid/app/Notification;
    .locals 5

    .prologue
    .line 1078
    iget-object v0, p1, Lcn/bmob/v3/helper/NotificationCompat$Builder;->h:Landroid/app/Notification;

    .line 1079
    iget-object v1, p1, Lcn/bmob/v3/helper/NotificationCompat$Builder;->Code:Landroid/content/Context;

    iget-object v2, p1, Lcn/bmob/v3/helper/NotificationCompat$Builder;->V:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcn/bmob/v3/helper/NotificationCompat$Builder;->I:Ljava/lang/CharSequence;

    iget-object v4, p1, Lcn/bmob/v3/helper/NotificationCompat$Builder;->Z:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1082
    iget v1, p1, Lcn/bmob/v3/helper/NotificationCompat$Builder;->L:I

    if-lez v1, :cond_0

    .line 1083
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1085
    :cond_0
    return-object v0
.end method
