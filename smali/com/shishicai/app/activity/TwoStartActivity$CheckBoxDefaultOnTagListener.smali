.class Lcom/shishicai/app/activity/TwoStartActivity$CheckBoxDefaultOnTagListener;
.super Ljava/lang/Object;
.source "TwoStartActivity.java"

# interfaces
.implements Lwang/yuchao/android/library/view/tagviewgroup/OnTagCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/TwoStartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckBoxDefaultOnTagListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/TwoStartActivity;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/TwoStartActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/TwoStartActivity;

    .prologue
    .line 596
    iput-object p1, p0, Lcom/shishicai/app/activity/TwoStartActivity$CheckBoxDefaultOnTagListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagCheckedChanged(Landroid/widget/CompoundButton;ZILjava/lang/Object;)V
    .locals 2
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "b"    # Z
    .param p3, "position"    # I
    .param p4, "tag"    # Ljava/lang/Object;

    .prologue
    .line 600
    move-object v0, p4

    check-cast v0, Ljava/lang/String;

    .line 601
    .local v0, "tagString":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 602
    iget-object v1, p0, Lcom/shishicai/app/activity/TwoStartActivity$CheckBoxDefaultOnTagListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v1, v1, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    :goto_0
    iget-object v1, p0, Lcom/shishicai/app/activity/TwoStartActivity$CheckBoxDefaultOnTagListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    invoke-static {v1}, Lcom/shishicai/app/activity/TwoStartActivity;->access$500(Lcom/shishicai/app/activity/TwoStartActivity;)V

    .line 615
    return-void

    .line 606
    :cond_0
    iget-object v1, p0, Lcom/shishicai/app/activity/TwoStartActivity$CheckBoxDefaultOnTagListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v1, v1, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 609
    :cond_1
    iget-object v1, p0, Lcom/shishicai/app/activity/TwoStartActivity$CheckBoxDefaultOnTagListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v1, v1, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
