.class public Lcom/shishicai/app/domain/Comments;
.super Ljava/lang/Object;
.source "Comments.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7bab31e49e9ed554L


# instance fields
.field private add_time:Ljava/lang/String;

.field private cmt_name:Ljava/lang/String;

.field private comment_type:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private rank:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdd_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/shishicai/app/domain/Comments;->add_time:Ljava/lang/String;

    return-object v0
.end method

.method public getCmt_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/shishicai/app/domain/Comments;->cmt_name:Ljava/lang/String;

    return-object v0
.end method

.method public getComment_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/shishicai/app/domain/Comments;->comment_type:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shishicai/app/domain/Comments;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/shishicai/app/domain/Comments;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/shishicai/app/domain/Comments;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/shishicai/app/domain/Comments;->rank:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/shishicai/app/domain/Comments;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setAdd_time(Ljava/lang/String;)V
    .locals 0
    .param p1, "add_time"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/shishicai/app/domain/Comments;->add_time:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setCmt_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "cmt_name"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/shishicai/app/domain/Comments;->cmt_name:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setComment_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment_type"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/shishicai/app/domain/Comments;->comment_type:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/shishicai/app/domain/Comments;->content:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/shishicai/app/domain/Comments;->email:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/shishicai/app/domain/Comments;->id:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setRank(Ljava/lang/String;)V
    .locals 0
    .param p1, "rank"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/shishicai/app/domain/Comments;->rank:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/shishicai/app/domain/Comments;->username:Ljava/lang/String;

    .line 73
    return-void
.end method
