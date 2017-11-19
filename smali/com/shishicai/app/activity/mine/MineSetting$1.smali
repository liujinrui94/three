.class Lcom/shishicai/app/activity/mine/MineSetting$1;
.super Ljava/lang/Object;
.source "MineSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/mine/MineSetting;->handleThumb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MineSetting;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineSetting;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/mine/MineSetting;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineSetting$1;->this$0:Lcom/shishicai/app/activity/mine/MineSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 159
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 160
    packed-switch p2, :pswitch_data_0

    .line 182
    :goto_0
    return-void

    .line 165
    :pswitch_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "status":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineSetting$1;->this$0:Lcom/shishicai/app/activity/mine/MineSetting;

    invoke-virtual {v1}, Lcom/shishicai/app/activity/mine/MineSetting;->doTakePhoto()V

    goto :goto_0

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineSetting$1;->this$0:Lcom/shishicai/app/activity/mine/MineSetting;

    const-string v2, "\u8bf7\u5148\u6309\u88c5sd\u5361"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 179
    .end local v0    # "status":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineSetting$1;->this$0:Lcom/shishicai/app/activity/mine/MineSetting;

    invoke-virtual {v1}, Lcom/shishicai/app/activity/mine/MineSetting;->doPickPhotoFromGallery()V

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
