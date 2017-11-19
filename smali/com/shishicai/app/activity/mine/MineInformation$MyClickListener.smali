.class Lcom/shishicai/app/activity/mine/MineInformation$MyClickListener;
.super Ljava/lang/Object;
.source "MineInformation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/mine/MineInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MineInformation;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineInformation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/mine/MineInformation;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineInformation$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 244
    :goto_0
    return-void

    .line 218
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/shishicai/app/activity/mine/MineInformation$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    const-class v5, Lcom/shishicai/app/activity/mine/MineNickName;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/shishicai/app/activity/mine/MineInformation$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    const/16 v5, 0x32

    invoke-virtual {v4, v1, v5}, Lcom/shishicai/app/activity/mine/MineInformation;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 223
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_1
    iget-object v4, p0, Lcom/shishicai/app/activity/mine/MineInformation$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-virtual {v4, v6}, Lcom/shishicai/app/activity/mine/MineInformation;->showDialog(I)V

    goto :goto_0

    .line 226
    :sswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/shishicai/app/activity/mine/MineInformation$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 227
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v4, "\u8bf7\u9009\u62e9"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 228
    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "\u7537"

    aput-object v5, v3, v4

    const-string v4, "\u5973"

    aput-object v4, v3, v6

    const-string v4, "\u4fdd\u5bc6"

    aput-object v4, v3, v7

    .line 229
    .local v3, "items":[Ljava/lang/String;
    new-instance v4, Lcom/shishicai/app/activity/mine/MineInformation$MyClickListener$1;

    invoke-direct {v4, p0, v3}, Lcom/shishicai/app/activity/mine/MineInformation$MyClickListener$1;-><init>(Lcom/shishicai/app/activity/mine/MineInformation$MyClickListener;[Ljava/lang/String;)V

    invoke-virtual {v0, v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 237
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 240
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "items":[Ljava/lang/String;
    :sswitch_3
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/shishicai/app/activity/mine/MineInformation$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    const-class v5, Lcom/shishicai/app/activity/mine/MineEmail;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    .local v2, "intent1":Landroid/content/Intent;
    iget-object v4, p0, Lcom/shishicai/app/activity/mine/MineInformation$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    const/16 v5, 0x33

    invoke-virtual {v4, v2, v5}, Lcom/shishicai/app/activity/mine/MineInformation;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 216
    :sswitch_data_0
    .sparse-switch
        0x7f09012a -> :sswitch_0
        0x7f09012d -> :sswitch_1
        0x7f090130 -> :sswitch_2
        0x7f090133 -> :sswitch_3
    .end sparse-switch
.end method
