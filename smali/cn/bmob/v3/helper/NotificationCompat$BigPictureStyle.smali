.class public Lcn/bmob/v3/helper/NotificationCompat$BigPictureStyle;
.super Lcn/bmob/v3/helper/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/helper/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigPictureStyle"
.end annotation


# instance fields
.field Code:Landroid/graphics/Bitmap;

.field I:Z

.field V:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 664
    invoke-direct {p0}, Lcn/bmob/v3/helper/NotificationCompat$Style;-><init>()V

    .line 665
    return-void
.end method

.method public constructor <init>(Lcn/bmob/v3/helper/NotificationCompat$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcn/bmob/v3/helper/NotificationCompat$Builder;

    .prologue
    .line 667
    invoke-direct {p0}, Lcn/bmob/v3/helper/NotificationCompat$Style;-><init>()V

    .line 668
    invoke-virtual {p0, p1}, Lcn/bmob/v3/helper/NotificationCompat$BigPictureStyle;->setBuilder(Lcn/bmob/v3/helper/NotificationCompat$Builder;)V

    .line 669
    return-void
.end method


# virtual methods
.method public bigLargeIcon(Landroid/graphics/Bitmap;)Lcn/bmob/v3/helper/NotificationCompat$BigPictureStyle;
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 701
    iput-object p1, p0, Lcn/bmob/v3/helper/NotificationCompat$BigPictureStyle;->V:Landroid/graphics/Bitmap;

    .line 702
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/bmob/v3/helper/NotificationCompat$BigPictureStyle;->I:Z

    .line 703
    return-object p0
.end method

.method public bigPicture(Landroid/graphics/Bitmap;)Lcn/bmob/v3/helper/NotificationCompat$BigPictureStyle;
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 693
    iput-object p1, p0, Lcn/bmob/v3/helper/NotificationCompat$BigPictureStyle;->Code:Landroid/graphics/Bitmap;

    .line 694
    return-object p0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Lcn/bmob/v3/helper/NotificationCompat$BigPictureStyle;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 676
    iput-object p1, p0, Lcn/bmob/v3/helper/NotificationCompat$BigPictureStyle;->Z:Ljava/lang/CharSequence;

    .line 677
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Lcn/bmob/v3/helper/NotificationCompat$BigPictureStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 684
    iput-object p1, p0, Lcn/bmob/v3/helper/NotificationCompat$BigPictureStyle;->B:Ljava/lang/CharSequence;

    .line 685
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/bmob/v3/helper/NotificationCompat$BigPictureStyle;->C:Z

    .line 686
    return-object p0
.end method
