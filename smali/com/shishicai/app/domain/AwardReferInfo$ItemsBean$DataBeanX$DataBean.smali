.class public Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;
.super Ljava/lang/Object;
.source "AwardReferInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private result:Ljava/lang/String;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;->state:I

    return v0
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;->result:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 147
    iput p1, p0, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;->state:I

    .line 148
    return-void
.end method
