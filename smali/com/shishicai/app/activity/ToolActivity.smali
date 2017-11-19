.class public Lcom/shishicai/app/activity/ToolActivity;
.super Lcom/shishicai/app/utils/Base2Activity;
.source "ToolActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MY_PERMISSIONS_REQUEST:I = 0x3e8


# instance fields
.field private title:Landroid/widget/TextView;

.field private titleimgLeft:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/shishicai/app/utils/Base2Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 55
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/shishicai/app/activity/SettingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/ToolActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 59
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/shishicai/app/activity/GenerateNumberActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/ToolActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 62
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/shishicai/app/activity/DayNewsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/ToolActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 66
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/shishicai/app/activity/ChatActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/ToolActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 70
    :sswitch_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 72
    iget-object v1, p0, Lcom/shishicai/app/activity/ToolActivity;->TAG:Ljava/lang/String;

    const-string v2, "version >= 23"

    invoke-static {v1, v2}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v1, "android.permission.CAMERA"

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v1, v2

    const/16 v2, 0x3e8

    invoke-static {p0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 80
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/uuzuche/lib_zxing/activity/CaptureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/ToolActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 84
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/uuzuche/lib_zxing/activity/CaptureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/ToolActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 89
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_5
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/shishicai/app/activity/AboutAsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/ToolActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 92
    :sswitch_6
    invoke-virtual {p0}, Lcom/shishicai/app/activity/ToolActivity;->finish()V

    goto :goto_0

    .line 52
    :sswitch_data_0
    .sparse-switch
        0x7f090012 -> :sswitch_5
        0x7f090038 -> :sswitch_1
        0x7f09003a -> :sswitch_2
        0x7f09003f -> :sswitch_0
        0x7f090040 -> :sswitch_3
        0x7f090041 -> :sswitch_4
        0x7f0900f0 -> :sswitch_6
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/shishicai/app/utils/Base2Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/ToolActivity;->setContentView(I)V

    .line 36
    const-string v0, "ToolActivity"

    iput-object v0, p0, Lcom/shishicai/app/activity/ToolActivity;->TAG:Ljava/lang/String;

    .line 37
    const v0, 0x7f0900f1

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/ToolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/activity/ToolActivity;->title:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Lcom/shishicai/app/activity/ToolActivity;->title:Landroid/widget/TextView;

    const-string v1, "\u66f4\u591a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    const v0, 0x7f0900f0

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/ToolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shishicai/app/activity/ToolActivity;->titleimgLeft:Landroid/widget/ImageView;

    .line 40
    iget-object v0, p0, Lcom/shishicai/app/activity/ToolActivity;->titleimgLeft:Landroid/widget/ImageView;

    const v1, 0x7f020110

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    iget-object v0, p0, Lcom/shishicai/app/activity/ToolActivity;->titleimgLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    const v0, 0x7f09003f

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/ToolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v0, 0x7f090038

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/ToolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const v0, 0x7f09003a

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/ToolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const v0, 0x7f090040

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/ToolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v0, 0x7f090041

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/ToolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v0, 0x7f090012

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/ToolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/shishicai/app/utils/Base2Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 101
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    .line 103
    aget v1, p3, v2

    if-nez v1, :cond_1

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/uuzuche/lib_zxing/activity/CaptureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/ToolActivity;->startActivity(Landroid/content/Intent;)V

    .line 113
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    const-string v1, "\u6743\u9650\u88ab\u7981\u6b62\uff0c\u65e0\u6cd5\u6253\u5f00\u76f8\u673a"

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
