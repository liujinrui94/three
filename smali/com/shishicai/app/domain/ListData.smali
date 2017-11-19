.class public Lcom/shishicai/app/domain/ListData;
.super Ljava/lang/Object;
.source "ListData.java"


# static fields
.field public static final receiver:I = 0x2

.field public static final send:I = 0x1


# instance fields
.field private content:Ljava/lang/String;

.field private flag:I

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "flag"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p0, p1}, Lcom/shishicai/app/domain/ListData;->setContent(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, p2}, Lcom/shishicai/app/domain/ListData;->setFlag(I)V

    .line 44
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/shishicai/app/domain/ListData;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/shishicai/app/domain/ListData;->flag:I

    return v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/shishicai/app/domain/ListData;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/shishicai/app/domain/ListData;->content:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setFlag(I)V
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/shishicai/app/domain/ListData;->flag:I

    .line 31
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/shishicai/app/domain/ListData;->time:Ljava/lang/String;

    .line 15
    return-void
.end method
