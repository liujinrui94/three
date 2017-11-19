.class final Lcn/bmob/v3/helper/NotificationCompat$acknowledge;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Lcn/bmob/v3/helper/NotificationCompat$thing;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/helper/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "acknowledge"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Code(Lcn/bmob/v3/helper/NotificationCompat$Builder;)Landroid/app/Notification;
    .locals 18

    .prologue
    .line 124
    new-instance v1, Lcn/bmob/v3/helper/NotificationCompat$mine;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->Code:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->h:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->V:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->I:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->F:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->C:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v8, v0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->D:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->Z:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->B:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->S:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v12, v0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->d:I

    move-object/from16 v0, p1

    iget v13, v0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->e:I

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->f:Z

    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->a:Z

    move-object/from16 v0, p1

    iget v0, v0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->L:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->c:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-direct/range {v1 .. v17}, Lcn/bmob/v3/helper/NotificationCompat$mine;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;)V

    .line 129
    move-object/from16 v0, p1

    iget-object v2, v0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/bmob/v3/helper/NotificationCompat$Action;

    .line 130
    iget v4, v2, Lcn/bmob/v3/helper/NotificationCompat$Action;->icon:I

    iget-object v5, v2, Lcn/bmob/v3/helper/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    iget-object v2, v2, Lcn/bmob/v3/helper/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v4, v5, v2}, Lcn/bmob/v3/helper/NotificationCompat$mine;->Code(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 132
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->b:Lcn/bmob/v3/helper/NotificationCompat$Style;

    if-eqz v2, :cond_1

    .line 133
    move-object/from16 v0, p1

    iget-object v2, v0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->b:Lcn/bmob/v3/helper/NotificationCompat$Style;

    instance-of v2, v2, Lcn/bmob/v3/helper/NotificationCompat$BigTextStyle;

    if-eqz v2, :cond_2

    .line 134
    move-object/from16 v0, p1

    iget-object v2, v0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->b:Lcn/bmob/v3/helper/NotificationCompat$Style;

    check-cast v2, Lcn/bmob/v3/helper/NotificationCompat$BigTextStyle;

    .line 135
    iget-object v3, v2, Lcn/bmob/v3/helper/NotificationCompat$BigTextStyle;->Z:Ljava/lang/CharSequence;

    iget-boolean v4, v2, Lcn/bmob/v3/helper/NotificationCompat$BigTextStyle;->C:Z

    iget-object v5, v2, Lcn/bmob/v3/helper/NotificationCompat$BigTextStyle;->B:Ljava/lang/CharSequence;

    iget-object v2, v2, Lcn/bmob/v3/helper/NotificationCompat$BigTextStyle;->Code:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3, v4, v5, v2}, Lcn/bmob/v3/helper/NotificationCompat$mine;->Code(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 155
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcn/bmob/v3/helper/NotificationCompat$mine;->Code()Landroid/app/Notification;

    move-result-object v1

    return-object v1

    .line 139
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->b:Lcn/bmob/v3/helper/NotificationCompat$Style;

    instance-of v2, v2, Lcn/bmob/v3/helper/NotificationCompat$InboxStyle;

    if-eqz v2, :cond_3

    .line 140
    move-object/from16 v0, p1

    iget-object v2, v0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->b:Lcn/bmob/v3/helper/NotificationCompat$Style;

    check-cast v2, Lcn/bmob/v3/helper/NotificationCompat$InboxStyle;

    .line 141
    iget-object v3, v2, Lcn/bmob/v3/helper/NotificationCompat$InboxStyle;->Z:Ljava/lang/CharSequence;

    iget-boolean v4, v2, Lcn/bmob/v3/helper/NotificationCompat$InboxStyle;->C:Z

    iget-object v5, v2, Lcn/bmob/v3/helper/NotificationCompat$InboxStyle;->B:Ljava/lang/CharSequence;

    iget-object v2, v2, Lcn/bmob/v3/helper/NotificationCompat$InboxStyle;->Code:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v4, v5, v2}, Lcn/bmob/v3/helper/NotificationCompat$mine;->Code(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 145
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->b:Lcn/bmob/v3/helper/NotificationCompat$Style;

    instance-of v2, v2, Lcn/bmob/v3/helper/NotificationCompat$BigPictureStyle;

    if-eqz v2, :cond_1

    .line 146
    move-object/from16 v0, p1

    iget-object v2, v0, Lcn/bmob/v3/helper/NotificationCompat$Builder;->b:Lcn/bmob/v3/helper/NotificationCompat$Style;

    move-object v7, v2

    check-cast v7, Lcn/bmob/v3/helper/NotificationCompat$BigPictureStyle;

    .line 147
    iget-object v2, v7, Lcn/bmob/v3/helper/NotificationCompat$BigPictureStyle;->Z:Ljava/lang/CharSequence;

    iget-boolean v3, v7, Lcn/bmob/v3/helper/NotificationCompat$BigPictureStyle;->C:Z

    iget-object v4, v7, Lcn/bmob/v3/helper/NotificationCompat$BigPictureStyle;->B:Ljava/lang/CharSequence;

    iget-object v5, v7, Lcn/bmob/v3/helper/NotificationCompat$BigPictureStyle;->Code:Landroid/graphics/Bitmap;

    iget-object v6, v7, Lcn/bmob/v3/helper/NotificationCompat$BigPictureStyle;->V:Landroid/graphics/Bitmap;

    iget-boolean v7, v7, Lcn/bmob/v3/helper/NotificationCompat$BigPictureStyle;->I:Z

    invoke-virtual/range {v1 .. v7}, Lcn/bmob/v3/helper/NotificationCompat$mine;->Code(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_1
.end method
