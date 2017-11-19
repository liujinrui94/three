.class public Lcn/bmob/push/autobahn/ByteBufferInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final S:Ljava/nio/ByteBuffer;


# virtual methods
.method public declared-synchronized read()I
    .locals 1

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/bmob/push/autobahn/ByteBufferInputStream;->S:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const/4 v0, -0x1

    .line 56
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/bmob/push/autobahn/ByteBufferInputStream;->S:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 2

    .prologue
    .line 73
    monitor-enter p0

    if-nez p1, :cond_0

    .line 74
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 75
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    :try_start_1
    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_2

    .line 76
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :cond_2
    if-nez p3, :cond_3

    .line 78
    const/4 v0, 0x0

    .line 87
    :goto_0
    monitor-exit p0

    return v0

    .line 81
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcn/bmob/push/autobahn/ByteBufferInputStream;->S:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 82
    if-nez v0, :cond_4

    .line 83
    const/4 v0, -0x1

    goto :goto_0

    .line 86
    :cond_4
    iget-object v1, p0, Lcn/bmob/push/autobahn/ByteBufferInputStream;->S:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
