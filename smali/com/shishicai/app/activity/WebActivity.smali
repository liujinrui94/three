.class public Lcom/shishicai/app/activity/WebActivity;
.super Lcom/shishicai/app/utils/Base2Activity;
.source "WebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/activity/WebActivity$MyAsyncTask;,
        Lcom/shishicai/app/activity/WebActivity$SaveImage;
    }
.end annotation


# static fields
.field private static final FILECHOOSER_RESULTCODE:I = 0x1

.field private static final MY_PERMISSIONS_REQUEST:I = 0x3e8


# instance fields
.field private downX:I

.field private downY:I

.field private file:Ljava/io/File;

.field private fileName:Ljava/lang/String;

.field private imageUri:Landroid/net/Uri;

.field private imgUrl:Ljava/lang/String;

.field private linear:Landroid/widget/LinearLayout;

.field private link:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mUploadCallbackAboveL:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mWebView:Landroid/webkit/WebView;

.field private path:Ljava/lang/String;

.field private popWindow:Lcom/shishicai/app/ui/SharePopupWindow;

.field private result:Ljava/lang/String;

.field private title:Landroid/widget/TextView;

.field private titleString:Ljava/lang/String;

.field private titleimgLeft:Landroid/widget/ImageView;

.field private webLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/shishicai/app/utils/Base2Activity;-><init>()V

    .line 449
    const-string v0, ""

    iput-object v0, p0, Lcom/shishicai/app/activity/WebActivity;->fileName:Ljava/lang/String;

    .line 450
    const-string v0, "\u4fdd\u5b58\u5931\u8d25\uff01"

    iput-object v0, p0, Lcom/shishicai/app/activity/WebActivity;->result:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/activity/WebActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/WebActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/shishicai/app/activity/WebActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/shishicai/app/activity/WebActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/WebActivity;
    .param p1, "x1"    # Landroid/webkit/ValueCallback;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/shishicai/app/activity/WebActivity;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/shishicai/app/activity/WebActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/WebActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/shishicai/app/activity/WebActivity;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/shishicai/app/activity/WebActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/WebActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/shishicai/app/activity/WebActivity;->fileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/shishicai/app/activity/WebActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/WebActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/shishicai/app/activity/WebActivity;->result:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/shishicai/app/activity/WebActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/WebActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/shishicai/app/activity/WebActivity;->result:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/shishicai/app/activity/WebActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/WebActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/shishicai/app/activity/WebActivity;->decodeImage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/shishicai/app/activity/WebActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/WebActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/shishicai/app/activity/WebActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/shishicai/app/activity/WebActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/WebActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/shishicai/app/activity/WebActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shishicai/app/activity/WebActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/WebActivity;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/shishicai/app/activity/WebActivity;->take()V

    return-void
.end method

.method static synthetic access$302(Lcom/shishicai/app/activity/WebActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/WebActivity;
    .param p1, "x1"    # Landroid/webkit/ValueCallback;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/shishicai/app/activity/WebActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$400(Lcom/shishicai/app/activity/WebActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/WebActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/shishicai/app/activity/WebActivity;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/shishicai/app/activity/WebActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/WebActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/shishicai/app/activity/WebActivity;->imgUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/shishicai/app/activity/WebActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/WebActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/shishicai/app/activity/WebActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/shishicai/app/activity/WebActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/WebActivity;

    .prologue
    .line 82
    iget v0, p0, Lcom/shishicai/app/activity/WebActivity;->downX:I

    return v0
.end method

.method static synthetic access$700(Lcom/shishicai/app/activity/WebActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/WebActivity;

    .prologue
    .line 82
    iget v0, p0, Lcom/shishicai/app/activity/WebActivity;->downY:I

    return v0
.end method

.method static synthetic access$800(Lcom/shishicai/app/activity/WebActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/WebActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/shishicai/app/activity/WebActivity;->path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/shishicai/app/activity/WebActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/WebActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/shishicai/app/activity/WebActivity;->path:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/shishicai/app/activity/WebActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/WebActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/shishicai/app/activity/WebActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private clearCacheFolder(Ljava/io/File;)I
    .locals 7
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 641
    const/4 v1, 0x0

    .line 642
    .local v1, "deletedFiles":I
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 644
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v0, v4, v3

    .line 645
    .local v0, "child":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 646
    invoke-direct {p0, v0}, Lcom/shishicai/app/activity/WebActivity;->clearCacheFolder(Ljava/io/File;)I

    move-result v6

    add-int/2addr v1, v6

    .line 648
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    .line 649
    add-int/lit8 v1, v1, 0x1

    .line 644
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 652
    .end local v0    # "child":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 653
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 659
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v3, "\u7f13\u5b58\u6e05\u9664\u5b8c\u6210!"

    invoke-static {p0, v3}, Lcom/shishicai/app/service/HttpMethod;->Toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 661
    return v1
.end method

.method private decodeImage(Ljava/lang/String;)V
    .locals 2
    .param p1, "sUrl"    # Ljava/lang/String;

    .prologue
    .line 530
    invoke-static {p1}, Lcom/shishicai/app/utils/DensityUtil;->base64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 531
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const-string v1, "code"

    invoke-virtual {p0, v0, v1}, Lcom/shishicai/app/activity/WebActivity;->saveMyBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 532
    return-void
.end method

.method public static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 894
    const/4 v8, 0x0

    .line 895
    .local v8, "cursor":Landroid/database/Cursor;
    const-string v6, "_data"

    .line 896
    .local v6, "column":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 899
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 900
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 901
    const-string v0, "_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 902
    .local v7, "column_index":I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 905
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 907
    .end local v7    # "column_index":I
    :cond_0
    :goto_0
    return-object v0

    .line 905
    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v9

    .line 907
    goto :goto_0

    .line 905
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 825
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x13

    if-lt v11, v12, :cond_1

    move v3, v9

    .line 828
    .local v3, "isKitKat":Z
    :goto_0
    if-eqz v3, :cond_7

    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 830
    invoke-static {p1}, Lcom/shishicai/app/activity/WebActivity;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 831
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 832
    .local v1, "docId":Ljava/lang/String;
    const-string v11, ":"

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 833
    .local v6, "split":[Ljava/lang/String;
    aget-object v7, v6, v10

    .line 835
    .local v7, "type":Ljava/lang/String;
    const-string v10, "primary"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 836
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 879
    .end local v1    # "docId":Ljava/lang/String;
    .end local v6    # "split":[Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v8

    .end local v3    # "isKitKat":Z
    :cond_1
    move v3, v10

    .line 825
    goto :goto_0

    .line 842
    .restart local v3    # "isKitKat":Z
    :cond_2
    invoke-static {p1}, Lcom/shishicai/app/activity/WebActivity;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 844
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 845
    .local v2, "id":Ljava/lang/String;
    const-string v9, "content://downloads/public_downloads"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 847
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-static {p0, v0, v8, v8}, Lcom/shishicai/app/activity/WebActivity;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 850
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v2    # "id":Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Lcom/shishicai/app/activity/WebActivity;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 851
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 852
    .restart local v1    # "docId":Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 853
    .restart local v6    # "split":[Ljava/lang/String;
    aget-object v7, v6, v10

    .line 855
    .restart local v7    # "type":Ljava/lang/String;
    const/4 v0, 0x0

    .line 856
    .restart local v0    # "contentUri":Landroid/net/Uri;
    const-string v8, "image"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 857
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 864
    :cond_4
    :goto_2
    const-string v4, "_id=?"

    .line 865
    .local v4, "selection":Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/String;

    aget-object v8, v6, v9

    aput-object v8, v5, v10

    .line 867
    .local v5, "selectionArgs":[Ljava/lang/String;
    const-string v8, "_id=?"

    invoke-static {p0, v0, v8, v5}, Lcom/shishicai/app/activity/WebActivity;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 858
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    :cond_5
    const-string v8, "video"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 859
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 860
    :cond_6
    const-string v8, "audio"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 861
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 871
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "docId":Ljava/lang/String;
    .end local v6    # "split":[Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_7
    const-string v9, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 872
    invoke-static {p0, p1, v8, v8}, Lcom/shishicai/app/activity/WebActivity;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 875
    :cond_8
    const-string v9, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 876
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1
.end method

.method private getShare()V
    .locals 2

    .prologue
    .line 666
    sget-object v0, Lcom/shishicai/app/Constant;->URL_SHARE:Ljava/lang/String;

    new-instance v1, Lcom/shishicai/app/activity/WebActivity$4;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/WebActivity$4;-><init>(Lcom/shishicai/app/activity/WebActivity;)V

    invoke-static {v0, v1}, Lcom/shishicai/app/service/HttpUser;->get(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 709
    return-void
.end method

.method public static isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 925
    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 916
    const-string v0, "com.android.externalstorage.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMediaDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 934
    const-string v0, "com.android.providers.media.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private onActivityResultAboveL(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 750
    if-ne p1, v6, :cond_0

    iget-object v5, p0, Lcom/shishicai/app/activity/WebActivity;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    if-nez v5, :cond_1

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    const/4 v4, 0x0

    .line 757
    .local v4, "results":[Landroid/net/Uri;
    const/4 v5, -0x1

    if-ne p2, v5, :cond_2

    .line 759
    if-nez p3, :cond_3

    .line 761
    new-array v4, v6, [Landroid/net/Uri;

    .end local v4    # "results":[Landroid/net/Uri;
    iget-object v5, p0, Lcom/shishicai/app/activity/WebActivity;->imageUri:Landroid/net/Uri;

    aput-object v5, v4, v7

    .line 778
    .restart local v4    # "results":[Landroid/net/Uri;
    :cond_2
    :goto_1
    if-eqz v4, :cond_5

    .line 779
    iget-object v5, p0, Lcom/shishicai/app/activity/WebActivity;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    invoke-interface {v5, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 780
    iput-object v8, p0, Lcom/shishicai/app/activity/WebActivity;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    goto :goto_0

    .line 763
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 764
    .local v1, "dataString":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 766
    .local v0, "clipData":Landroid/content/ClipData;
    if-eqz v0, :cond_4

    .line 767
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    new-array v4, v5, [Landroid/net/Uri;

    .line 768
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 769
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 770
    .local v3, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v4, v2

    .line 768
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 774
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/content/ClipData$Item;
    :cond_4
    if-eqz v1, :cond_2

    .line 775
    new-array v4, v6, [Landroid/net/Uri;

    .end local v4    # "results":[Landroid/net/Uri;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v4, v7

    .restart local v4    # "results":[Landroid/net/Uri;
    goto :goto_1

    .line 782
    .end local v0    # "clipData":Landroid/content/ClipData;
    .end local v1    # "dataString":Ljava/lang/String;
    :cond_5
    new-array v4, v6, [Landroid/net/Uri;

    .end local v4    # "results":[Landroid/net/Uri;
    iget-object v5, p0, Lcom/shishicai/app/activity/WebActivity;->imageUri:Landroid/net/Uri;

    aput-object v5, v4, v7

    .line 783
    .restart local v4    # "results":[Landroid/net/Uri;
    iget-object v5, p0, Lcom/shishicai/app/activity/WebActivity;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    invoke-interface {v5, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 784
    iput-object v8, p0, Lcom/shishicai/app/activity/WebActivity;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    goto :goto_0
.end method

.method private setFileOp()V
    .locals 7

    .prologue
    .line 550
    const/4 v1, 0x0

    .line 552
    .local v1, "fOut":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/shishicai/app/activity/WebActivity;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 553
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    .local v2, "fOut":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v3, p0, Lcom/shishicai/app/activity/WebActivity;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 554
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 555
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 556
    iget-object v3, p0, Lcom/shishicai/app/activity/WebActivity;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/shishicai/app/activity/WebActivity;->path:Ljava/lang/String;

    .line 557
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u56fe\u7247\u5df2\u4fdd\u5b58\u81f3\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/shishicai/app/activity/WebActivity;->result:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 560
    :try_start_2
    invoke-virtual {p0}, Lcom/shishicai/app/activity/WebActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->path:Ljava/lang/String;

    iget-object v5, p0, Lcom/shishicai/app/activity/WebActivity;->fileName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 566
    :goto_0
    :try_start_3
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/shishicai/app/activity/WebActivity;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v3}, Lcom/shishicai/app/activity/WebActivity;->sendBroadcast(Landroid/content/Intent;)V

    move-object v1, v2

    .line 572
    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 562
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fOut":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 567
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 568
    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    :goto_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 569
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 570
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 569
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fOut":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 567
    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method private setZoomControlGone(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1003
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    .line 1004
    .local v0, "classType":Ljava/lang/Class;
    const-string v4, "mZoomButtonsController"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1005
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1006
    new-instance v3, Landroid/widget/ZoomButtonsController;

    invoke-direct {v3, p1}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    .line 1007
    .local v3, "mZoomButtonsController":Landroid/widget/ZoomButtonsController;
    invoke-virtual {v3}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1009
    :try_start_1
    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1020
    .end local v0    # "classType":Ljava/lang/Class;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "mZoomButtonsController":Landroid/widget/ZoomButtonsController;
    :goto_0
    return-void

    .line 1010
    .restart local v0    # "classType":Ljava/lang/Class;
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v3    # "mZoomButtonsController":Landroid/widget/ZoomButtonsController;
    :catch_0
    move-exception v1

    .line 1011
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 1015
    .end local v0    # "classType":Ljava/lang/Class;
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "mZoomButtonsController":Landroid/widget/ZoomButtonsController;
    :catch_1
    move-exception v1

    .line 1016
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 1012
    .end local v1    # "e":Ljava/lang/SecurityException;
    .restart local v0    # "classType":Ljava/lang/Class;
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v3    # "mZoomButtonsController":Landroid/widget/ZoomButtonsController;
    :catch_2
    move-exception v1

    .line 1013
    .local v1, "e":Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 1017
    .end local v0    # "classType":Ljava/lang/Class;
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "mZoomButtonsController":Landroid/widget/ZoomButtonsController;
    :catch_3
    move-exception v1

    .line 1018
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method

.method private take()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 793
    new-instance v5, Ljava/io/File;

    sget-object v10, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v10}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    const-string v11, "MyApp"

    invoke-direct {v5, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 795
    .local v5, "imageStorageDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 796
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 798
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "IMG_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 799
    .local v3, "file":Ljava/io/File;
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Lcom/shishicai/app/activity/WebActivity;->imageUri:Landroid/net/Uri;

    .line 801
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 802
    .local v0, "cameraIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v1, Landroid/content/Intent;

    const-string v10, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 803
    .local v1, "captureIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/shishicai/app/activity/WebActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 804
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v7, v1, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 805
    .local v6, "listCam":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 806
    .local v9, "res":Landroid/content/pm/ResolveInfo;
    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 807
    .local v8, "packageName":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 808
    .local v4, "i":Landroid/content/Intent;
    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 809
    invoke-virtual {v4, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 810
    const-string v11, "output"

    iget-object v12, p0, Lcom/shishicai/app/activity/WebActivity;->imageUri:Landroid/net/Uri;

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 811
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 814
    .end local v4    # "i":Landroid/content/Intent;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "res":Landroid/content/pm/ResolveInfo;
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.GET_CONTENT"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 815
    .restart local v4    # "i":Landroid/content/Intent;
    const-string v10, "android.intent.category.OPENABLE"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 816
    const-string v10, "image/*"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    const-string v10, "Image Chooser"

    invoke-static {v4, v10}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    .line 818
    .local v2, "chooserIntent":Landroid/content/Intent;
    const-string v11, "android.intent.extra.INITIAL_INTENTS"

    new-array v10, v14, [Landroid/os/Parcelable;

    invoke-interface {v0, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/os/Parcelable;

    invoke-virtual {v2, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 819
    const/4 v10, 0x1

    invoke-virtual {p0, v2, v10}, Lcom/shishicai/app/activity/WebActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 820
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 721
    invoke-super {p0, p1, p2, p3}, Lcom/shishicai/app/utils/Base2Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 722
    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 724
    iget-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    if-nez v4, :cond_1

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    if-eqz p3, :cond_2

    const/4 v4, -0x1

    if-eq p2, v4, :cond_3

    :cond_2
    move-object v1, v3

    .line 726
    .local v1, "result":Landroid/net/Uri;
    :goto_1
    iget-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    if-eqz v4, :cond_4

    .line 727
    invoke-direct {p0, p1, p2, p3}, Lcom/shishicai/app/activity/WebActivity;->onActivityResultAboveL(IILandroid/content/Intent;)V

    goto :goto_0

    .line 725
    .end local v1    # "result":Landroid/net/Uri;
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .line 729
    .restart local v1    # "result":Landroid/net/Uri;
    :cond_4
    iget-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz v4, :cond_0

    .line 731
    if-eqz v1, :cond_5

    .line 732
    invoke-virtual {p0}, Lcom/shishicai/app/activity/WebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/shishicai/app/activity/WebActivity;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 734
    .local v0, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 735
    .local v2, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 736
    invoke-interface {v4, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 740
    .end local v0    # "path":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_2
    iput-object v3, p0, Lcom/shishicai/app/activity/WebActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    goto :goto_0

    .line 738
    :cond_5
    iget-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    iget-object v5, p0, Lcom/shishicai/app/activity/WebActivity;->imageUri:Landroid/net/Uri;

    invoke-interface {v4, v5}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 580
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 624
    :goto_0
    return-void

    .line 582
    :sswitch_0
    invoke-virtual {p0}, Lcom/shishicai/app/activity/WebActivity;->finish()V

    goto :goto_0

    .line 585
    :sswitch_1
    iget-object v1, p0, Lcom/shishicai/app/activity/WebActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/shishicai/app/activity/WebActivity;->link:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 588
    :sswitch_2
    iget-object v1, p0, Lcom/shishicai/app/activity/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    iget-object v1, p0, Lcom/shishicai/app/activity/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 591
    :cond_0
    const-string v1, "\u4e0d\u80fd\u518d\u540e\u9000\u4e86!"

    invoke-static {p0, v1}, Lcom/shishicai/app/service/HttpMethod;->Toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 595
    :sswitch_3
    iget-object v1, p0, Lcom/shishicai/app/activity/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 596
    iget-object v1, p0, Lcom/shishicai/app/activity/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    .line 598
    :cond_1
    const-string v1, "\u4e0d\u80fd\u518d\u524d\u8fdb\u4e86!"

    invoke-static {p0, v1}, Lcom/shishicai/app/service/HttpMethod;->Toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 602
    :sswitch_4
    iget-object v1, p0, Lcom/shishicai/app/activity/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 605
    :sswitch_5
    iget-object v1, p0, Lcom/shishicai/app/activity/WebActivity;->popWindow:Lcom/shishicai/app/ui/SharePopupWindow;

    if-nez v1, :cond_2

    .line 606
    new-instance v1, Lcom/shishicai/app/ui/SharePopupWindow;

    invoke-direct {v1, p0, p0}, Lcom/shishicai/app/ui/SharePopupWindow;-><init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/shishicai/app/activity/WebActivity;->popWindow:Lcom/shishicai/app/ui/SharePopupWindow;

    .line 608
    :cond_2
    iget-object v1, p0, Lcom/shishicai/app/activity/WebActivity;->popWindow:Lcom/shishicai/app/ui/SharePopupWindow;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/shishicai/app/ui/SharePopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 611
    :sswitch_6
    iget-object v1, p0, Lcom/shishicai/app/activity/WebActivity;->popWindow:Lcom/shishicai/app/ui/SharePopupWindow;

    invoke-virtual {v1}, Lcom/shishicai/app/ui/SharePopupWindow;->dismiss()V

    .line 612
    invoke-direct {p0}, Lcom/shishicai/app/activity/WebActivity;->getShare()V

    goto :goto_0

    .line 615
    :sswitch_7
    iget-object v1, p0, Lcom/shishicai/app/activity/WebActivity;->popWindow:Lcom/shishicai/app/ui/SharePopupWindow;

    invoke-virtual {v1}, Lcom/shishicai/app/ui/SharePopupWindow;->dismiss()V

    .line 616
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/shishicai/app/activity/MsgActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 617
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/WebActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 620
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_8
    iget-object v1, p0, Lcom/shishicai/app/activity/WebActivity;->popWindow:Lcom/shishicai/app/ui/SharePopupWindow;

    invoke-virtual {v1}, Lcom/shishicai/app/ui/SharePopupWindow;->dismiss()V

    .line 621
    invoke-virtual {p0}, Lcom/shishicai/app/activity/WebActivity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/shishicai/app/activity/WebActivity;->clearCacheFolder(Ljava/io/File;)I

    goto :goto_0

    .line 580
    :sswitch_data_0
    .sparse-switch
        0x7f090047 -> :sswitch_1
        0x7f090048 -> :sswitch_2
        0x7f090049 -> :sswitch_3
        0x7f09004a -> :sswitch_4
        0x7f09004b -> :sswitch_5
        0x7f090060 -> :sswitch_6
        0x7f090061 -> :sswitch_7
        0x7f090062 -> :sswitch_8
        0x7f0900f0 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0xb

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 103
    invoke-super {p0, p1}, Lcom/shishicai/app/utils/Base2Activity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0, v7}, Lcom/shishicai/app/activity/WebActivity;->requestWindowFeature(I)Z

    .line 105
    const v4, 0x7f03000f

    invoke-virtual {p0, v4}, Lcom/shishicai/app/activity/WebActivity;->setContentView(I)V

    .line 106
    const-string v4, "WebviewActivity"

    iput-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->TAG:Ljava/lang/String;

    .line 108
    const v4, 0x7f0900f1

    invoke-virtual {p0, v4}, Lcom/shishicai/app/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->title:Landroid/widget/TextView;

    .line 109
    const v4, 0x7f0900f0

    invoke-virtual {p0, v4}, Lcom/shishicai/app/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->titleimgLeft:Landroid/widget/ImageView;

    .line 110
    iget-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->titleimgLeft:Landroid/widget/ImageView;

    const v5, 0x7f020110

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    iget-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->titleimgLeft:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v4, 0x7f090043

    invoke-virtual {p0, v4}, Lcom/shishicai/app/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->webLayout:Landroid/widget/LinearLayout;

    .line 113
    const v4, 0x7f090025

    invoke-virtual {p0, v4}, Lcom/shishicai/app/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->linear:Landroid/widget/LinearLayout;

    .line 114
    const v4, 0x7f090047

    invoke-virtual {p0, v4}, Lcom/shishicai/app/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v4, 0x7f090048

    invoke-virtual {p0, v4}, Lcom/shishicai/app/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v4, 0x7f090049

    invoke-virtual {p0, v4}, Lcom/shishicai/app/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v4, 0x7f09004a

    invoke-virtual {p0, v4}, Lcom/shishicai/app/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v4, 0x7f09004b

    invoke-virtual {p0, v4}, Lcom/shishicai/app/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v4, 0x7f090044

    invoke-virtual {p0, v4}, Lcom/shishicai/app/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 120
    .local v0, "bar":Landroid/widget/ProgressBar;
    const v4, 0x7f090045

    invoke-virtual {p0, v4}, Lcom/shishicai/app/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    iput-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->mWebView:Landroid/webkit/WebView;

    .line 121
    invoke-virtual {p0}, Lcom/shishicai/app/activity/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 122
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "title"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->titleString:Ljava/lang/String;

    .line 123
    const-string v4, "link"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->link:Ljava/lang/String;

    .line 124
    iget-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "title="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/shishicai/app/activity/WebActivity;->titleString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "link="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/shishicai/app/activity/WebActivity;->link:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 128
    .local v3, "webSettings":Landroid/webkit/WebSettings;
    iget-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v8}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 130
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 132
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 134
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 135
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 137
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v10, :cond_1

    .line 139
    invoke-virtual {v3, v8}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 143
    :goto_0
    sget-object v4, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 144
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 145
    sget-object v4, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 146
    invoke-static {p0}, Lcom/shishicai/app/service/HttpMethod;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 147
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 151
    :goto_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_3

    .line 152
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 156
    :goto_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v10, :cond_0

    .line 157
    iget-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v5, 0x0

    invoke-virtual {v4, v7, v5}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 160
    :cond_0
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 162
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 163
    invoke-virtual {p0}, Lcom/shishicai/app/activity/WebActivity;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "cacheDirPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cacheDirPath="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 175
    iget-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/shishicai/app/activity/WebActivity$1;

    invoke-direct {v5, p0, v3}, Lcom/shishicai/app/activity/WebActivity$1;-><init>(Lcom/shishicai/app/activity/WebActivity;Landroid/webkit/WebSettings;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 240
    iget-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/shishicai/app/activity/WebActivity$2;

    invoke-direct {v5, p0, v0}, Lcom/shishicai/app/activity/WebActivity$2;-><init>(Lcom/shishicai/app/activity/WebActivity;Landroid/widget/ProgressBar;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 341
    iget-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, p0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 343
    iget-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/shishicai/app/activity/WebActivity$3;

    invoke-direct {v5, p0}, Lcom/shishicai/app/activity/WebActivity$3;-><init>(Lcom/shishicai/app/activity/WebActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 435
    const v4, 0x7f090046

    invoke-virtual {p0, v4}, Lcom/shishicai/app/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 436
    iget-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->title:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/shishicai/app/activity/WebActivity;->titleString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->linear:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 438
    iget-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->webLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 439
    sget-object v4, Landroid/webkit/WebSettings$TextSize;->LARGEST:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 440
    iget-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/shishicai/app/activity/WebActivity;->link:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 441
    return-void

    .line 141
    .end local v1    # "cacheDirPath":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/shishicai/app/activity/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-direct {p0, v4}, Lcom/shishicai/app/activity/WebActivity;->setZoomControlGone(Landroid/view/View;)V

    goto/16 :goto_0

    .line 149
    :cond_2
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto/16 :goto_1

    .line 154
    :cond_3
    invoke-virtual {v3, v8}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 940
    invoke-super {p0}, Lcom/shishicai/app/utils/Base2Activity;->onDestroy()V

    .line 941
    iget-object v0, p0, Lcom/shishicai/app/activity/WebActivity;->popWindow:Lcom/shishicai/app/ui/SharePopupWindow;

    if-eqz v0, :cond_1

    .line 943
    iget-object v0, p0, Lcom/shishicai/app/activity/WebActivity;->popWindow:Lcom/shishicai/app/ui/SharePopupWindow;

    invoke-virtual {v0}, Lcom/shishicai/app/ui/SharePopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/shishicai/app/activity/WebActivity;->popWindow:Lcom/shishicai/app/ui/SharePopupWindow;

    invoke-virtual {v0}, Lcom/shishicai/app/ui/SharePopupWindow;->dismiss()V

    .line 947
    :cond_0
    iput-object v1, p0, Lcom/shishicai/app/activity/WebActivity;->popWindow:Lcom/shishicai/app/ui/SharePopupWindow;

    .line 949
    :cond_1
    iget-object v0, p0, Lcom/shishicai/app/activity/WebActivity;->file:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 951
    iput-object v1, p0, Lcom/shishicai/app/activity/WebActivity;->file:Ljava/io/File;

    .line 953
    :cond_2
    iget-object v0, p0, Lcom/shishicai/app/activity/WebActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 955
    iget-object v0, p0, Lcom/shishicai/app/activity/WebActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 957
    iget-object v0, p0, Lcom/shishicai/app/activity/WebActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 959
    :cond_3
    iput-object v1, p0, Lcom/shishicai/app/activity/WebActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 961
    :cond_4
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 962
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 630
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/shishicai/app/activity/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/shishicai/app/activity/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 633
    const/4 v0, 0x1

    .line 635
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/shishicai/app/utils/Base2Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 965
    invoke-super {p0, p1}, Lcom/shishicai/app/utils/Base2Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 966
    invoke-virtual {p0, p1}, Lcom/shishicai/app/activity/WebActivity;->setIntent(Landroid/content/Intent;)V

    .line 967
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v2, 0x0

    .line 971
    invoke-super {p0, p1, p2, p3}, Lcom/shishicai/app/utils/Base2Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 972
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 974
    aget v0, p3, v2

    if-nez v0, :cond_1

    .line 976
    new-instance v0, Lcom/shishicai/app/activity/WebActivity$SaveImage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shishicai/app/activity/WebActivity$SaveImage;-><init>(Lcom/shishicai/app/activity/WebActivity;Lcom/shishicai/app/activity/WebActivity$1;)V

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shishicai/app/activity/WebActivity$SaveImage;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 983
    :cond_0
    :goto_0
    return-void

    .line 980
    :cond_1
    const-string v0, "\u8bfb\u5199\u6743\u9650\u88ab\u7981\u6b62\uff0c\u65e0\u6cd5\u4fdd\u5b58\u622a\u56fe"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 713
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/shishicai/app/activity/WebActivity;->downX:I

    .line 714
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/shishicai/app/activity/WebActivity;->downY:I

    .line 715
    iget-object v0, p0, Lcom/shishicai/app/activity/WebActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/shishicai/app/activity/WebActivity;->downX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/shishicai/app/activity/WebActivity;->downY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const/4 v0, 0x0

    return v0
.end method

.method public parseScheme(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 986
    const-string v1, "alipay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "weixin"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 995
    :cond_0
    :goto_0
    return v0

    .line 989
    :cond_1
    const-string v1, "platformapi/startapp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 991
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-le v1, v2, :cond_2

    const-string v1, "platformapi"

    .line 992
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "startapp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 995
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveMyBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .param p1, "mBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "bitName"    # Ljava/lang/String;

    .prologue
    .line 543
    iput-object p1, p0, Lcom/shishicai/app/activity/WebActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shishicai/app/activity/WebActivity;->fileName:Ljava/lang/String;

    .line 545
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/shishicai/app/activity/WebActivity;->file:Ljava/io/File;

    .line 546
    invoke-direct {p0}, Lcom/shishicai/app/activity/WebActivity;->setFileOp()V

    .line 547
    return-void
.end method
