.class public Lcom/shishicai/app/domain/DataBean;
.super Ljava/lang/Object;
.source "DataBean.java"


# instance fields
.field private expect:Ljava/lang/String;

.field private opencode:Ljava/lang/String;

.field private opentime:Ljava/lang/String;

.field private opentimestamp:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/shishicai/app/domain/DataBean;->expect:Ljava/lang/String;

    return-object v0
.end method

.method public getOpencode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/shishicai/app/domain/DataBean;->opencode:Ljava/lang/String;

    return-object v0
.end method

.method public getOpentime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/shishicai/app/domain/DataBean;->opentime:Ljava/lang/String;

    return-object v0
.end method

.method public getOpentimestamp()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/shishicai/app/domain/DataBean;->opentimestamp:I

    return v0
.end method

.method public setExpect(Ljava/lang/String;)V
    .locals 0
    .param p1, "expect"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/shishicai/app/domain/DataBean;->expect:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setOpencode(Ljava/lang/String;)V
    .locals 0
    .param p1, "opencode"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/shishicai/app/domain/DataBean;->opencode:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setOpentime(Ljava/lang/String;)V
    .locals 0
    .param p1, "opentime"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/shishicai/app/domain/DataBean;->opentime:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setOpentimestamp(I)V
    .locals 0
    .param p1, "opentimestamp"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/shishicai/app/domain/DataBean;->opentimestamp:I

    .line 50
    return-void
.end method
