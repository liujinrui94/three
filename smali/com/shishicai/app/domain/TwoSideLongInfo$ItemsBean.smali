.class public Lcom/shishicai/app/domain/TwoSideLongInfo$ItemsBean;
.super Ljava/lang/Object;
.source "TwoSideLongInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/domain/TwoSideLongInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemsBean"
.end annotation


# instance fields
.field private count:I

.field private name:Ljava/lang/String;

.field private result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/shishicai/app/domain/TwoSideLongInfo$ItemsBean;->count:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/shishicai/app/domain/TwoSideLongInfo$ItemsBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/shishicai/app/domain/TwoSideLongInfo$ItemsBean;->result:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/shishicai/app/domain/TwoSideLongInfo$ItemsBean;->count:I

    .line 78
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/shishicai/app/domain/TwoSideLongInfo$ItemsBean;->name:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/shishicai/app/domain/TwoSideLongInfo$ItemsBean;->result:Ljava/lang/String;

    .line 70
    return-void
.end method
