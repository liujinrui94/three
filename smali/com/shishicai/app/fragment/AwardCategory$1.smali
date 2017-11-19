.class Lcom/shishicai/app/fragment/AwardCategory$1;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "AwardCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/fragment/AwardCategory;->gainData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/fragment/AwardCategory;


# direct methods
.method constructor <init>(Lcom/shishicai/app/fragment/AwardCategory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/fragment/AwardCategory;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/shishicai/app/fragment/AwardCategory$1;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # [B
    .param p4, "arg3"    # Ljava/lang/Throwable;

    .prologue
    const/4 v3, 0x0

    .line 221
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory$1;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v0}, Lcom/shishicai/app/fragment/AwardCategory;->access$000(Lcom/shishicai/app/fragment/AwardCategory;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory$1;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v0}, Lcom/shishicai/app/fragment/AwardCategory;->access$100(Lcom/shishicai/app/fragment/AwardCategory;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory$1;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v0}, Lcom/shishicai/app/fragment/AwardCategory;->access$200(Lcom/shishicai/app/fragment/AwardCategory;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory$1;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v0, v3}, Lcom/shishicai/app/fragment/AwardCategory;->access$302(Lcom/shishicai/app/fragment/AwardCategory;Z)Z

    .line 225
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory$1;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v0}, Lcom/shishicai/app/fragment/AwardCategory;->access$400(Lcom/shishicai/app/fragment/AwardCategory;)Lcom/shishicai/app/activity/MainActivity;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u5f02\u5e38!"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 226
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 8
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # [B

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 230
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory$1;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v3, v6}, Lcom/shishicai/app/fragment/AwardCategory;->access$302(Lcom/shishicai/app/fragment/AwardCategory;Z)Z

    .line 231
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    .line 232
    .local v2, "str":Ljava/lang/String;
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory$1;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v3}, Lcom/shishicai/app/fragment/AwardCategory;->access$000(Lcom/shishicai/app/fragment/AwardCategory;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :try_start_0
    const-class v3, Lcom/shishicai/app/domain/PKshiInfo;

    invoke-static {v2, v3}, Lcom/shishicai/app/utils/GsonUtils;->parseJSON(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/domain/PKshiInfo;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .local v1, "info":Lcom/shishicai/app/domain/PKshiInfo;
    if-eqz v1, :cond_1

    .line 242
    invoke-virtual {v1}, Lcom/shishicai/app/domain/PKshiInfo;->getItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/shishicai/app/domain/PKshiInfo;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 243
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory$1;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v3}, Lcom/shishicai/app/fragment/AwardCategory;->access$500(Lcom/shishicai/app/fragment/AwardCategory;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Lcom/shishicai/app/domain/PKshiInfo;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 244
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory$1;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v3}, Lcom/shishicai/app/fragment/AwardCategory;->access$100(Lcom/shishicai/app/fragment/AwardCategory;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 245
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory$1;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v3}, Lcom/shishicai/app/fragment/AwardCategory;->access$200(Lcom/shishicai/app/fragment/AwardCategory;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 246
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory$1;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v3}, Lcom/shishicai/app/fragment/AwardCategory;->access$600(Lcom/shishicai/app/fragment/AwardCategory;)Lcom/shishicai/app/activity/adapter/PKshiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shishicai/app/activity/adapter/PKshiAdapter;->notifyDataSetChanged()V

    .line 257
    .end local v1    # "info":Lcom/shishicai/app/domain/PKshiInfo;
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory$1;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v3}, Lcom/shishicai/app/fragment/AwardCategory;->access$000(Lcom/shishicai/app/fragment/AwardCategory;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "err="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto :goto_0

    .line 248
    .end local v0    # "e":Lcom/google/gson/JsonSyntaxException;
    .restart local v1    # "info":Lcom/shishicai/app/domain/PKshiInfo;
    :cond_0
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory$1;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v3}, Lcom/shishicai/app/fragment/AwardCategory;->access$100(Lcom/shishicai/app/fragment/AwardCategory;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 249
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory$1;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v3}, Lcom/shishicai/app/fragment/AwardCategory;->access$200(Lcom/shishicai/app/fragment/AwardCategory;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 250
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory$1;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v3}, Lcom/shishicai/app/fragment/AwardCategory;->access$400(Lcom/shishicai/app/fragment/AwardCategory;)Lcom/shishicai/app/activity/MainActivity;

    move-result-object v3

    const-string v4, "\u6682\u65e0\u6570\u636e!"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 253
    :cond_1
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory$1;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v3}, Lcom/shishicai/app/fragment/AwardCategory;->access$100(Lcom/shishicai/app/fragment/AwardCategory;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 254
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory$1;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v3}, Lcom/shishicai/app/fragment/AwardCategory;->access$200(Lcom/shishicai/app/fragment/AwardCategory;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 255
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory$1;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v3}, Lcom/shishicai/app/fragment/AwardCategory;->access$400(Lcom/shishicai/app/fragment/AwardCategory;)Lcom/shishicai/app/activity/MainActivity;

    move-result-object v3

    const-string v4, "\u6682\u65e0\u6570\u636e!"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
