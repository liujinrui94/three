.class public Lcom/shishicai/app/domain/Favorable;
.super Ljava/lang/Object;
.source "Favorable.java"


# instance fields
.field act_name:Ljava/lang/String;

.field act_type_ext:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAct_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/shishicai/app/domain/Favorable;->act_name:Ljava/lang/String;

    return-object v0
.end method

.method public getAct_type_ext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/shishicai/app/domain/Favorable;->act_type_ext:Ljava/lang/String;

    return-object v0
.end method

.method public setAct_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "act_name"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/shishicai/app/domain/Favorable;->act_name:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setAct_type_ext(Ljava/lang/String;)V
    .locals 0
    .param p1, "act_type_ext"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/shishicai/app/domain/Favorable;->act_type_ext:Ljava/lang/String;

    .line 24
    return-void
.end method
