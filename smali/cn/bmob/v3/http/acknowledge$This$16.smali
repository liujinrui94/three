.class final Lcn/bmob/v3/http/acknowledge$This$16;
.super Lrx/Subscriber;
.source "RxBmob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/http/acknowledge$This;->V(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic Code:Lcn/bmob/v3/listener/BmobCallback;


# direct methods
.method constructor <init>(Lcn/bmob/v3/http/acknowledge$This;Lcn/bmob/v3/listener/BmobCallback;)V
    .locals 0

    .prologue
    .line 694
    iput-object p2, p0, Lcn/bmob/v3/http/acknowledge$This$16;->Code:Lcn/bmob/v3/listener/BmobCallback;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This$16;->Code:Lcn/bmob/v3/listener/BmobCallback;

    invoke-virtual {v0}, Lcn/bmob/v3/listener/BmobCallback;->onFinish()V

    .line 699
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x2337

    .line 703
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This$16;->Code:Lcn/bmob/v3/listener/BmobCallback;

    instance-of v0, v0, Lcn/bmob/v3/listener/BmobCallback2;

    if-eqz v0, :cond_1

    .line 704
    instance-of v0, p1, Lcn/bmob/v3/exception/BmobException;

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This$16;->Code:Lcn/bmob/v3/listener/BmobCallback;

    check-cast v0, Lcn/bmob/v3/listener/BmobCallback2;

    invoke-virtual {v0, v3, p1}, Lcn/bmob/v3/listener/BmobCallback2;->done(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 718
    :goto_0
    return-void

    .line 707
    :cond_0
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This$16;->Code:Lcn/bmob/v3/listener/BmobCallback;

    check-cast v0, Lcn/bmob/v3/listener/BmobCallback2;

    new-instance v1, Lcn/bmob/v3/exception/BmobException;

    invoke-direct {v1, v2, p1}, Lcn/bmob/v3/exception/BmobException;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {v0, v3, v1}, Lcn/bmob/v3/listener/BmobCallback2;->done(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 709
    :cond_1
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This$16;->Code:Lcn/bmob/v3/listener/BmobCallback;

    instance-of v0, v0, Lcn/bmob/v3/listener/BmobCallback1;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This$16;->Code:Lcn/bmob/v3/listener/BmobCallback;

    instance-of v0, v0, Lcn/bmob/v3/listener/UploadFileListener;

    if-eqz v0, :cond_4

    .line 710
    :cond_2
    instance-of v0, p1, Lcn/bmob/v3/exception/BmobException;

    if-eqz v0, :cond_3

    .line 711
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This$16;->Code:Lcn/bmob/v3/listener/BmobCallback;

    check-cast v0, Lcn/bmob/v3/listener/BmobCallback1;

    invoke-virtual {v0, p1}, Lcn/bmob/v3/listener/BmobCallback1;->done(Ljava/lang/Object;)V

    goto :goto_0

    .line 713
    :cond_3
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This$16;->Code:Lcn/bmob/v3/listener/BmobCallback;

    check-cast v0, Lcn/bmob/v3/listener/BmobCallback1;

    new-instance v1, Lcn/bmob/v3/exception/BmobException;

    invoke-direct {v1, v2, p1}, Lcn/bmob/v3/exception/BmobException;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/listener/BmobCallback1;->done(Ljava/lang/Object;)V

    goto :goto_0

    .line 716
    :cond_4
    const-string v0, "not support this callback"

    invoke-static {v0}, Lcn/bmob/v3/b/This;->Code(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 722
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This$16;->Code:Lcn/bmob/v3/listener/BmobCallback;

    instance-of v0, v0, Lcn/bmob/v3/listener/BmobCallback2;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This$16;->Code:Lcn/bmob/v3/listener/BmobCallback;

    check-cast v0, Lcn/bmob/v3/listener/BmobCallback2;

    invoke-virtual {v0, p1, v1}, Lcn/bmob/v3/listener/BmobCallback2;->done(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 731
    :goto_0
    return-void

    .line 724
    :cond_0
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This$16;->Code:Lcn/bmob/v3/listener/BmobCallback;

    instance-of v0, v0, Lcn/bmob/v3/listener/BmobCallback1;

    if-eqz v0, :cond_1

    .line 725
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This$16;->Code:Lcn/bmob/v3/listener/BmobCallback;

    check-cast v0, Lcn/bmob/v3/listener/BmobCallback1;

    invoke-virtual {v0, p1}, Lcn/bmob/v3/listener/BmobCallback1;->done(Ljava/lang/Object;)V

    goto :goto_0

    .line 726
    :cond_1
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This$16;->Code:Lcn/bmob/v3/listener/BmobCallback;

    instance-of v0, v0, Lcn/bmob/v3/listener/UploadFileListener;

    if-eqz v0, :cond_2

    .line 727
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This$16;->Code:Lcn/bmob/v3/listener/BmobCallback;

    check-cast v0, Lcn/bmob/v3/listener/UploadFileListener;

    invoke-virtual {v0, v1}, Lcn/bmob/v3/listener/UploadFileListener;->done(Lcn/bmob/v3/exception/BmobException;)V

    goto :goto_0

    .line 729
    :cond_2
    const-string v0, "not support this callback"

    invoke-static {v0}, Lcn/bmob/v3/b/This;->Code(Ljava/lang/String;)V

    goto :goto_0
.end method
