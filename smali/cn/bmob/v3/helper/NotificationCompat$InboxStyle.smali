.class public Lcn/bmob/v3/helper/NotificationCompat$InboxStyle;
.super Lcn/bmob/v3/helper/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/helper/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InboxStyle"
.end annotation


# instance fields
.field Code:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 793
    invoke-direct {p0}, Lcn/bmob/v3/helper/NotificationCompat$Style;-><init>()V

    .line 791
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$InboxStyle;->Code:Ljava/util/ArrayList;

    .line 794
    return-void
.end method

.method public constructor <init>(Lcn/bmob/v3/helper/NotificationCompat$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcn/bmob/v3/helper/NotificationCompat$Builder;

    .prologue
    .line 796
    invoke-direct {p0}, Lcn/bmob/v3/helper/NotificationCompat$Style;-><init>()V

    .line 791
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$InboxStyle;->Code:Ljava/util/ArrayList;

    .line 797
    invoke-virtual {p0, p1}, Lcn/bmob/v3/helper/NotificationCompat$InboxStyle;->setBuilder(Lcn/bmob/v3/helper/NotificationCompat$Builder;)V

    .line 798
    return-void
.end method


# virtual methods
.method public addLine(Ljava/lang/CharSequence;)Lcn/bmob/v3/helper/NotificationCompat$InboxStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 822
    iget-object v0, p0, Lcn/bmob/v3/helper/NotificationCompat$InboxStyle;->Code:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    return-object p0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Lcn/bmob/v3/helper/NotificationCompat$InboxStyle;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 805
    iput-object p1, p0, Lcn/bmob/v3/helper/NotificationCompat$InboxStyle;->Z:Ljava/lang/CharSequence;

    .line 806
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Lcn/bmob/v3/helper/NotificationCompat$InboxStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 813
    iput-object p1, p0, Lcn/bmob/v3/helper/NotificationCompat$InboxStyle;->B:Ljava/lang/CharSequence;

    .line 814
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/bmob/v3/helper/NotificationCompat$InboxStyle;->C:Z

    .line 815
    return-object p0
.end method
