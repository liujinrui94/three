.class public Lcom/shishicai/app/domain/Record;
.super Ljava/lang/Object;
.source "Record.java"


# instance fields
.field private add_time:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private goods_number:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private order_status:Ljava/lang/String;

.field private rank:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdd_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/shishicai/app/domain/Record;->add_time:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/shishicai/app/domain/Record;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/shishicai/app/domain/Record;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getGoods_number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/domain/Record;->goods_number:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/shishicai/app/domain/Record;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder_status()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/shishicai/app/domain/Record;->order_status:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/shishicai/app/domain/Record;->rank:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/shishicai/app/domain/Record;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setAdd_time(Ljava/lang/String;)V
    .locals 0
    .param p1, "add_time"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/shishicai/app/domain/Record;->add_time:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/shishicai/app/domain/Record;->content:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/shishicai/app/domain/Record;->email:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setGoods_number(Ljava/lang/String;)V
    .locals 0
    .param p1, "goods_number"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/shishicai/app/domain/Record;->goods_number:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/shishicai/app/domain/Record;->id:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setOrder_status(Ljava/lang/String;)V
    .locals 0
    .param p1, "order_status"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/shishicai/app/domain/Record;->order_status:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setRank(Ljava/lang/String;)V
    .locals 0
    .param p1, "rank"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/shishicai/app/domain/Record;->rank:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/shishicai/app/domain/Record;->username:Ljava/lang/String;

    .line 27
    return-void
.end method
