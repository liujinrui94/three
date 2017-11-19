.class Lcom/shishicai/app/activity/TwoStartActivity$CheckBoxOneOnTagListener;
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
    name = "CheckBoxOneOnTagListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/TwoStartActivity;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/TwoStartActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/TwoStartActivity;

    .prologue
    .line 627
    iput-object p1, p0, Lcom/shishicai/app/activity/TwoStartActivity$CheckBoxOneOnTagListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

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
    .line 631
    move-object v0, p4

    check-cast v0, Ljava/lang/String;

    .line 632
    .local v0, "tagString":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 633
    iget-object v1, p0, Lcom/shishicai/app/activity/TwoStartActivity$CheckBoxOneOnTagListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v1, v1, Lcom/shishicai/app/activity/TwoStartActivity;->mDataOne:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    :goto_0
    iget-object v1, p0, Lcom/shishicai/app/activity/TwoStartActivity$CheckBoxOneOnTagListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v1, v1, Lcom/shishicai/app/activity/TwoStartActivity;->mDataOne:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 638
    return-void

    .line 635
    :cond_0
    iget-object v1, p0, Lcom/shishicai/app/activity/TwoStartActivity$CheckBoxOneOnTagListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v1, v1, Lcom/shishicai/app/activity/TwoStartActivity;->mDataOne:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
