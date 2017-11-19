.class public Lcom/shishicai/app/activity/mine/MineSetting;
.super Landroid/app/Activity;
.source "MineSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CAMERA_WITH_DATA:I = 0xbd0

.field private static final PHOTO:Ljava/lang/String;

.field private static final PHOTO_PICKED_WITH_DATA:I = 0xbd1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private aboutus:Landroid/widget/TextView;

.field private exit:Landroid/widget/Button;

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private person:Landroid/widget/TextView;

.field private phone:Landroid/widget/TextView;

.field private pwd:Landroid/widget/TextView;

.field private sharedpreferences:Landroid/content/SharedPreferences;

.field private thumb:Landroid/widget/ImageView;

.field private title:Landroid/widget/TextView;

.field private titleimgLeft:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/shishicai/app/Constant;->DIR_IMAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PHOTO_5.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shishicai/app/activity/mine/MineSetting;->PHOTO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    const-string v0, "com.soshow.hiyoga"

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineSetting;->TAG:Ljava/lang/String;

    return-void
.end method

.method private cacheToLocal(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 267
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/shishicai/app/activity/mine/MineSetting;->PHOTO:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    .local v3, "file":Ljava/io/File;
    const/4 v0, 0x0

    .line 271
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .line 277
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    :goto_0
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 280
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 281
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 287
    :goto_1
    invoke-direct {p0, v3}, Lcom/shishicai/app/activity/mine/MineSetting;->uploadData(Ljava/io/File;)V

    .line 288
    return-void

    .line 273
    :catch_0
    move-exception v2

    .line 275
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v4, "com.soshow.hiyogafileerr"

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 283
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 285
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "com.soshow.hiyogaerr"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getPhotoPickIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x1

    .line 215
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 216
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 221
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 223
    return-object v0
.end method

.method private uploadData(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 291
    const-string v2, "com.soshow.hiyogafile"

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-static {p0}, Lcom/shishicai/app/service/HttpMethod;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 295
    .local v1, "params":Lcom/loopj/android/http/RequestParams;
    const-string v2, "authkey"

    sget-object v3, Lcom/shishicai/app/Constant;->session_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :try_start_0
    const-string v2, "file"

    invoke-virtual {v1, v2, p1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/shishicai/app/Constant;->URLADV:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "uploadavatar.php"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/shishicai/app/activity/mine/MineSetting$3;

    invoke-direct {v3, p0}, Lcom/shishicai/app/activity/mine/MineSetting$3;-><init>(Lcom/shishicai/app/activity/mine/MineSetting;)V

    invoke-static {v2, v1, v3}, Lcom/shishicai/app/service/HttpUser;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 330
    .end local v1    # "params":Lcom/loopj/android/http/RequestParams;
    :goto_1
    return-void

    .line 298
    .restart local v1    # "params":Lcom/loopj/android/http/RequestParams;
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e1":Ljava/io/FileNotFoundException;
    const-string v2, "com.soshow.hiyogafile"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 328
    .end local v0    # "e1":Ljava/io/FileNotFoundException;
    .end local v1    # "params":Lcom/loopj/android/http/RequestParams;
    :cond_0
    invoke-static {p0}, Lcom/shishicai/app/service/HttpMethod;->Toast(Landroid/content/Context;)V

    goto :goto_1
.end method


# virtual methods
.method protected doPickPhotoFromGallery()V
    .locals 4

    .prologue
    .line 202
    :try_start_0
    invoke-direct {p0}, Lcom/shishicai/app/activity/mine/MineSetting;->getPhotoPickIntent()Landroid/content/Intent;

    move-result-object v1

    .line 203
    .local v1, "intent":Landroid/content/Intent;
    const/16 v2, 0xbd1

    invoke-virtual {p0, v1, v2}, Lcom/shishicai/app/activity/mine/MineSetting;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "\u83b7\u53d6\u76f8\u518c\u5931\u8d25"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected doTakePhoto()V
    .locals 4

    .prologue
    .line 232
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 234
    .local v1, "intent":Landroid/content/Intent;
    const/16 v2, 0xbd0

    invoke-virtual {p0, v1, v2}, Lcom/shishicai/app/activity/mine/MineSetting;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "\u83b7\u53d6\u76f8\u673a\u5931\u8d25"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public handleThumb()V
    .locals 8

    .prologue
    .line 138
    const-string v2, "\u53d6\u6d88"

    .line 140
    .local v2, "cancel":Ljava/lang/String;
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/String;

    .line 141
    .local v3, "choices":[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "\u62cd\u7167"

    aput-object v7, v3, v6

    .line 142
    const/4 v6, 0x1

    const-string v7, "\u7528\u6237\u76f8\u518c"

    aput-object v7, v3, v6

    .line 144
    move-object v4, p0

    .line 146
    .local v4, "context":Landroid/content/Context;
    new-instance v5, Landroid/view/ContextThemeWrapper;

    const v6, 0x103000c

    invoke-direct {v5, v4, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 149
    .local v5, "dialogContext":Landroid/content/Context;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v6, 0x1090003

    invoke-direct {v0, v5, v6, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 152
    .local v0, "adapter":Landroid/widget/ListAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v6, -0x1

    new-instance v7, Lcom/shishicai/app/activity/mine/MineSetting$1;

    invoke-direct {v7, p0}, Lcom/shishicai/app/activity/mine/MineSetting$1;-><init>(Lcom/shishicai/app/activity/mine/MineSetting;)V

    invoke-virtual {v1, v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 184
    new-instance v6, Lcom/shishicai/app/activity/mine/MineSetting$2;

    invoke-direct {v6, p0}, Lcom/shishicai/app/activity/mine/MineSetting$2;-><init>(Lcom/shishicai/app/activity/mine/MineSetting;)V

    invoke-virtual {v1, v2, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 192
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 193
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 245
    packed-switch p1, :pswitch_data_0

    .line 263
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 264
    return-void

    .line 248
    :pswitch_0
    const-string v2, "data"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    const-string v2, "data"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 252
    .local v0, "photo":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/shishicai/app/activity/mine/MineSetting;->cacheToLocal(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 256
    .end local v0    # "photo":Landroid/graphics/Bitmap;
    :pswitch_1
    const-string v2, "data"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    const-string v2, "data"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 259
    .local v1, "photo1":Landroid/graphics/Bitmap;
    invoke-direct {p0, v1}, Lcom/shishicai/app/activity/mine/MineSetting;->cacheToLocal(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0xbd0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 133
    :goto_0
    :sswitch_0
    return-void

    .line 103
    :sswitch_1
    invoke-virtual {p0}, Lcom/shishicai/app/activity/mine/MineSetting;->finish()V

    goto :goto_0

    .line 106
    :sswitch_2
    invoke-virtual {p0}, Lcom/shishicai/app/activity/mine/MineSetting;->handleThumb()V

    goto :goto_0

    .line 109
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/mine/MineSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 113
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_4
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/shishicai/app/activity/mine/MinePasswod;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .local v2, "intent1":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/mine/MineSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 120
    .end local v2    # "intent1":Landroid/content/Intent;
    :sswitch_5
    const-string v3, "com.soshow.hiyoga"

    invoke-virtual {p0, v3, v4}, Lcom/shishicai/app/activity/mine/MineSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/shishicai/app/activity/mine/MineSetting;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 122
    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MineSetting;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 124
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "type"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 125
    const-string v3, "status"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 126
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 127
    sput-boolean v4, Lcom/shishicai/app/Constant;->isLogin:Z

    .line 128
    const-string v3, ""

    sput-object v3, Lcom/shishicai/app/service/HttpMethod;->sessionValue:Ljava/lang/String;

    .line 129
    const/16 v3, 0x31

    invoke-virtual {p0, v3}, Lcom/shishicai/app/activity/mine/MineSetting;->setResult(I)V

    .line 130
    invoke-virtual {p0}, Lcom/shishicai/app/activity/mine/MineSetting;->finish()V

    goto :goto_0

    .line 101
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900f0 -> :sswitch_1
        0x7f090171 -> :sswitch_2
        0x7f090172 -> :sswitch_3
        0x7f090173 -> :sswitch_4
        0x7f090175 -> :sswitch_0
        0x7f090176 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const v2, 0x7f020068

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v1, 0x7f030059

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/mine/MineSetting;->setContentView(I)V

    .line 67
    new-instance v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 68
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    .line 69
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    .line 70
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    .line 71
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    .line 72
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V

    .line 73
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/shishicai/app/activity/mine/MineSetting;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 76
    const v1, 0x7f0900f1

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/mine/MineSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shishicai/app/activity/mine/MineSetting;->title:Landroid/widget/TextView;

    .line 77
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineSetting;->title:Landroid/widget/TextView;

    const-string v2, "\u8bbe\u7f6e"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const v1, 0x7f0900f0

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/mine/MineSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/shishicai/app/activity/mine/MineSetting;->titleimgLeft:Landroid/widget/ImageView;

    .line 79
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineSetting;->titleimgLeft:Landroid/widget/ImageView;

    const v2, 0x7f02010c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineSetting;->titleimgLeft:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v1, 0x7f090171

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/mine/MineSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/shishicai/app/activity/mine/MineSetting;->thumb:Landroid/widget/ImageView;

    .line 82
    const v1, 0x7f090176

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/mine/MineSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/shishicai/app/activity/mine/MineSetting;->exit:Landroid/widget/Button;

    .line 83
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineSetting;->exit:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/shishicai/app/Constant;->URLDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/uc_server/avatar.php?uid=&size=small"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "url":Ljava/lang/String;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineSetting;->thumb:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MineSetting;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    sget-object v4, Lcom/shishicai/app/Constant;->animateFirstListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 86
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineSetting;->thumb:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v1, 0x7f090172

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/mine/MineSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shishicai/app/activity/mine/MineSetting;->person:Landroid/widget/TextView;

    .line 88
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineSetting;->person:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v1, 0x7f090174

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/mine/MineSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shishicai/app/activity/mine/MineSetting;->phone:Landroid/widget/TextView;

    .line 90
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineSetting;->phone:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v1, 0x7f090173

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/mine/MineSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shishicai/app/activity/mine/MineSetting;->pwd:Landroid/widget/TextView;

    .line 92
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineSetting;->pwd:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v1, 0x7f090175

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/mine/MineSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shishicai/app/activity/mine/MineSetting;->aboutus:Landroid/widget/TextView;

    .line 94
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineSetting;->aboutus:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-void
.end method
