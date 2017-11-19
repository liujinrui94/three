.class final Lcn/bmob/v3/b/acknowledge$2;
.super Ljava/lang/Thread;
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
.field private synthetic Code:Ljava/lang/String;

.field private synthetic I:Lcn/bmob/v3/b/acknowledge;

.field private synthetic V:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/bmob/v3/b/acknowledge;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcn/bmob/v3/b/acknowledge$2;->I:Lcn/bmob/v3/b/acknowledge;

    iput-object p2, p0, Lcn/bmob/v3/b/acknowledge$2;->Code:Ljava/lang/String;

    iput-object p3, p0, Lcn/bmob/v3/b/acknowledge$2;->V:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcn/bmob/v3/b/acknowledge$2;->I:Lcn/bmob/v3/b/acknowledge;

    iget-object v1, p0, Lcn/bmob/v3/b/acknowledge$2;->Code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/bmob/v3/b/acknowledge;->Code(Ljava/lang/String;)V

    .line 155
    return-void
.end method
