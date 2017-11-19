.class public final Lcn/bmob/v3/datatype/a/From;
.super Lcn/bmob/v3/datatype/a/of;
.source "UpYunUploader.java"


# instance fields
.field private B:Landroid/content/Context;

.field private C:Ljava/io/File;

.field I:Lcn/bmob/v3/http/bean/Upyun;

.field private Z:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/bmob/v3/http/bean/Upyun;Lcn/bmob/v3/datatype/BmobFile;Lcn/bmob/v3/listener/UploadFileListener;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p3, p4}, Lcn/bmob/v3/datatype/a/of;-><init>(Lcn/bmob/v3/datatype/BmobFile;Lcn/bmob/v3/listener/UploadFileListener;)V

    .line 35
    iput-object p2, p0, Lcn/bmob/v3/datatype/a/From;->I:Lcn/bmob/v3/http/bean/Upyun;

    .line 36
    iput-object p1, p0, Lcn/bmob/v3/datatype/a/From;->B:Landroid/content/Context;

    .line 37
    invoke-virtual {p3}, Lcn/bmob/v3/datatype/BmobFile;->getLocalFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/datatype/a/From;->C:Ljava/io/File;

    .line 38
    return-void
.end method

.method static synthetic Code(Lcn/bmob/v3/datatype/a/From;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcn/bmob/v3/datatype/a/From;->Z:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic Code(Lcn/bmob/v3/datatype/a/From;ZLjava/lang/String;)V
    .locals 5

    .prologue
    const/16 v4, 0x2337

    .line 27
    .line 1110
    if-eqz p1, :cond_1

    .line 1112
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcn/bmob/v3/datatype/a/From$4;

    invoke-direct {v1, p0}, Lcn/bmob/v3/datatype/a/From$4;-><init>(Lcn/bmob/v3/datatype/a/From;)V

    invoke-virtual {v1}, Lcn/bmob/v3/datatype/a/From$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1113
    const-string v1, "path"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1114
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/bmob/v3/datatype/a/From;->I:Lcn/bmob/v3/http/bean/Upyun;

    invoke-virtual {v2}, Lcn/bmob/v3/http/bean/Upyun;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1115
    iget-object v1, p0, Lcn/bmob/v3/datatype/a/From;->C:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1116
    const-string v2, ""

    .line 1117
    iget-object v3, p0, Lcn/bmob/v3/datatype/a/From;->Code:Lcn/bmob/v3/datatype/BmobFile;

    invoke-virtual {v3, v1, v2, v0}, Lcn/bmob/v3/datatype/BmobFile;->obtain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    iget-object v0, p0, Lcn/bmob/v3/datatype/a/From;->V:Lcn/bmob/v3/listener/UploadFileListener;

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcn/bmob/v3/datatype/a/From;->V:Lcn/bmob/v3/listener/UploadFileListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/bmob/v3/listener/UploadFileListener;->done(Lcn/bmob/v3/exception/BmobException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1126
    :cond_0
    :goto_0
    return-void

    .line 1121
    :catch_0
    move-exception v0

    .line 1122
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1123
    iget-object v1, p0, Lcn/bmob/v3/datatype/a/From;->V:Lcn/bmob/v3/listener/UploadFileListener;

    if-eqz v1, :cond_0

    .line 1124
    iget-object v1, p0, Lcn/bmob/v3/datatype/a/From;->V:Lcn/bmob/v3/listener/UploadFileListener;

    new-instance v2, Lcn/bmob/v3/exception/BmobException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v4, v0}, Lcn/bmob/v3/exception/BmobException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcn/bmob/v3/listener/UploadFileListener;->done(Lcn/bmob/v3/exception/BmobException;)V

    goto :goto_0

    .line 1128
    :cond_1
    iget-object v0, p0, Lcn/bmob/v3/datatype/a/From;->V:Lcn/bmob/v3/listener/UploadFileListener;

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcn/bmob/v3/datatype/a/From;->V:Lcn/bmob/v3/listener/UploadFileListener;

    new-instance v1, Lcn/bmob/v3/exception/BmobException;

    invoke-direct {v1, v4, p2}, Lcn/bmob/v3/exception/BmobException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/listener/UploadFileListener;->done(Lcn/bmob/v3/exception/BmobException;)V

    goto :goto_0
.end method


# virtual methods
.method public final Code()V
    .locals 9

    .prologue
    const/16 v7, 0xa

    const/4 v4, 0x1

    .line 42
    iget-object v0, p0, Lcn/bmob/v3/datatype/a/From;->B:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/datatype/a/From;->Z:Landroid/os/PowerManager$WakeLock;

    .line 44
    iget-object v0, p0, Lcn/bmob/v3/datatype/a/From;->Z:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 45
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 47
    const-string v0, "bucket"

    iget-object v1, p0, Lcn/bmob/v3/datatype/a/From;->I:Lcn/bmob/v3/http/bean/Upyun;

    invoke-virtual {v1}, Lcn/bmob/v3/http/bean/Upyun;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 51
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 52
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 53
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 55
    if-ge v1, v7, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 60
    :goto_0
    if-ge v5, v7, :cond_1

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_1
    iget-object v5, p0, Lcn/bmob/v3/datatype/a/From;->C:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 66
    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "-"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 68
    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v0, "save-key"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v5, Lcn/bmob/v3/datatype/a/From$1;

    invoke-direct {v5, p0}, Lcn/bmob/v3/datatype/a/From$1;-><init>(Lcn/bmob/v3/datatype/a/From;)V

    .line 83
    new-instance v4, Lcn/bmob/v3/datatype/a/From$2;

    invoke-direct {v4, p0}, Lcn/bmob/v3/datatype/a/From$2;-><init>(Lcn/bmob/v3/datatype/a/From;)V

    .line 95
    new-instance v3, Lcn/bmob/v3/datatype/a/From$3;

    invoke-direct {v3, p0}, Lcn/bmob/v3/datatype/a/From$3;-><init>(Lcn/bmob/v3/datatype/a/From;)V

    .line 101
    invoke-static {}, Lcn/bmob/v3/datatype/a/The;->Code()Lcn/bmob/v3/datatype/a/The;

    move-result-object v0

    iget-object v1, p0, Lcn/bmob/v3/datatype/a/From;->C:Ljava/io/File;

    invoke-virtual/range {v0 .. v5}, Lcn/bmob/v3/datatype/a/The;->Code(Ljava/io/File;Ljava/util/Map;Lcn/bmob/v3/datatype/a/darkness;Lcn/bmob/v3/datatype/a/I;Lcn/bmob/v3/datatype/a/mine;)V

    .line 102
    return-void

    .line 58
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 63
    :cond_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
