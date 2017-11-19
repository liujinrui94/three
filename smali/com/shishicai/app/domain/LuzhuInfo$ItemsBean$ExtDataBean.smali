.class public Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$ExtDataBean;
.super Ljava/lang/Object;
.source "LuzhuInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtDataBean"
.end annotation


# instance fields
.field private Count:I

.field private Name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$ExtDataBean;->Count:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$ExtDataBean;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "Count"    # I

    .prologue
    .line 153
    iput p1, p0, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$ExtDataBean;->Count:I

    .line 154
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "Name"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$ExtDataBean;->Name:Ljava/lang/String;

    .line 146
    return-void
.end method
