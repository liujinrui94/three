.class public Lcom/shishicai/app/activity/AboutAsActivity;
.super Lcom/shishicai/app/utils/Base2Activity;
.source "AboutAsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private title:Landroid/widget/TextView;

.field private titleimgLeft:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/shishicai/app/utils/Base2Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v6, 0x7f0a000f

    .line 36
    const/4 v1, 0x0

    .line 37
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, ""

    .local v2, "title":Ljava/lang/String;
    const-string v0, ""

    .line 38
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 78
    :goto_0
    if-eqz v1, :cond_0

    .line 80
    const-string v3, "title"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v3, "content"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/AboutAsActivity;->startActivity(Landroid/content/Intent;)V

    .line 84
    :cond_0
    return-void

    .line 41
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-class v3, Lcom/shishicai/app/activity/AboutActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "\u5e94\u7528\u7b80\u4ecb"

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/shishicai/app/activity/AboutAsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u662f\u4e00\u6b3e\u96c6\u5386\u53f2\u5f00\u5956\u3001\u7edf\u8ba1\u4fe1\u606f\u3001\u63a8\u8350\u6570\u636e\u4e8e\u4e00\u4f53\u7684\u65f6\u65f6\u5f69\u4fe1\u606f\u5e94\u7528\u3002\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/shishicai/app/activity/AboutAsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u901a\u8fc7\u5927\u91cf\u7684\u6570\u636e\uff0c\u4ee5\u53ca\u8fd0\u7528\u81ea\u4e3b\u7814\u53d1\u7684\u5206\u6790"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 44
    invoke-virtual {p0}, Lcom/shishicai/app/activity/AboutAsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a002e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u7684\u65b9\u6cd5\uff0c\n\u7387\u5148\u5b9e\u73b0\u4e86\u65f6\u65f6\u5f69\u5404\u73a9\u6cd5\u7684\u63a8\u8350\u3002\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/shishicai/app/activity/AboutAsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u662f\u5177\u6709\u8d44\u6e90\u5360\u6709\u4f4e\u3001\u64cd\u4f5c\u7b80\u6377\u3001\u8d44\u6599\u9f50\u5168\u7b49\u7279\u70b9\uff0c\u662f\u76ee\u524d\u56fd\u5185\u53d7\u6b22\u8fce\u7684\u5168\u80fd\u65f6\u65f6\u5f69\u4fe1\u606f\u5e94\u7528\u3002\n\u672c\u516c\u53f8\u662f\u4e13\u4e1a\u7814\u53d1\u5404\u79cd\u68cb\u724c\u6e38\u620f\u53ca\u5f69\u7968\u7edf\u8ba1\u76f8\u5173\u7684\u79d1\u6280\u516c\u53f8\uff0c\u5982\u679c\u9601\u4e0b\u5bf9\u5f69\u7968\u6709\u72ec\u7279\u7684\u9884\u6d4b\u7ecf\u9a8c\u6216\u8ba1\u7b97\u65b9\u6cd5\uff0c\u6211\u4eec\u5f88\u4e50\u610f\u4e0e\u60a8\u6d3d\u8c08\uff0c\u5e76\u6309\u60a8\u7684\u60f3\u6cd5\u5f00\u53d1\u51fa\u81ea\u52a8\n\u7edf\u8ba1\u53ca\u6a21\u62df\u7a0b\u5e8f\u4f9b\u60a8\u4f7f\u7528\uff0c\u540c\u65f6\u672c\u516c\u53f8\u7684\u4e13\u4e1a\u56e2\u961f\u4e5f\u63d0\u4f9b\u5404\u65b9\u9762\u7684\u5efa\u8bae\u53ca\u66f4\u591a\u7684\u7ecf\u9a8c\u5206\u4eab\u3002"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    goto :goto_0

    .line 49
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-class v3, Lcom/shishicai/app/activity/AboutActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "\u5e2e\u52a9\u4e2d\u5fc3"

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1\u3001\u8fd9\u662f\u4ec0\u4e48\u8f6f\u4ef6\uff1f\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/shishicai/app/activity/AboutAsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u5e94\u7528\u662f\u4e00\u6b3e\u96c6\u6570\u636e\u529f\u80fd\u4e8e\u4e00\u4f53\u7684\u5e94\u7528\u8f6f\u4ef6\uff0c\u901a\u8fc7\u8f6f\u4ef6\u53ef\u4ee5\u67e5\u770b\u5373\u65f6\u7684\u5f00\u5956\u7ed3\u679c\u3002\n2\u3001\u8fd9\u8f6f\u4ef6\u600e\u6837\u7528\uff1f\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/shishicai/app/activity/AboutAsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u63d0\u4f9b\u591a\u79cd\n\u6570\u636e\u7edf\u8ba1\uff0c\u6bcf\u7c7b\u578b\u6570\u636e\u7edf\u8ba1\u90fd\u6709\u5404\u81ea\u7684\u53c2\u8003\u4ef7\u503c\uff0c\u80fd\u66f4\u597d\u7684\u8f85\u52a9\u9009\u53f7\u3002\n3\uff0c\u4ec0\u4e48\u662f\u5386\u53f2\u5f00\u5956?\n\u5386\u53f2\u5f00\u5956\u662f\u7edf\u8ba1\u6240\u9009\u62e9\u65e5\u671f\u91cc\u9762\u7684\u5f00\u5956\u7ed3\u679c\uff0c\u5305\u62ec\u603b\u548c\uff0c\u603b\u548c\u5927\u5c0f\u3002\n4\uff0c\u4ec0\u4e48\u662f\u8def\u73e0?\n\u201c\u8def\u73e0\u201d\u4e5f\u79f0\u201c\u7f06\u201d\uff0c\u662f\u7528\u6765\u8bb0\u5f55\u4e4b\u524d\u5f00\u5956\u7ed3\u679c\u7684\u8f93\u8d62\u8bb0\u5f55\uff0c\n\u5f69\u7968\u5f00\u5956\u53f7\u7801\u662f\u968f\u673a\u751f\u6210\u7684\uff0c\u6240\u5f00\u53f7\u7801\u6982\u7387\u957f\u65f6\u95f4\u5185\u4f1a\u8fbe\u5230\u4e00\u4e2a\u6301\u5e73\u7684\u72b6\u6001\uff0c\u5728\u8fd9\u4e2a\u8fc7\u7a0b\u53ef\u4ee5\u901a\u8fc7\u8def\u73e0\u8bb0\u5f55\u6765\u8f85\u52a9\u3002\n5\uff0c\u4ec0\u4e48\u662f\u5927\u5c0f\u8def\u73e0?\n\u5927\u5c0f\u8def\u73e0\u662f\u4ee5\u8def\u73e0\u5f62\u5f0f\u663e\u793a\u4e0d\u540c\u4f4d\u7f6e\u6240\u5f00\u51fa\u7684\u5927\u5c0f\u8bb0\u5f55\u3002\n6\uff0c\u4ec0\u4e48\u662f\u5355\u53cc\u8def\u73e0\uff1f\n\u5355\u53cc\u8def\u73e0\u662f\u4ee5\u8def\u73e0\u5f62\u5f0f\u663e\u793a\u4e0d\u540c\u4f4d\u7f6e\u6240\u5f00\u51fa\u7684\u5355\u53cc\u8bb0\u5f55\u3002"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    goto/16 :goto_0

    .line 58
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-class v3, Lcom/shishicai/app/activity/AboutActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "\u514d\u8d23\u58f0\u660e"

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/shishicai/app/activity/AboutAsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u662f\u672c\u516c\u53f8\u7814\u53d1\u7684\u4e00\u6b3e\u7edf\u8ba1\u8d44\u8baf\u63a8\u8350\u6570\u636e\u7684\u5e94\u7528\uff0c\u6b64\u5e94\u7528\u4ec5\u4f9b\u4e2d\u56fd\u5927\u9646\u8d2d\u4e70\u5b98\u65b9\u5f69\u7968\u8fdb\u884c\u76f8\u5173\u7684\u53c2\u8003\uff0c\u5bf9\u4e8e\u4f7f\u7528\u672c\u5e94\u7528\u51fa\u73b0\u7684\n\u4efb\u4f55\u95ee\u9898\uff0c\u672c\u516c\u53f8\u4e0d\u627f\u62c5\u8d23\u4efb\u3002\n\u7528\u6237\u5fc5\u987b\u7559\u610f\u672c\u8eab\u6240\u5904\u4e4b\u5730\u533a\u53ca\u76f8\u5173\u6cd5\u5f8b\uff0c\u4e0d\u5f97\u5229\u7528\u672c\u8f6f\u4ef6\u8fdb\u884c\u4efb\u4f55\u975e\u6cd5\u6d3b\u52a8\uff0c\u4efb\u4f55\u60c5\u51b5\u4e0b\u5bfc\u81f4\u89e6\u72af\u6240\u5c5e\u5730\u533a\u4e4b\u6cd5\u5f8b\uff0c\u7528\u6237\u987b\u81ea\u884c\u627f\n\u62c5\u8d23\u4efb\uff0c\u4e00\u5207\u540e\u679c\u672c\u516c\u53f8\u6982\u4e0d\u8d1f\u8d23\u3002"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    goto/16 :goto_0

    .line 66
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-class v3, Lcom/shishicai/app/activity/AboutActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "\u5173\u4e8e\u6211\u4eec"

    .line 68
    const-string v0, "\u672c\u516c\u53f8\u7684\u613f\u666f\uff1a\u6700\u53d7\u6b22\u8fce\u7684\u5a31\u4e50\u4e92\u8054\u7f51\u4f01\u4e1a\u3002\n\u672c\u516c\u53f8\u7684\u4f7f\u547d\uff1a\u901a\u8fc7\u4e92\u8054\u7f51\u670d\u52a1\u63d0\u5347\u5a31\u4e50\u751f\u6d3b\u65b0\u54c1\u8d28\n\u672c\u516c\u53f8\u80a9\u8d1f\u7740\u91cd\u8981\u7684\u4f7f\u547d\uff0c\u7f8e\u597d\u7684\u613f\u666f\uff0c\u4e0d\u65ad\u7684\u52aa\u529b\uff0c\u63d0\u4f9b\u79d1\u6280\u5316\u7684\u4eba\u6027\u670d\u52a1\uff0c\u5f00\u62d3\u5e02\u573a\u65b0\u9886\u571f\u3002\n\u516c\u53f8\u4e00\u76f4\u6301\u7eed\u7684\u8fdb\u884c\u5e02\u573a\u8d44\u8baf\u7684\u6536\u96c6\u548c\u7814\u7a76\uff0c\u6301\u7eed\u62d3\u5c55\u4e1a\u52a1\u548c\u5f00\u62d3\u5168\u65b0\u7684\u670d\u52a1\u9886\u57df\uff0c\u52a0\u5f3a\u53d1\u5c55\u6280\u672f\uff0c\u81f3\u529b\u4e8e\u65b0\u4ea7\u54c1\u7684\u5f00\u53d1\u3001\u5408\u4f5c\u3002\n\u6211\u4eec\u6bcf\u4e00\u9879\u4ea7\u54c1\u548c\u8f6f\u4ef6\u8bbe\u8ba1\u601d\u5ff5\uff0c\u90fd\u8981\u6c42\u6700\u7b80\u5355\u6700\u5b9e\u7528\u6700\u65b9\u4fbf\uff0c\u6240\u4ee5\u5927\u5927\u7684\u6ee1\u8db3\u7528\u6237\u548c\u5bb6\u6237\u7684\u5a31\u4e50\u8981\u6c42\uff0c\u6211\u4eec\u4e0d\u65ad\u7684\u4e3a\u76ee\u6807\u5e02\u573a\u521b\u9020\u673a\u4f1a\u548c\u8bdd\u9898\uff0c\u5c06\u65b0\u4ea7\u54c1\u63a8\u5411\u6211\u4eec\u7684\u5408\u4f5c\u4f19\u4f34\u3001\u7528\u6237\uff0c\u521b\u9020\u53cc\u8d62\u3001\u591a\u8d62\u7684\u5c40\u9762\u3002"

    .line 72
    goto/16 :goto_0

    .line 75
    :sswitch_4
    invoke-virtual {p0}, Lcom/shishicai/app/activity/AboutAsActivity;->finish()V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09000f -> :sswitch_0
        0x7f090010 -> :sswitch_1
        0x7f090011 -> :sswitch_2
        0x7f090012 -> :sswitch_3
        0x7f0900f0 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/shishicai/app/utils/Base2Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/AboutAsActivity;->setContentView(I)V

    .line 22
    const-string v0, "AboutAsActivity"

    iput-object v0, p0, Lcom/shishicai/app/activity/AboutAsActivity;->TAG:Ljava/lang/String;

    .line 23
    const v0, 0x7f0900f1

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/AboutAsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/activity/AboutAsActivity;->title:Landroid/widget/TextView;

    .line 24
    iget-object v0, p0, Lcom/shishicai/app/activity/AboutAsActivity;->title:Landroid/widget/TextView;

    const-string v1, "\u5173\u4e8e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    const v0, 0x7f0900f0

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/AboutAsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shishicai/app/activity/AboutAsActivity;->titleimgLeft:Landroid/widget/ImageView;

    .line 26
    iget-object v0, p0, Lcom/shishicai/app/activity/AboutAsActivity;->titleimgLeft:Landroid/widget/ImageView;

    const v1, 0x7f020110

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    iget-object v0, p0, Lcom/shishicai/app/activity/AboutAsActivity;->titleimgLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    const v0, 0x7f09000f

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/AboutAsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    const v0, 0x7f090010

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/AboutAsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    const v0, 0x7f090011

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/AboutAsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    const v0, 0x7f090012

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/AboutAsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-void
.end method
