.class public Lcn/bmob/push/autobahn/WebSocketOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private M:I

.field private N:I

.field private O:Z

.field private P:Z

.field private Q:I

.field private R:I

.field private T:Z

.field private U:Z

.field private W:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v0, 0x20000

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v0, p0, Lcn/bmob/push/autobahn/WebSocketOptions;->M:I

    .line 47
    iput v0, p0, Lcn/bmob/push/autobahn/WebSocketOptions;->N:I

    .line 48
    iput-boolean v2, p0, Lcn/bmob/push/autobahn/WebSocketOptions;->O:Z

    .line 49
    iput-boolean v1, p0, Lcn/bmob/push/autobahn/WebSocketOptions;->P:Z

    .line 50
    const/16 v0, 0xc8

    iput v0, p0, Lcn/bmob/push/autobahn/WebSocketOptions;->Q:I

    .line 51
    const/16 v0, 0x1770

    iput v0, p0, Lcn/bmob/push/autobahn/WebSocketOptions;->R:I

    .line 52
    iput-boolean v1, p0, Lcn/bmob/push/autobahn/WebSocketOptions;->T:Z

    .line 53
    iput-boolean v1, p0, Lcn/bmob/push/autobahn/WebSocketOptions;->U:Z

    .line 54
    iput v2, p0, Lcn/bmob/push/autobahn/WebSocketOptions;->W:I

    .line 55
    return-void
.end method

.method public constructor <init>(Lcn/bmob/push/autobahn/WebSocketOptions;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iget v0, p1, Lcn/bmob/push/autobahn/WebSocketOptions;->M:I

    iput v0, p0, Lcn/bmob/push/autobahn/WebSocketOptions;->M:I

    .line 65
    iget v0, p1, Lcn/bmob/push/autobahn/WebSocketOptions;->N:I

    iput v0, p0, Lcn/bmob/push/autobahn/WebSocketOptions;->N:I

    .line 66
    iget-boolean v0, p1, Lcn/bmob/push/autobahn/WebSocketOptions;->O:Z

    iput-boolean v0, p0, Lcn/bmob/push/autobahn/WebSocketOptions;->O:Z

    .line 67
    iget-boolean v0, p1, Lcn/bmob/push/autobahn/WebSocketOptions;->P:Z

    iput-boolean v0, p0, Lcn/bmob/push/autobahn/WebSocketOptions;->P:Z

    .line 68
    iget v0, p1, Lcn/bmob/push/autobahn/WebSocketOptions;->Q:I

    iput v0, p0, Lcn/bmob/push/autobahn/WebSocketOptions;->Q:I

    .line 69
    iget v0, p1, Lcn/bmob/push/autobahn/WebSocketOptions;->R:I

    iput v0, p0, Lcn/bmob/push/autobahn/WebSocketOptions;->R:I

    .line 70
    iget-boolean v0, p1, Lcn/bmob/push/autobahn/WebSocketOptions;->T:Z

    iput-boolean v0, p0, Lcn/bmob/push/autobahn/WebSocketOptions;->T:Z

    .line 71
    iget-boolean v0, p1, Lcn/bmob/push/autobahn/WebSocketOptions;->U:Z

    iput-boolean v0, p0, Lcn/bmob/push/autobahn/WebSocketOptions;->U:Z

    .line 72
    iget v0, p1, Lcn/bmob/push/autobahn/WebSocketOptions;->W:I

    iput v0, p0, Lcn/bmob/push/autobahn/WebSocketOptions;->W:I

    .line 73
    return-void
.end method


# virtual methods
.method public final L()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcn/bmob/push/autobahn/WebSocketOptions;->O:Z

    return v0
.end method

.method public final a()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcn/bmob/push/autobahn/WebSocketOptions;->M:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcn/bmob/push/autobahn/WebSocketOptions;->N:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcn/bmob/push/autobahn/WebSocketOptions;->Q:I

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcn/bmob/push/autobahn/WebSocketOptions;->R:I

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcn/bmob/push/autobahn/WebSocketOptions;->T:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcn/bmob/push/autobahn/WebSocketOptions;->U:Z

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcn/bmob/push/autobahn/WebSocketOptions;->W:I

    return v0
.end method

.method public final getTcpNoDelay()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcn/bmob/push/autobahn/WebSocketOptions;->P:Z

    return v0
.end method
