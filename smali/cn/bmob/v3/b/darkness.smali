.class public final Lcn/bmob/v3/b/darkness;
.super Ljava/lang/Object;
.source "CacheHelper.java"


# static fields
.field private static Code:I

.field private static V:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/high16 v0, 0x200000

    sput v0, Lcn/bmob/v3/b/darkness;->Code:I

    .line 32
    const/16 v0, 0x3e8

    sput v0, Lcn/bmob/v3/b/darkness;->V:I

    return-void
.end method

.method private static Code(Ljava/io/File;)J
    .locals 3

    .prologue
    .line 234
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 236
    const/4 v1, 0x0

    const/16 v2, 0x2e

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 239
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static Code(Ljava/lang/String;J)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 188
    invoke-static {p0, p1, p2}, Lcn/bmob/v3/b/darkness;->V(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 189
    if-nez v1, :cond_0

    .line 199
    :goto_0
    return-object v0

    .line 192
    :cond_0
    new-instance v2, Lorg/json/JSONTokener;

    invoke-static {v1}, Lcn/bmob/v3/datatype/a/This;->Z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 194
    :try_start_0
    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v1

    invoke-static {p0}, Lcn/bmob/v3/b/darkness;->Code(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static Code(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 41
    :try_start_0
    const-string v0, "timestamp"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const-string v0, "timestamp"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    :cond_0
    const-string v0, "sessionToken"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    const-string v0, "sessionToken"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    :cond_1
    const-string v0, "client"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    const-string v0, "v"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    const-string v0, "appSign"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1067
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    .line 1068
    invoke-static {v0, p0}, Lcn/bmob/v3/b/darkness;->Code(Lorg/json/JSONStringer;Ljava/lang/Object;)V

    .line 1069
    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 54
    new-instance v1, Lcn/bmob/v3/b/The;

    invoke-direct {v1}, Lcn/bmob/v3/b/The;-><init>()V

    const-string v2, "sessionToken"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcn/bmob/v3/b/The;->V(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RequestCommand.find.3."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/bmob/v3/a/b/This;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    return-object v0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static Code()V
    .locals 3

    .prologue
    .line 250
    invoke-static {}, Lcn/bmob/v3/b/darkness;->V()Ljava/io/File;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 252
    if-nez v1, :cond_1

    .line 257
    :cond_0
    return-void

    .line 255
    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 256
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static Code(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 243
    invoke-static {p0}, Lcn/bmob/v3/b/darkness;->V(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 247
    :cond_0
    return-void
.end method

.method public static Code(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-static {p0}, Lcn/bmob/v3/b/darkness;->V(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 108
    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1178
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1179
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcn/bmob/v3/b/darkness;->V()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 114
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 115
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    invoke-static {}, Lcn/bmob/v3/b/darkness;->V()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 121
    array-length v2, v5

    .line 123
    array-length v6, v5

    move v3, v0

    move v1, v0

    :goto_1
    if-ge v3, v6, :cond_1

    aget-object v4, v5, v3

    .line 124
    int-to-long v8, v1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    add-long/2addr v8, v10

    long-to-int v4, v8

    .line 123
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v4

    goto :goto_1

    .line 126
    :cond_1
    sget v3, Lcn/bmob/v3/b/darkness;->V:I

    if-gt v2, v3, :cond_2

    sget v3, Lcn/bmob/v3/b/darkness;->Code:I

    if-le v1, v3, :cond_4

    .line 128
    :cond_2
    new-instance v3, Lcn/bmob/v3/b/darkness$1;

    invoke-direct {v3}, Lcn/bmob/v3/b/darkness$1;-><init>()V

    invoke-static {v5, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 140
    array-length v3, v5

    :goto_2
    if-ge v0, v3, :cond_4

    aget-object v4, v5, v0

    .line 141
    add-int/lit8 v2, v2, -0x1

    .line 142
    int-to-long v6, v1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-int v1, v6

    .line 143
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 144
    sget v4, Lcn/bmob/v3/b/darkness;->V:I

    if-gt v2, v4, :cond_3

    sget v4, Lcn/bmob/v3/b/darkness;->Code:I

    if-le v1, v4, :cond_4

    .line 140
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 149
    :cond_4
    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    .line 118
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static Code(Lorg/json/JSONStringer;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 73
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 74
    invoke-virtual {p0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 75
    check-cast p1, Lorg/json/JSONObject;

    .line 76
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 82
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    invoke-virtual {p0, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 84
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/bmob/v3/b/darkness;->Code(Lorg/json/JSONStringer;Ljava/lang/Object;)V

    goto :goto_1

    .line 86
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 99
    :goto_2
    return-void

    .line 89
    :cond_2
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_4

    .line 90
    check-cast p1, Lorg/json/JSONArray;

    .line 91
    invoke-virtual {p0}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    .line 92
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 93
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1}, Lcn/bmob/v3/b/darkness;->Code(Lorg/json/JSONStringer;Ljava/lang/Object;)V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 95
    :cond_3
    invoke-virtual {p0}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    goto :goto_2

    .line 98
    :cond_4
    invoke-virtual {p0, p1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    goto :goto_2
.end method

.method private static declared-synchronized V()Ljava/io/File;
    .locals 3

    .prologue
    .line 170
    const-class v1, Lcn/bmob/v3/b/darkness;

    monitor-enter v1

    :try_start_0
    const-string v0, "BmobKeyValueCache"

    invoke-static {v0}, Lcn/bmob/v3/Bmob;->getCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    :cond_0
    monitor-exit v1

    return-object v0

    .line 174
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "could not create Bmob cache directory"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static V(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {}, Lcn/bmob/v3/b/darkness;->V()Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcn/bmob/v3/b/darkness$2;

    invoke-direct {v2, v0}, Lcn/bmob/v3/b/darkness$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 163
    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static V(Ljava/lang/String;J)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 208
    invoke-static {p0}, Lcn/bmob/v3/b/darkness;->V(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 209
    if-nez v1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-object v0

    .line 212
    :cond_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 213
    const-wide/16 v4, 0x0

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v6, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 214
    invoke-static {v1}, Lcn/bmob/v3/b/darkness;->Code(Ljava/io/File;)J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-ltz v3, :cond_0

    .line 217
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 220
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v1, v4

    new-array v3, v1, [B

    .line 222
    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 223
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 224
    new-instance v1, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 228
    invoke-static {v2}, Lcn/bmob/v3/datatype/a/This;->Code(Ljava/io/Closeable;)V

    move-object v0, v1

    goto :goto_0

    .line 225
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 226
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 228
    invoke-static {v2}, Lcn/bmob/v3/datatype/a/This;->Code(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    invoke-static {v2}, Lcn/bmob/v3/datatype/a/This;->Code(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 225
    :catch_1
    move-exception v1

    goto :goto_1
.end method
