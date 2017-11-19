.class public Lcn/bmob/push/lib/service/ClientPacket;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public data:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {}, Lcn/bmob/push/lib/util/AtomicIntegerUtil;->k()I

    .line 12
    iput-object p1, p0, Lcn/bmob/push/lib/service/ClientPacket;->data:[B

    .line 13
    return-void
.end method
