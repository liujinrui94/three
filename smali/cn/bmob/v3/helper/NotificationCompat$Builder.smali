.class public Lcn/bmob/v3/helper/NotificationCompat$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/helper/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field B:Landroid/app/PendingIntent;

.field C:Landroid/widget/RemoteViews;

.field Code:Landroid/content/Context;

.field D:I

.field F:Ljava/lang/CharSequence;

.field I:Ljava/lang/CharSequence;

.field L:I

.field S:Landroid/graphics/Bitmap;

.field V:Ljava/lang/CharSequence;

.field Z:Landroid/app/PendingIntent;

.field a:Z

.field b:Lcn/bmob/v3/helper/NotificationCompat$Style;

.field c:Ljava/lang/CharSequence;

.field d:I

.field e:I

.field f:Z

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/bmob/v3/helper/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field h:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->g:Ljava/util/ArrayList;

    .line 213
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->h:Landroid/app/Notification;

    .line 227
    iput-object p1, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->Code:Landroid/content/Context;

    .line 230
    iget-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->h:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 231
    iget-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->h:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->L:I

    .line 233
    return-void
.end method

.method private Code(IZ)V
    .locals 3

    .prologue
    .line 528
    if-eqz p2, :cond_0

    .line 529
    iget-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->h:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 533
    :goto_0
    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->h:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lcn/bmob/v3/helper/NotificationCompat$Builder;
    .locals 2
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 568
    iget-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->g:Ljava/util/ArrayList;

    new-instance v1, Lcn/bmob/v3/helper/NotificationCompat$Action;

    invoke-direct {v1, p1, p2, p3}, Lcn/bmob/v3/helper/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 603
    invoke-static {}, Lcn/bmob/v3/helper/NotificationCompat;->Code()Lcn/bmob/v3/helper/NotificationCompat$thing;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/bmob/v3/helper/NotificationCompat$thing;->Code(Lcn/bmob/v3/helper/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 595
    invoke-static {}, Lcn/bmob/v3/helper/NotificationCompat;->Code()Lcn/bmob/v3/helper/NotificationCompat$thing;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/bmob/v3/helper/NotificationCompat$thing;->Code(Lcn/bmob/v3/helper/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public setAutoCancel(Z)Lcn/bmob/v3/helper/NotificationCompat$Builder;
    .locals 1
    .param p1, "autoCancel"    # Z

    .prologue
    .line 505
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcn/bmob/v3/helper/NotificationCompat$Builder;->Code(IZ)V

    .line 506
    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Lcn/bmob/v3/helper/NotificationCompat$Builder;
    .locals 1
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 351
    iget-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->h:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 352
    return-object p0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Lcn/bmob/v3/helper/NotificationCompat$Builder;
    .locals 0
    .param p1, "info"    # Ljava/lang/CharSequence;

    .prologue
    .line 332
    iput-object p1, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->F:Ljava/lang/CharSequence;

    .line 333
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Lcn/bmob/v3/helper/NotificationCompat$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 364
    iput-object p1, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->Z:Landroid/app/PendingIntent;

    .line 365
    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Lcn/bmob/v3/helper/NotificationCompat$Builder;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 300
    iput-object p1, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->I:Ljava/lang/CharSequence;

    .line 301
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Lcn/bmob/v3/helper/NotificationCompat$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 292
    iput-object p1, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->V:Ljava/lang/CharSequence;

    .line 293
    return-object p0
.end method

.method public setDefaults(I)Lcn/bmob/v3/helper/NotificationCompat$Builder;
    .locals 2
    .param p1, "defaults"    # I

    .prologue
    .line 520
    iget-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->h:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 521
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->h:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 524
    :cond_0
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Lcn/bmob/v3/helper/NotificationCompat$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 376
    iget-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->h:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 377
    return-object p0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Lcn/bmob/v3/helper/NotificationCompat$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "highPriority"    # Z

    .prologue
    .line 394
    iput-object p1, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->B:Landroid/app/PendingIntent;

    .line 395
    const/16 v0, 0x80

    invoke-direct {p0, v0, p2}, Lcn/bmob/v3/helper/NotificationCompat$Builder;->Code(IZ)V

    .line 396
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Lcn/bmob/v3/helper/NotificationCompat$Builder;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 423
    iput-object p1, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->S:Landroid/graphics/Bitmap;

    .line 424
    return-object p0
.end method

.method public setLights(III)Lcn/bmob/v3/helper/NotificationCompat$Builder;
    .locals 5
    .param p1, "argb"    # I
    .param p2, "onMs"    # I
    .param p3, "offMs"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 464
    iget-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->h:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    .line 465
    iget-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->h:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->ledOnMS:I

    .line 466
    iget-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->h:Landroid/app/Notification;

    iput p3, v0, Landroid/app/Notification;->ledOffMS:I

    .line 467
    iget-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->h:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->ledOnMS:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->h:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->ledOffMS:I

    if-eqz v0, :cond_0

    move v0, v1

    .line 468
    :goto_0
    iget-object v3, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->h:Landroid/app/Notification;

    iget-object v4, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->h:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, -0x2

    if-eqz v0, :cond_1

    :goto_1
    or-int v0, v4, v1

    iput v0, v3, Landroid/app/Notification;->flags:I

    .line 470
    return-object p0

    :cond_0
    move v0, v2

    .line 467
    goto :goto_0

    :cond_1
    move v1, v2

    .line 468
    goto :goto_1
.end method

.method public setNumber(I)Lcn/bmob/v3/helper/NotificationCompat$Builder;
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 324
    iput p1, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->D:I

    .line 325
    return-object p0
.end method

.method public setOngoing(Z)Lcn/bmob/v3/helper/NotificationCompat$Builder;
    .locals 1
    .param p1, "ongoing"    # Z

    .prologue
    .line 485
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcn/bmob/v3/helper/NotificationCompat$Builder;->Code(IZ)V

    .line 486
    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Lcn/bmob/v3/helper/NotificationCompat$Builder;
    .locals 1
    .param p1, "onlyAlertOnce"    # Z

    .prologue
    .line 494
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcn/bmob/v3/helper/NotificationCompat$Builder;->Code(IZ)V

    .line 495
    return-object p0
.end method

.method public setPriority(I)Lcn/bmob/v3/helper/NotificationCompat$Builder;
    .locals 0
    .param p1, "pri"    # I

    .prologue
    .line 547
    iput p1, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->L:I

    .line 548
    return-object p0
.end method

.method public setProgress(IIZ)Lcn/bmob/v3/helper/NotificationCompat$Builder;
    .locals 0
    .param p1, "max"    # I
    .param p2, "progress"    # I
    .param p3, "indeterminate"    # Z

    .prologue
    .line 341
    iput p1, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->d:I

    .line 342
    iput p2, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->e:I

    .line 343
    iput-boolean p3, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->f:Z

    .line 344
    return-object p0
.end method

.method public setSmallIcon(I)Lcn/bmob/v3/helper/NotificationCompat$Builder;
    .locals 1
    .param p1, "icon"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->h:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 269
    return-object p0
.end method

.method public setSmallIcon(II)Lcn/bmob/v3/helper/NotificationCompat$Builder;
    .locals 1
    .param p1, "icon"    # I
    .param p2, "level"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->h:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 284
    iget-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->h:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->iconLevel:I

    .line 285
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Lcn/bmob/v3/helper/NotificationCompat$Builder;
    .locals 2
    .param p1, "sound"    # Landroid/net/Uri;

    .prologue
    .line 431
    iget-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->h:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 432
    iget-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->h:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 433
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Lcn/bmob/v3/helper/NotificationCompat$Builder;
    .locals 1
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "streamType"    # I

    .prologue
    .line 442
    iget-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->h:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 443
    iget-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->h:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->audioStreamType:I

    .line 444
    return-object p0
.end method

.method public setStyle(Lcn/bmob/v3/helper/NotificationCompat$Style;)Lcn/bmob/v3/helper/NotificationCompat$Builder;
    .locals 1
    .param p1, "style"    # Lcn/bmob/v3/helper/NotificationCompat$Style;

    .prologue
    .line 581
    iget-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->b:Lcn/bmob/v3/helper/NotificationCompat$Style;

    if-eq v0, p1, :cond_0

    .line 582
    iput-object p1, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->b:Lcn/bmob/v3/helper/NotificationCompat$Style;

    .line 583
    iget-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->b:Lcn/bmob/v3/helper/NotificationCompat$Style;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->b:Lcn/bmob/v3/helper/NotificationCompat$Style;

    invoke-virtual {v0, p0}, Lcn/bmob/v3/helper/NotificationCompat$Style;->setBuilder(Lcn/bmob/v3/helper/NotificationCompat$Builder;)V

    .line 587
    :cond_0
    return-object p0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Lcn/bmob/v3/helper/NotificationCompat$Builder;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 314
    iput-object p1, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->c:Ljava/lang/CharSequence;

    .line 315
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Lcn/bmob/v3/helper/NotificationCompat$Builder;
    .locals 1
    .param p1, "tickerText"    # Ljava/lang/CharSequence;

    .prologue
    .line 404
    iget-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->h:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 405
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Lcn/bmob/v3/helper/NotificationCompat$Builder;
    .locals 1
    .param p1, "tickerText"    # Ljava/lang/CharSequence;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 414
    iget-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->h:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 415
    iput-object p2, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->C:Landroid/widget/RemoteViews;

    .line 416
    return-object p0
.end method

.method public setUsesChronometer(Z)Lcn/bmob/v3/helper/NotificationCompat$Builder;
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 256
    iput-boolean p1, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->a:Z

    .line 257
    return-object p0
.end method

.method public setVibrate([J)Lcn/bmob/v3/helper/NotificationCompat$Builder;
    .locals 1
    .param p1, "pattern"    # [J

    .prologue
    .line 454
    iget-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->h:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    .line 455
    return-object p0
.end method

.method public setWhen(J)Lcn/bmob/v3/helper/NotificationCompat$Builder;
    .locals 1
    .param p1, "when"    # J

    .prologue
    .line 240
    iget-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->h:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 241
    return-object p0
.end method
