.class Lcom/shishicai/app/activity/mine/MineSetting$2;
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
    .line 185
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineSetting$2;->this$0:Lcom/shishicai/app/activity/mine/MineSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 189
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 190
    return-void
.end method
