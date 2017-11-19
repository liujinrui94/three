.class public Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$DataBeanX$DataBean;
.super Ljava/lang/Object;
.source "LuzhuInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$DataBeanX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$DataBeanX$DataBean;->result:Ljava/lang/String;

    return-object v0
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$DataBeanX$DataBean;->result:Ljava/lang/String;

    .line 181
    return-void
.end method
