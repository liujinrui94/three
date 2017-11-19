.class public Lcn/bmob/push/autobahn/WebSocketMessage$Close;
.super Lcn/bmob/push/autobahn/WebSocketMessage$Message;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/String;

.field public z:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Lcn/bmob/push/autobahn/WebSocketMessage$Message;-><init>()V

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcn/bmob/push/autobahn/WebSocketMessage$Close;->z:I

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/bmob/push/autobahn/WebSocketMessage$Close;->A:Ljava/lang/String;

    .line 155
    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Lcn/bmob/push/autobahn/WebSocketMessage$Message;-><init>()V

    .line 158
    const/16 v0, 0x3e8

    iput v0, p0, Lcn/bmob/push/autobahn/WebSocketMessage$Close;->z:I

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/bmob/push/autobahn/WebSocketMessage$Close;->A:Ljava/lang/String;

    .line 160
    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lcn/bmob/push/autobahn/WebSocketMessage$Message;-><init>()V

    .line 163
    iput p1, p0, Lcn/bmob/push/autobahn/WebSocketMessage$Close;->z:I

    .line 164
    iput-object p2, p0, Lcn/bmob/push/autobahn/WebSocketMessage$Close;->A:Ljava/lang/String;

    .line 165
    return-void
.end method
