.class Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;
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
    name = "TwoBigOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/TwoStartActivity;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/TwoStartActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/TwoStartActivity;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 428
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataTwo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 429
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 503
    :cond_0
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataTwo:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 504
    return-void

    .line 431
    :pswitch_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 432
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 433
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroupTwo:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    invoke-virtual {v3, v1}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 434
    .local v0, "checkBox":Landroid/widget/CheckBox;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_2

    .line 435
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    .line 436
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 431
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 438
    :cond_1
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataTwo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 440
    :cond_2
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 445
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v1    # "i":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 446
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 447
    .restart local v2    # "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroupTwo:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    invoke-virtual {v3, v1}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 448
    .restart local v0    # "checkBox":Landroid/widget/CheckBox;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_4

    .line 449
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    .line 450
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 445
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 452
    :cond_3
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataTwo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 454
    :cond_4
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 459
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v1    # "i":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 460
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 461
    .restart local v2    # "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroupTwo:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    invoke-virtual {v3, v1}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 462
    .restart local v0    # "checkBox":Landroid/widget/CheckBox;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    .line 463
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_5

    .line 464
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 459
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 466
    :cond_5
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataTwo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 468
    :cond_6
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5

    .line 473
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v1    # "i":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 474
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroupTwo:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    invoke-virtual {v3, v1}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 475
    .restart local v0    # "checkBox":Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 476
    .restart local v2    # "s":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_8

    .line 477
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_7

    .line 478
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 473
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 479
    :cond_7
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataTwo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 481
    :cond_8
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_7

    .line 486
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v1    # "i":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 487
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroupTwo:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    invoke-virtual {v3, v1}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 488
    .restart local v0    # "checkBox":Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 489
    .restart local v2    # "s":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_9

    .line 490
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 486
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 491
    :cond_9
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataTwo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 495
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v1    # "i":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_5
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_a
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 496
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroupTwo:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    invoke-virtual {v3, v1}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 497
    .restart local v0    # "checkBox":Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 498
    .restart local v2    # "s":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 499
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 500
    :cond_a
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataTwo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 495
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 429
    nop

    :pswitch_data_0
    .packed-switch 0x7f0900e3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
