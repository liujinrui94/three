.class public Lcn/volley/toolbox/Volley;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_CACHE_DIR:Ljava/lang/String; = "volley"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static B(Landroid/content/Context;)Lcn/volley/RequestQueue;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/volley/toolbox/Volley;->Code(Landroid/content/Context;Lcn/volley/toolbox/HttpStack;)Lcn/volley/RequestQueue;

    move-result-object v0

    return-object v0
.end method

.method private static Code(Landroid/content/Context;Lcn/volley/toolbox/HttpStack;)Lcn/volley/RequestQueue;
    .locals 5

    .prologue
    .line 43
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "volley"

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    const-string v0, "volley/0"

    .line 47
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 54
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v1, v3, :cond_0

    .line 55
    new-instance v0, Lcn/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcn/volley/toolbox/HurlStack;-><init>()V

    .line 63
    :goto_1
    new-instance v1, Lcn/volley/toolbox/BasicNetwork;

    invoke-direct {v1, v0}, Lcn/volley/toolbox/BasicNetwork;-><init>(Lcn/volley/toolbox/HttpStack;)V

    .line 65
    new-instance v0, Lcn/volley/RequestQueue;

    new-instance v3, Lcn/volley/toolbox/DiskBasedCache;

    invoke-direct {v3, v2}, Lcn/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3, v1}, Lcn/volley/RequestQueue;-><init>(Lcn/volley/Cache;Lcn/volley/Network;)V

    .line 66
    invoke-virtual {v0}, Lcn/volley/RequestQueue;->start()V

    .line 68
    return-object v0

    .line 59
    :cond_0
    new-instance v1, Lcn/volley/toolbox/HttpClientStack;

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    invoke-direct {v1, v0}, Lcn/volley/toolbox/HttpClientStack;-><init>(Lorg/apache/http/client/HttpClient;)V

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method
