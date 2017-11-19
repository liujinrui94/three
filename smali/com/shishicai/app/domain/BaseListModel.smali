.class public Lcom/shishicai/app/domain/BaseListModel;
.super Ljava/lang/Object;
.source "BaseListModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3307381b02c69e9aL


# instance fields
.field private code:I

.field private msg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private status:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    .local p0, "this":Lcom/shishicai/app/domain/BaseListModel;, "Lcom/shishicai/app/domain/BaseListModel<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Lcom/shishicai/app/domain/BaseListModel;, "Lcom/shishicai/app/domain/BaseListModel<TT;>;"
    iget v0, p0, Lcom/shishicai/app/domain/BaseListModel;->code:I

    return v0
.end method

.method public getMsg()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/shishicai/app/domain/BaseListModel;, "Lcom/shishicai/app/domain/BaseListModel<TT;>;"
    iget-object v0, p0, Lcom/shishicai/app/domain/BaseListModel;->msg:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 53
    .local p0, "this":Lcom/shishicai/app/domain/BaseListModel;, "Lcom/shishicai/app/domain/BaseListModel<TT;>;"
    iget v0, p0, Lcom/shishicai/app/domain/BaseListModel;->status:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lcom/shishicai/app/domain/BaseListModel;, "Lcom/shishicai/app/domain/BaseListModel<TT;>;"
    iget-object v0, p0, Lcom/shishicai/app/domain/BaseListModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/shishicai/app/domain/BaseListModel;, "Lcom/shishicai/app/domain/BaseListModel<TT;>;"
    const/4 v0, 0x1

    .line 70
    invoke-virtual {p0}, Lcom/shishicai/app/domain/BaseListModel;->getStatus()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 66
    .local p0, "this":Lcom/shishicai/app/domain/BaseListModel;, "Lcom/shishicai/app/domain/BaseListModel<TT;>;"
    iput p1, p0, Lcom/shishicai/app/domain/BaseListModel;->code:I

    .line 67
    return-void
.end method

.method public setMsg(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/shishicai/app/domain/BaseListModel;, "Lcom/shishicai/app/domain/BaseListModel<TT;>;"
    .local p1, "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    iput-object p1, p0, Lcom/shishicai/app/domain/BaseListModel;->msg:Ljava/util/ArrayList;

    .line 49
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 58
    .local p0, "this":Lcom/shishicai/app/domain/BaseListModel;, "Lcom/shishicai/app/domain/BaseListModel<TT;>;"
    iput p1, p0, Lcom/shishicai/app/domain/BaseListModel;->status:I

    .line 59
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 37
    .local p0, "this":Lcom/shishicai/app/domain/BaseListModel;, "Lcom/shishicai/app/domain/BaseListModel<TT;>;"
    iput-object p1, p0, Lcom/shishicai/app/domain/BaseListModel;->url:Ljava/lang/String;

    .line 38
    return-void
.end method
