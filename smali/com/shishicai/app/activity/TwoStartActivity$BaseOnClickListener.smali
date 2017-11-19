.class Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;
.super Ljava/lang/Object;
.source "TwoStartActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/TwoStartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BaseOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/TwoStartActivity;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/TwoStartActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/TwoStartActivity;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0xa

    .line 512
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 513
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataOne:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 514
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataTwo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 515
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 591
    :cond_0
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    invoke-static {v3}, Lcom/shishicai/app/activity/TwoStartActivity;->access$500(Lcom/shishicai/app/activity/TwoStartActivity;)V

    .line 592
    return-void

    .line 517
    :pswitch_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 518
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 519
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroup:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    invoke-virtual {v3, v1}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 520
    .local v0, "checkBox":Landroid/widget/CheckBox;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_1

    .line 521
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 517
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    :cond_1
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 530
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v1    # "i":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v5, :cond_0

    .line 531
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 532
    .restart local v2    # "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroup:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    invoke-virtual {v3, v1}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 533
    .restart local v0    # "checkBox":Landroid/widget/CheckBox;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_2

    .line 534
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 530
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 537
    :cond_2
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 543
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v1    # "i":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v5, :cond_0

    .line 544
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 546
    .restart local v2    # "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroup:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    invoke-virtual {v3, v1}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 547
    .restart local v0    # "checkBox":Landroid/widget/CheckBox;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 548
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 543
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 551
    :cond_3
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5

    .line 557
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v1    # "i":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    if-ge v1, v5, :cond_0

    .line 558
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroup:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    invoke-virtual {v3, v1}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 559
    .restart local v0    # "checkBox":Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 561
    .restart local v2    # "s":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_4

    .line 562
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 557
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 565
    :cond_4
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_7

    .line 570
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v1    # "i":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    if-ge v1, v5, :cond_0

    .line 571
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroup:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    invoke-virtual {v3, v1}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 572
    .restart local v0    # "checkBox":Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 574
    .restart local v2    # "s":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_5

    .line 575
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 570
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 581
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v1    # "i":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_5
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_9
    if-ge v1, v5, :cond_0

    .line 582
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroup:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    invoke-virtual {v3, v1}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 583
    .restart local v0    # "checkBox":Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 584
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 585
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 581
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 515
    :pswitch_data_0
    .packed-switch 0x7f0900d3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
