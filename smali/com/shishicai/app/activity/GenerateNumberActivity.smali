.class public Lcom/shishicai/app/activity/GenerateNumberActivity;
.super Lcom/shishicai/app/utils/Base2Activity;
.source "GenerateNumberActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MY_PERMISSIONS_REQUEST:I = 0x3e8


# instance fields
.field private adapter:Lcom/shishicai/app/activity/adapter/ReferListAdapter;

.field private bean:Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;

.field private bigSmall:[Ljava/lang/String;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private info:Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX;

.field private listMsg:Landroid/widget/ListView;

.field private longHu:[Ljava/lang/String;

.field private lottery:[I

.field private mInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX;",
            ">;"
        }
    .end annotation
.end field

.field private name:[Ljava/lang/String;

.field private num:I

.field private r:Ljava/util/Random;

.field private singleDouble:[Ljava/lang/String;

.field private temBitmap:Landroid/graphics/Bitmap;

.field private title:Landroid/widget/TextView;

.field private titleimgLeft:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Lcom/shishicai/app/utils/Base2Activity;-><init>()V

    .line 45
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "\u5355"

    aput-object v1, v0, v2

    const-string v1, "\u53cc"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->singleDouble:[Ljava/lang/String;

    .line 46
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "\u5927"

    aput-object v1, v0, v2

    const-string v1, "\u5c0f"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->bigSmall:[Ljava/lang/String;

    .line 47
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "\u9f99"

    aput-object v1, v0, v2

    const-string v1, "\u864e"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->longHu:[Ljava/lang/String;

    .line 48
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u7b2c\u4e00\u7403"

    aput-object v1, v0, v2

    const-string v1, "\u7b2c\u4e8c\u7403"

    aput-object v1, v0, v3

    const-string v1, "\u7b2c\u4e09\u7403"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "\u7b2c\u56db\u7403"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u7b2c\u4e94\u7403"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u9f99\u864e"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->name:[Ljava/lang/String;

    return-void
.end method

.method private getLottery()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 118
    iget-object v4, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->mInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 120
    iget-object v4, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->mInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 122
    :cond_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    const/4 v4, 0x6

    if-ge v2, v4, :cond_5

    .line 124
    new-array v4, v9, [I

    iput-object v4, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->lottery:[I

    .line 125
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->lottery:[I

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 127
    iget-object v4, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->r:Ljava/util/Random;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    iput v4, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->num:I

    .line 128
    iget-object v4, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->lottery:[I

    iget v5, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->num:I

    aput v5, v4, v1

    .line 130
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_2
    if-ge v3, v1, :cond_2

    .line 131
    iget-object v4, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->lottery:[I

    aget v4, v4, v3

    iget-object v5, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->lottery:[I

    aget v5, v5, v1

    if-ne v4, v5, :cond_1

    .line 133
    add-int/lit8 v1, v1, -0x1

    .line 130
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 125
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 138
    .end local v3    # "k":I
    :cond_3
    new-instance v4, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX;

    invoke-direct {v4}, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX;-><init>()V

    iput-object v4, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->info:Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX;

    .line 139
    iget-object v4, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->info:Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX;

    iget-object v5, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->name:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX;->setName(Ljava/lang/String;)V

    .line 140
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->data:Ljava/util/List;

    .line 141
    new-instance v4, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;

    invoke-direct {v4}, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;-><init>()V

    iput-object v4, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->bean:Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;

    .line 142
    iget-object v4, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->lottery:[I

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "code":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 144
    iget-object v4, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->bean:Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;

    invoke-virtual {v4, v7}, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;->setState(I)V

    .line 145
    if-eq v2, v9, :cond_4

    .line 147
    iget-object v4, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->bean:Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;

    invoke-virtual {v4, v0}, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;->setResult(Ljava/lang/String;)V

    .line 151
    :goto_3
    iget-object v4, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->data:Ljava/util/List;

    iget-object v5, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->bean:Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v4, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;

    invoke-direct {v4}, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;-><init>()V

    iput-object v4, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->bean:Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;

    .line 153
    iget-object v4, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->bean:Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;

    iget-object v5, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->singleDouble:[Ljava/lang/String;

    iget-object v6, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->r:Ljava/util/Random;

    invoke-virtual {v6, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;->setResult(Ljava/lang/String;)V

    .line 154
    iget-object v4, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->bean:Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;

    invoke-virtual {v4, v7}, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;->setState(I)V

    .line 155
    iget-object v4, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->data:Ljava/util/List;

    iget-object v5, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->bean:Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v4, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;

    invoke-direct {v4}, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;-><init>()V

    iput-object v4, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->bean:Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;

    .line 157
    iget-object v4, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->bean:Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;

    iget-object v5, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->bigSmall:[Ljava/lang/String;

    iget-object v6, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->r:Ljava/util/Random;

    invoke-virtual {v6, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;->setResult(Ljava/lang/String;)V

    .line 158
    iget-object v4, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->bean:Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;

    invoke-virtual {v4, v7}, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;->setState(I)V

    .line 159
    iget-object v4, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->data:Ljava/util/List;

    iget-object v5, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->bean:Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v4, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->info:Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX;

    iget-object v5, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->data:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX;->setData(Ljava/util/List;)V

    .line 161
    iget-object v4, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->mInfos:Ljava/util/List;

    iget-object v5, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->info:Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 149
    :cond_4
    iget-object v4, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->bean:Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;

    iget-object v5, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->longHu:[Ljava/lang/String;

    iget-object v6, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->r:Ljava/util/Random;

    invoke-virtual {v6, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;->setResult(Ljava/lang/String;)V

    goto :goto_3

    .line 164
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method private saveCurrentImage()V
    .locals 12

    .prologue
    .line 173
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 174
    .local v5, "sdCardExist":Z
    if-eqz v5, :cond_1

    .line 176
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 181
    .local v6, "sdCardPath":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/shishicai/app/activity/GenerateNumberActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 182
    .local v8, "width":I
    invoke-virtual {p0}, Lcom/shishicai/app/activity/GenerateNumberActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 184
    .local v4, "height":I
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v4, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->temBitmap:Landroid/graphics/Bitmap;

    .line 186
    invoke-virtual {p0}, Lcom/shishicai/app/activity/GenerateNumberActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    .line 188
    .local v7, "view":Landroid/view/View;
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 189
    invoke-virtual {v7}, Landroid/view/View;->buildDrawingCache()V

    .line 191
    invoke-virtual {v7}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->temBitmap:Landroid/graphics/Bitmap;

    .line 195
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "screenshot"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "yyyy-MM-dd_HH:mm:ss"

    invoke-static {v10}, Lcom/shishicai/app/utils/DateUtil;->getFormatCurrentTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "filePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 199
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 201
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 202
    .local v3, "foStream":Ljava/io/FileOutputStream;
    iget-object v9, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->temBitmap:Landroid/graphics/Bitmap;

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v9, v10, v11, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 203
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 204
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u56fe\u7247\u5df2\u4fdd\u5b58\u81f3\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 211
    .end local v3    # "foStream":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 178
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v4    # "height":I
    .end local v6    # "sdCardPath":Ljava/lang/String;
    .end local v7    # "view":Landroid/view/View;
    .end local v8    # "width":I
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "sdCardPath":Ljava/lang/String;
    goto/16 :goto_0

    .line 205
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "filePath":Ljava/lang/String;
    .restart local v4    # "height":I
    .restart local v7    # "view":Landroid/view/View;
    .restart local v8    # "width":I
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    iget-object v9, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 81
    :sswitch_0
    invoke-direct {p0}, Lcom/shishicai/app/activity/GenerateNumberActivity;->getLottery()V

    .line 82
    iget-object v0, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->adapter:Lcom/shishicai/app/activity/adapter/ReferListAdapter;

    invoke-virtual {v0}, Lcom/shishicai/app/activity/adapter/ReferListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 85
    :sswitch_1
    iget-object v0, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->mInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    iget-object v0, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->adapter:Lcom/shishicai/app/activity/adapter/ReferListAdapter;

    invoke-virtual {v0}, Lcom/shishicai/app/activity/adapter/ReferListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 89
    :sswitch_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->TAG:Ljava/lang/String;

    const-string v1, "version >= 23"

    invoke-static {v0, v1}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/shishicai/app/activity/GenerateNumberActivity;->saveCurrentImage()V

    goto :goto_0

    .line 102
    :cond_1
    invoke-direct {p0}, Lcom/shishicai/app/activity/GenerateNumberActivity;->saveCurrentImage()V

    goto :goto_0

    .line 106
    :sswitch_3
    invoke-virtual {p0}, Lcom/shishicai/app/activity/GenerateNumberActivity;->finish()V

    goto :goto_0

    .line 78
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090026 -> :sswitch_0
        0x7f090027 -> :sswitch_2
        0x7f090028 -> :sswitch_1
        0x7f0900f0 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/shishicai/app/utils/Base2Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/GenerateNumberActivity;->setContentView(I)V

    .line 57
    const-string v0, "GenerateNumberActivity"

    iput-object v0, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->TAG:Ljava/lang/String;

    .line 58
    const v0, 0x7f0900f1

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/GenerateNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->title:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->title:Landroid/widget/TextView;

    const-string v1, "\u81ea\u52a9\u9009\u53f7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const v0, 0x7f0900f0

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/GenerateNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->titleimgLeft:Landroid/widget/ImageView;

    .line 61
    iget-object v0, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->titleimgLeft:Landroid/widget/ImageView;

    const v1, 0x7f020110

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    iget-object v0, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->titleimgLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v0, 0x7f090029

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/GenerateNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->listMsg:Landroid/widget/ListView;

    .line 64
    const v0, 0x7f090026

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/GenerateNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v0, 0x7f090027

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/GenerateNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v0, 0x7f090028

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/GenerateNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->r:Ljava/util/Random;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->mInfos:Ljava/util/List;

    .line 69
    invoke-direct {p0}, Lcom/shishicai/app/activity/GenerateNumberActivity;->getLottery()V

    .line 70
    new-instance v0, Lcom/shishicai/app/activity/adapter/ReferListAdapter;

    iget-object v1, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->mInfos:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/shishicai/app/activity/adapter/ReferListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->adapter:Lcom/shishicai/app/activity/adapter/ReferListAdapter;

    .line 71
    iget-object v0, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->listMsg:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->adapter:Lcom/shishicai/app/activity/adapter/ReferListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Lcom/shishicai/app/utils/Base2Activity;->onDestroy()V

    .line 216
    iget-object v0, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->temBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shishicai/app/activity/GenerateNumberActivity;->temBitmap:Landroid/graphics/Bitmap;

    .line 220
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v1, 0x0

    .line 224
    invoke-super {p0, p1, p2, p3}, Lcom/shishicai/app/utils/Base2Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 225
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 227
    aget v0, p3, v1

    if-nez v0, :cond_1

    .line 229
    invoke-direct {p0}, Lcom/shishicai/app/activity/GenerateNumberActivity;->saveCurrentImage()V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    const-string v0, "\u8bfb\u5199\u6743\u9650\u88ab\u7981\u6b62\uff0c\u65e0\u6cd5\u4fdd\u5b58\u622a\u56fe"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
