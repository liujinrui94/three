.class public final Lcn/bmob/v3/socketio/I$This;
.super Ljava/io/DataInputStream;
.source "HybiParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/socketio/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "This"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 399
    return-void
.end method


# virtual methods
.method public final Code(I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 402
    new-array v2, p1, [B

    move v0, v1

    .line 406
    :goto_0
    if-ge v0, p1, :cond_0

    .line 407
    sub-int v3, p1, v0

    invoke-virtual {p0, v2, v0, v3}, Lcn/bmob/v3/socketio/I$This;->read([BII)I

    move-result v3

    .line 408
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 411
    add-int/2addr v0, v3

    .line 412
    goto :goto_0

    .line 414
    :cond_0
    if-eq v0, p1, :cond_1

    .line 415
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Read wrong number of bytes. Got: %s, Expected: %s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 418
    :cond_1
    return-object v2
.end method
