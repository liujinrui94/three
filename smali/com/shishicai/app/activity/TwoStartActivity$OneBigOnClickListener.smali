.class Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;
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
    name = "OneBigOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/TwoStartActivity;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/TwoStartActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/TwoStartActivity;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

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

    .line 342
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataOne:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 343
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 419
    :cond_0
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataOne:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 421
    return-void

    .line 345
    :pswitch_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 346
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 347
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroupOne:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    invoke-virtual {v3, v1}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 348
    .local v0, "checkBox":Landroid/widget/CheckBox;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_2

    .line 349
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    .line 350
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 345
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 352
    :cond_1
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataOne:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 354
    :cond_2
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 359
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v1    # "i":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 360
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 361
    .restart local v2    # "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroupOne:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    invoke-virtual {v3, v1}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 362
    .restart local v0    # "checkBox":Landroid/widget/CheckBox;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_4

    .line 364
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    .line 365
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 371
    :goto_3
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    invoke-static {v3}, Lcom/shishicai/app/activity/TwoStartActivity;->access$400(Lcom/shishicai/app/activity/TwoStartActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data.size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v5, v5, Lcom/shishicai/app/activity/TwoStartActivity;->mDataOne:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 367
    :cond_3
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataOne:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 369
    :cond_4
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 375
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v1    # "i":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 376
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 377
    .restart local v2    # "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroupOne:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    invoke-virtual {v3, v1}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 378
    .restart local v0    # "checkBox":Landroid/widget/CheckBox;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    .line 379
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_5

    .line 380
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 375
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 381
    :cond_5
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataOne:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 383
    :cond_6
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5

    .line 388
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v1    # "i":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 389
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroupOne:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    invoke-virtual {v3, v1}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 390
    .restart local v0    # "checkBox":Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 391
    .restart local v2    # "s":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_8

    .line 392
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_7

    .line 393
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 388
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 394
    :cond_7
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataOne:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 396
    :cond_8
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_7

    .line 401
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v1    # "i":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 402
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroupOne:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    invoke-virtual {v3, v1}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 403
    .restart local v0    # "checkBox":Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 404
    .restart local v2    # "s":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_9

    .line 405
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 401
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 406
    :cond_9
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataOne:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 410
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v1    # "i":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_5
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_a
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 411
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroupOne:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    invoke-virtual {v3, v1}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 412
    .restart local v0    # "checkBox":Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 413
    .restart local v2    # "s":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 414
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 415
    :cond_a
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v3, v3, Lcom/shishicai/app/activity/TwoStartActivity;->mDataOne:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x7f0900db
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
