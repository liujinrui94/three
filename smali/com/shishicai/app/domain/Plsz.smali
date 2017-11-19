.class public Lcom/shishicai/app/domain/Plsz;
.super Ljava/lang/Object;
.source "Plsz.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field thedouble:Ljava/lang/String;

.field thesingle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "thesingle"    # Ljava/lang/String;
    .param p2, "thedouble"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/shishicai/app/domain/Plsz;->thesingle:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/shishicai/app/domain/Plsz;->thedouble:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getThedouble()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shishicai/app/domain/Plsz;->thedouble:Ljava/lang/String;

    return-object v0
.end method

.method public getThesingle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/shishicai/app/domain/Plsz;->thesingle:Ljava/lang/String;

    return-object v0
.end method

.method public setThedouble(Ljava/lang/String;)V
    .locals 0
    .param p1, "thedouble"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/shishicai/app/domain/Plsz;->thedouble:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setThesingle(Ljava/lang/String;)V
    .locals 0
    .param p1, "thesingle"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/shishicai/app/domain/Plsz;->thesingle:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Plsz{thesingle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shishicai/app/domain/Plsz;->thesingle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thedouble=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shishicai/app/domain/Plsz;->thedouble:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
