.class final Lcn/bmob/v3/listener/DownloadFileListener$1;
.super Ljava/lang/Object;
.source "DownloadFileListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/listener/DownloadFileListener;->doneError(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic Code:I

.field private synthetic I:Lcn/bmob/v3/listener/DownloadFileListener;

.field private synthetic V:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/bmob/v3/listener/DownloadFileListener;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcn/bmob/v3/listener/DownloadFileListener$1;->I:Lcn/bmob/v3/listener/DownloadFileListener;

    iput p2, p0, Lcn/bmob/v3/listener/DownloadFileListener$1;->Code:I

    iput-object p3, p0, Lcn/bmob/v3/listener/DownloadFileListener$1;->V:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 29
    iget-object v0, p0, Lcn/bmob/v3/listener/DownloadFileListener$1;->I:Lcn/bmob/v3/listener/DownloadFileListener;

    const/4 v1, 0x0

    new-instance v2, Lcn/bmob/v3/exception/BmobException;

    iget v3, p0, Lcn/bmob/v3/listener/DownloadFileListener$1;->Code:I

    iget-object v4, p0, Lcn/bmob/v3/listener/DownloadFileListener$1;->V:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcn/bmob/v3/exception/BmobException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcn/bmob/v3/listener/DownloadFileListener;->done(Ljava/lang/String;Lcn/bmob/v3/exception/BmobException;)V

    .line 30
    return-void
.end method
