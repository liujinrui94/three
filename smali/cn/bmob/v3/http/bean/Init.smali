.class public Lcn/bmob/v3/http/bean/Init;
.super Ljava/lang/Object;
.source "Init.java"


# instance fields
.field private api:Ljava/lang/String;

.field private file:Ljava/lang/String;

.field private io:Ljava/lang/String;

.field private isUp:Z

.field private other:Ljava/lang/String;

.field private push:Ljava/lang/String;

.field private timestamp:J

.field private upyunVer:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcn/bmob/v3/http/bean/Init;->api:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcn/bmob/v3/http/bean/Init;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getIo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcn/bmob/v3/http/bean/Init;->io:Ljava/lang/String;

    return-object v0
.end method

.method public getOther()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcn/bmob/v3/http/bean/Init;->other:Ljava/lang/String;

    return-object v0
.end method

.method public getPush()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcn/bmob/v3/http/bean/Init;->push:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcn/bmob/v3/http/bean/Init;->timestamp:J

    return-wide v0
.end method

.method public getUpyunVer()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcn/bmob/v3/http/bean/Init;->upyunVer:I

    return v0
.end method

.method public isUp()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcn/bmob/v3/http/bean/Init;->isUp:Z

    return v0
.end method

.method public setApi(Ljava/lang/String;)V
    .locals 0
    .param p1, "api"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcn/bmob/v3/http/bean/Init;->api:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcn/bmob/v3/http/bean/Init;->file:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setIo(Ljava/lang/String;)V
    .locals 0
    .param p1, "io"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcn/bmob/v3/http/bean/Init;->io:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setOther(Ljava/lang/String;)V
    .locals 0
    .param p1, "other"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcn/bmob/v3/http/bean/Init;->other:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setPush(Ljava/lang/String;)V
    .locals 0
    .param p1, "push"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcn/bmob/v3/http/bean/Init;->push:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lcn/bmob/v3/http/bean/Init;->timestamp:J

    .line 54
    return-void
.end method

.method public setUp(Z)V
    .locals 0
    .param p1, "isUp"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcn/bmob/v3/http/bean/Init;->isUp:Z

    .line 60
    return-void
.end method

.method public setUpyunVer(I)V
    .locals 0
    .param p1, "upyunVer"    # I

    .prologue
    .line 65
    iput p1, p0, Lcn/bmob/v3/http/bean/Init;->upyunVer:I

    .line 66
    return-void
.end method
