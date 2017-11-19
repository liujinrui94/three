.class public Lcom/shishicai/app/utils/UtilsSF;
.super Ljava/lang/Object;
.source "UtilsSF.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DaXiao(Lcom/shishicai/app/domain/Plsz;)Ljava/lang/String;
    .locals 4
    .param p0, "plsz"    # Lcom/shishicai/app/domain/Plsz;

    .prologue
    const/4 v3, 0x4

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "big":I
    const/4 v1, 0x0

    .line 29
    .local v1, "smail":I
    invoke-virtual {p0}, Lcom/shishicai/app/domain/Plsz;->getThesingle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 33
    :goto_0
    invoke-virtual {p0}, Lcom/shishicai/app/domain/Plsz;->getThedouble()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v3, :cond_1

    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 36
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 31
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static HeZhi(Lcom/shishicai/app/domain/Plsz;)I
    .locals 3
    .param p0, "plsz"    # Lcom/shishicai/app/domain/Plsz;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/shishicai/app/domain/Plsz;->getThesingle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/shishicai/app/domain/Plsz;->getThedouble()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int v0, v1, v2

    .line 74
    .local v0, "sum":I
    return v0
.end method

.method public static JiOu(Lcom/shishicai/app/domain/Plsz;)Ljava/lang/String;
    .locals 4
    .param p0, "plsz"    # Lcom/shishicai/app/domain/Plsz;

    .prologue
    .line 63
    const/4 v1, 0x0

    .line 64
    .local v1, "odd":I
    const/4 v0, 0x0

    .line 65
    .local v0, "even":I
    invoke-virtual {p0}, Lcom/shishicai/app/domain/Plsz;->getThesingle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    .line 66
    add-int/lit8 v0, v0, 0x1

    .line 68
    :goto_0
    invoke-virtual {p0}, Lcom/shishicai/app/domain/Plsz;->getThedouble()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 70
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 67
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static SuoShui(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shishicai/app/domain/Plsz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "oneLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p1, "twoLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .local v2, "plszArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 16
    const/4 v3, 0x0

    .local v3, "z":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 17
    new-instance v1, Lcom/shishicai/app/domain/Plsz;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Lcom/shishicai/app/domain/Plsz;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .local v1, "plsz":Lcom/shishicai/app/domain/Plsz;
    const-string v4, "suo shui"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plsz:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/shishicai/app/domain/Plsz;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 15
    .end local v1    # "plsz":Lcom/shishicai/app/domain/Plsz;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    .end local v3    # "z":I
    :cond_1
    return-object v2
.end method

.method public static getDXGLV(Lcom/shishicai/app/domain/Plsz;)Ljava/lang/String;
    .locals 4
    .param p0, "plsz"    # Lcom/shishicai/app/domain/Plsz;

    .prologue
    const/4 v3, 0x4

    .line 41
    const-string v0, "\u5c0f"

    .line 42
    .local v0, "a":Ljava/lang/String;
    const-string v1, "\u5c0f"

    .line 43
    .local v1, "b":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/shishicai/app/domain/Plsz;->getThesingle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 44
    const-string v0, "\u5927"

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/shishicai/app/domain/Plsz;->getThedouble()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v3, :cond_1

    .line 47
    const-string v1, "\u5927"

    .line 49
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getJiOuLV(Lcom/shishicai/app/domain/Plsz;)Ljava/lang/String;
    .locals 3
    .param p0, "plsz"    # Lcom/shishicai/app/domain/Plsz;

    .prologue
    .line 53
    const-string v0, "\u5947"

    .line 54
    .local v0, "a":Ljava/lang/String;
    const-string v1, "\u5947"

    .line 55
    .local v1, "b":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/shishicai/app/domain/Plsz;->getThesingle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    .line 56
    const-string v0, "\u5076"

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/shishicai/app/domain/Plsz;->getThedouble()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 58
    const-string v0, "\u5076"

    .line 59
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getPlszBB(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shishicai/app/domain/Plsz;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shishicai/app/domain/Plsz;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "plszArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    const/4 v4, 0x4

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, "bbPlszLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 83
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/domain/Plsz;

    .line 84
    .local v2, "plsz":Lcom/shishicai/app/domain/Plsz;
    invoke-virtual {v2}, Lcom/shishicai/app/domain/Plsz;->getThesingle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/shishicai/app/domain/Plsz;->getThedouble()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v4, :cond_0

    .line 86
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v2    # "plsz":Lcom/shishicai/app/domain/Plsz;
    :cond_1
    return-object v0
.end method

.method public static getPlszBS(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shishicai/app/domain/Plsz;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shishicai/app/domain/Plsz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "plszArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v0, "bbPlszLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 98
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/domain/Plsz;

    .line 99
    .local v2, "plsz":Lcom/shishicai/app/domain/Plsz;
    invoke-virtual {v2}, Lcom/shishicai/app/domain/Plsz;->getThesingle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/shishicai/app/domain/Plsz;->getThedouble()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    .line 101
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v2    # "plsz":Lcom/shishicai/app/domain/Plsz;
    :cond_1
    return-object v0
.end method

.method public static getPlszEE(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shishicai/app/domain/Plsz;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shishicai/app/domain/Plsz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "plszArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v2, "plszLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 166
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/domain/Plsz;

    .line 167
    .local v1, "plsz":Lcom/shishicai/app/domain/Plsz;
    invoke-virtual {v1}, Lcom/shishicai/app/domain/Plsz;->getThesingle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/shishicai/app/domain/Plsz;->getThedouble()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    .line 168
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    .end local v1    # "plsz":Lcom/shishicai/app/domain/Plsz;
    :cond_1
    return-object v2
.end method

.method public static getPlszEO(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shishicai/app/domain/Plsz;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shishicai/app/domain/Plsz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "plszArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v2, "plszLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 179
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/domain/Plsz;

    .line 180
    .local v1, "plsz":Lcom/shishicai/app/domain/Plsz;
    invoke-virtual {v1}, Lcom/shishicai/app/domain/Plsz;->getThesingle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/shishicai/app/domain/Plsz;->getThedouble()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 181
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    .end local v1    # "plsz":Lcom/shishicai/app/domain/Plsz;
    :cond_1
    return-object v2
.end method

.method public static getPlszOE(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shishicai/app/domain/Plsz;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shishicai/app/domain/Plsz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "plszArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v2, "plszLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 153
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/domain/Plsz;

    .line 154
    .local v1, "plsz":Lcom/shishicai/app/domain/Plsz;
    invoke-virtual {v1}, Lcom/shishicai/app/domain/Plsz;->getThesingle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/shishicai/app/domain/Plsz;->getThedouble()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    .line 155
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    .end local v1    # "plsz":Lcom/shishicai/app/domain/Plsz;
    :cond_1
    return-object v2
.end method

.method public static getPlszOO(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shishicai/app/domain/Plsz;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shishicai/app/domain/Plsz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "plszArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v2, "plszLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 141
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/domain/Plsz;

    .line 142
    .local v1, "plsz":Lcom/shishicai/app/domain/Plsz;
    invoke-virtual {v1}, Lcom/shishicai/app/domain/Plsz;->getThesingle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/shishicai/app/domain/Plsz;->getThedouble()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 143
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "plsz":Lcom/shishicai/app/domain/Plsz;
    :cond_1
    return-object v2
.end method

.method public static getPlszSB(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shishicai/app/domain/Plsz;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shishicai/app/domain/Plsz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "plszArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v0, "bbPlszLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 127
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/domain/Plsz;

    .line 128
    .local v2, "plsz":Lcom/shishicai/app/domain/Plsz;
    invoke-virtual {v2}, Lcom/shishicai/app/domain/Plsz;->getThesingle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/shishicai/app/domain/Plsz;->getThedouble()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    .line 130
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v2    # "plsz":Lcom/shishicai/app/domain/Plsz;
    :cond_1
    return-object v0
.end method

.method public static getPlszSS(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shishicai/app/domain/Plsz;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shishicai/app/domain/Plsz;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "plszArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    const/4 v4, 0x5

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v0, "bbPlszLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 112
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/domain/Plsz;

    .line 113
    .local v2, "plsz":Lcom/shishicai/app/domain/Plsz;
    invoke-virtual {v2}, Lcom/shishicai/app/domain/Plsz;->getThesingle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/shishicai/app/domain/Plsz;->getThedouble()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v3, v4, :cond_0

    .line 115
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v2    # "plsz":Lcom/shishicai/app/domain/Plsz;
    :cond_1
    return-object v0
.end method
