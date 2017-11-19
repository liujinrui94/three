.class public Lcn/bmob/v3/helper/NotificationCompat$BigTextStyle;
.super Lcn/bmob/v3/helper/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/helper/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigTextStyle"
.end annotation


# instance fields
.field Code:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 731
    invoke-direct {p0}, Lcn/bmob/v3/helper/NotificationCompat$Style;-><init>()V

    .line 732
    return-void
.end method

.method public constructor <init>(Lcn/bmob/v3/helper/NotificationCompat$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcn/bmob/v3/helper/NotificationCompat$Builder;

    .prologue
    .line 734
    invoke-direct {p0}, Lcn/bmob/v3/helper/NotificationCompat$Style;-><init>()V

    .line 735
    invoke-virtual {p0, p1}, Lcn/bmob/v3/helper/NotificationCompat$BigTextStyle;->setBuilder(Lcn/bmob/v3/helper/NotificationCompat$Builder;)V

    .line 736
    return-void
.end method


# virtual methods
.method public bigText(Ljava/lang/CharSequence;)Lcn/bmob/v3/helper/NotificationCompat$BigTextStyle;
    .locals 0
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 761
    iput-object p1, p0, Lcn/bmob/v3/helper/NotificationCompat$BigTextStyle;->Code:Ljava/lang/CharSequence;

    .line 762
    return-object p0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Lcn/bmob/v3/helper/NotificationCompat$BigTextStyle;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 743
    iput-object p1, p0, Lcn/bmob/v3/helper/NotificationCompat$BigTextStyle;->Z:Ljava/lang/CharSequence;

    .line 744
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Lcn/bmob/v3/helper/NotificationCompat$BigTextStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 751
    iput-object p1, p0, Lcn/bmob/v3/helper/NotificationCompat$BigTextStyle;->B:Ljava/lang/CharSequence;

    .line 752
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/bmob/v3/helper/NotificationCompat$BigTextStyle;->C:Z

    .line 753
    return-object p0
.end method
