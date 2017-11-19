.class public Lcom/shishicai/app/domain/BaseModel;
.super Ljava/lang/Object;
.source "BaseModel.java"

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

.field private msg:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private status:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    .local p0, "this":Lcom/shishicai/app/domain/BaseModel;, "Lcom/shishicai/app/domain/BaseModel<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Lcom/shishicai/app/domain/BaseModel;, "Lcom/shishicai/app/domain/BaseModel<TT;>;"
    iget v0, p0, Lcom/shishicai/app/domain/BaseModel;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/shishicai/app/domain/BaseModel;, "Lcom/shishicai/app/domain/BaseModel<TT;>;"
    iget-object v0, p0, Lcom/shishicai/app/domain/BaseModel;->msg:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lcom/shishicai/app/domain/BaseModel;, "Lcom/shishicai/app/domain/BaseModel<TT;>;"
    iget v0, p0, Lcom/shishicai/app/domain/BaseModel;->status:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lcom/shishicai/app/domain/BaseModel;, "Lcom/shishicai/app/domain/BaseModel<TT;>;"
    iget-object v0, p0, Lcom/shishicai/app/domain/BaseModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/shishicai/app/domain/BaseModel;, "Lcom/shishicai/app/domain/BaseModel<TT;>;"
    const/4 v0, 0x1

    .line 68
    invoke-virtual {p0}, Lcom/shishicai/app/domain/BaseModel;->getStatus()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 74
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
    .line 64
    .local p0, "this":Lcom/shishicai/app/domain/BaseModel;, "Lcom/shishicai/app/domain/BaseModel<TT;>;"
    iput p1, p0, Lcom/shishicai/app/domain/BaseModel;->code:I

    .line 65
    return-void
.end method

.method public setMsg(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/shishicai/app/domain/BaseModel;, "Lcom/shishicai/app/domain/BaseModel<TT;>;"
    .local p1, "msg":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/shishicai/app/domain/BaseModel;->msg:Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 56
    .local p0, "this":Lcom/shishicai/app/domain/BaseModel;, "Lcom/shishicai/app/domain/BaseModel<TT;>;"
    iput p1, p0, Lcom/shishicai/app/domain/BaseModel;->status:I

    .line 57
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 36
    .local p0, "this":Lcom/shishicai/app/domain/BaseModel;, "Lcom/shishicai/app/domain/BaseModel<TT;>;"
    iput-object p1, p0, Lcom/shishicai/app/domain/BaseModel;->url:Ljava/lang/String;

    .line 37
    return-void
.end method
