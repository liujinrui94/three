.class Lcom/shishicai/app/activity/ChatActivity$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/ChatActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/ChatActivity;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/ChatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/ChatActivity;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/shishicai/app/activity/ChatActivity$1;->this$0:Lcom/shishicai/app/activity/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/shishicai/app/activity/ChatActivity$1;->this$0:Lcom/shishicai/app/activity/ChatActivity;

    invoke-virtual {v0}, Lcom/shishicai/app/activity/ChatActivity;->finish()V

    .line 34
    return-void
.end method
