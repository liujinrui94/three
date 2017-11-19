.class public Lcom/shishicai/app/domain/JudgeInfo;
.super Ljava/lang/Object;
.source "JudgeInfo.java"


# instance fields
.field private id:Ljava/lang/String;

.field private links:Ljava/lang/String;

.field private mcih:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private open:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/shishicai/app/domain/JudgeInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLinks()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/shishicai/app/domain/JudgeInfo;->links:Ljava/lang/String;

    return-object v0
.end method

.method public getMcih()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/shishicai/app/domain/JudgeInfo;->mcih:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/domain/JudgeInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/shishicai/app/domain/JudgeInfo;->open:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/shishicai/app/domain/JudgeInfo;->id:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public setLinks(Ljava/lang/String;)V
    .locals 0
    .param p1, "links"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/shishicai/app/domain/JudgeInfo;->links:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setMcih(Ljava/lang/String;)V
    .locals 0
    .param p1, "mcih"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/shishicai/app/domain/JudgeInfo;->mcih:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/shishicai/app/domain/JudgeInfo;->name:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setOpen(Ljava/lang/String;)V
    .locals 0
    .param p1, "open"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/shishicai/app/domain/JudgeInfo;->open:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JudgeInfo [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shishicai/app/domain/JudgeInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", open="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shishicai/app/domain/JudgeInfo;->open:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shishicai/app/domain/JudgeInfo;->links:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
