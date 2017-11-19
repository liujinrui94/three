.class Lcom/shishicai/app/activity/WebActivity$SaveImage;
.super Landroid/os/AsyncTask;
.source "WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/WebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveImage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/WebActivity;


# direct methods
.method private constructor <init>(Lcom/shishicai/app/activity/WebActivity;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/shishicai/app/activity/WebActivity$SaveImage;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shishicai/app/activity/WebActivity;Lcom/shishicai/app/activity/WebActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/shishicai/app/activity/WebActivity;
    .param p2, "x1"    # Lcom/shishicai/app/activity/WebActivity$1;

    .prologue
    .line 451
    invoke-direct {p0, p1}, Lcom/shishicai/app/activity/WebActivity$SaveImage;-><init>(Lcom/shishicai/app/activity/WebActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 451
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/shishicai/app/activity/WebActivity$SaveImage;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 456
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    .line 457
    .local v7, "sdcard":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/Download"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 458
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 459
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 464
    :cond_0
    :try_start_1
    iget-object v9, p0, Lcom/shishicai/app/activity/WebActivity$SaveImage;->this$0:Lcom/shishicai/app/activity/WebActivity;

    iget-object v10, p0, Lcom/shishicai/app/activity/WebActivity$SaveImage;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-static {v10}, Lcom/shishicai/app/activity/WebActivity;->access$400(Lcom/shishicai/app/activity/WebActivity;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "utf-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/shishicai/app/activity/WebActivity;->access$1102(Lcom/shishicai/app/activity/WebActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 469
    :goto_0
    :try_start_2
    iget-object v9, p0, Lcom/shishicai/app/activity/WebActivity$SaveImage;->this$0:Lcom/shishicai/app/activity/WebActivity;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/shishicai/app/activity/WebActivity$SaveImage;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-static {v11}, Lcom/shishicai/app/activity/WebActivity;->access$1100(Lcom/shishicai/app/activity/WebActivity;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/shishicai/app/activity/WebActivity;->access$1102(Lcom/shishicai/app/activity/WebActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 470
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/Download/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/shishicai/app/activity/WebActivity$SaveImage;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-static {v10}, Lcom/shishicai/app/activity/WebActivity;->access$1100(Lcom/shishicai/app/activity/WebActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 471
    .restart local v3    # "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 472
    .local v4, "inputStream":Ljava/io/InputStream;
    new-instance v8, Ljava/net/URL;

    iget-object v9, p0, Lcom/shishicai/app/activity/WebActivity$SaveImage;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-static {v9}, Lcom/shishicai/app/activity/WebActivity;->access$400(Lcom/shishicai/app/activity/WebActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 473
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 474
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const-string v9, "GET"

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 475
    const/16 v9, 0x4e20

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 476
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_1

    .line 477
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 479
    :cond_1
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 481
    .local v0, "buffer":[B
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 482
    .local v6, "outStream":Ljava/io/FileOutputStream;
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    const/4 v9, -0x1

    if-eq v5, v9, :cond_2

    .line 483
    const/4 v9, 0x0

    invoke-virtual {v6, v0, v9, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 498
    .end local v0    # "buffer":[B
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "len":I
    .end local v6    # "outStream":Ljava/io/FileOutputStream;
    .end local v7    # "sdcard":Ljava/lang/String;
    .end local v8    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 499
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 500
    iget-object v9, p0, Lcom/shishicai/app/activity/WebActivity$SaveImage;->this$0:Lcom/shishicai/app/activity/WebActivity;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u4fdd\u5b58\u5931\u8d25\uff01"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/shishicai/app/activity/WebActivity;->access$1202(Lcom/shishicai/app/activity/WebActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 505
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    iget-object v9, p0, Lcom/shishicai/app/activity/WebActivity$SaveImage;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-static {v9}, Lcom/shishicai/app/activity/WebActivity;->access$1200(Lcom/shishicai/app/activity/WebActivity;)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 465
    .restart local v3    # "file":Ljava/io/File;
    .restart local v7    # "sdcard":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 467
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 501
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "file":Ljava/io/File;
    .end local v7    # "sdcard":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 502
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 503
    iget-object v9, p0, Lcom/shishicai/app/activity/WebActivity$SaveImage;->this$0:Lcom/shishicai/app/activity/WebActivity;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u4fdd\u5b58\u5931\u8d25\uff01"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/shishicai/app/activity/WebActivity;->access$1202(Lcom/shishicai/app/activity/WebActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 485
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "len":I
    .restart local v6    # "outStream":Ljava/io/FileOutputStream;
    .restart local v7    # "sdcard":Ljava/lang/String;
    .restart local v8    # "url":Ljava/net/URL;
    :cond_2
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 486
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 487
    iget-object v9, p0, Lcom/shishicai/app/activity/WebActivity$SaveImage;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/shishicai/app/activity/WebActivity;->access$802(Lcom/shishicai/app/activity/WebActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 488
    iget-object v9, p0, Lcom/shishicai/app/activity/WebActivity$SaveImage;->this$0:Lcom/shishicai/app/activity/WebActivity;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u56fe\u7247\u5df2\u4fdd\u5b58\u81f3\uff1a"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/shishicai/app/activity/WebActivity$SaveImage;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-static {v11}, Lcom/shishicai/app/activity/WebActivity;->access$800(Lcom/shishicai/app/activity/WebActivity;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/shishicai/app/activity/WebActivity;->access$1202(Lcom/shishicai/app/activity/WebActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 491
    :try_start_5
    iget-object v9, p0, Lcom/shishicai/app/activity/WebActivity$SaveImage;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-virtual {v9}, Lcom/shishicai/app/activity/WebActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/shishicai/app/activity/WebActivity$SaveImage;->this$0:Lcom/shishicai/app/activity/WebActivity;

    .line 492
    invoke-static {v10}, Lcom/shishicai/app/activity/WebActivity;->access$800(Lcom/shishicai/app/activity/WebActivity;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/shishicai/app/activity/WebActivity$SaveImage;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-static {v11}, Lcom/shishicai/app/activity/WebActivity;->access$1100(Lcom/shishicai/app/activity/WebActivity;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 491
    invoke-static {v9, v10, v11, v12}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 497
    :goto_3
    :try_start_6
    iget-object v9, p0, Lcom/shishicai/app/activity/WebActivity$SaveImage;->this$0:Lcom/shishicai/app/activity/WebActivity;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file://"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/shishicai/app/activity/WebActivity$SaveImage;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-static {v13}, Lcom/shishicai/app/activity/WebActivity;->access$800(Lcom/shishicai/app/activity/WebActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v9, v10}, Lcom/shishicai/app/activity/WebActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 493
    :catch_3
    move-exception v2

    .line 494
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 451
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/shishicai/app/activity/WebActivity$SaveImage;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 510
    iget-object v0, p0, Lcom/shishicai/app/activity/WebActivity$SaveImage;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-static {v0, p1}, Lcom/shishicai/app/service/HttpMethod;->Toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 511
    return-void
.end method
