.class Lcom/shishicai/app/activity/mine/MineInformation$4;
.super Ljava/lang/Object;
.source "MineInformation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/mine/MineInformation;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MineInformation;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineInformation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/mine/MineInformation;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineInformation$4;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 130
    .local v3, "msg":Landroid/os/Message;
    const/16 v5, 0x65

    iput v5, v3, Landroid/os/Message;->what:I

    .line 131
    iget-object v5, p0, Lcom/shishicai/app/activity/mine/MineInformation$4;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v5}, Lcom/shishicai/app/activity/mine/MineInformation;->access$1200(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 132
    iget-object v5, p0, Lcom/shishicai/app/activity/mine/MineInformation$4;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v5}, Lcom/shishicai/app/activity/mine/MineInformation;->access$1300(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "birthdayStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/shishicai/app/activity/mine/MineInformation$4;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v5}, Lcom/shishicai/app/activity/mine/MineInformation;->access$1400(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "genderStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/shishicai/app/activity/mine/MineInformation$4;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    iget-object v6, p0, Lcom/shishicai/app/activity/mine/MineInformation$4;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v6}, Lcom/shishicai/app/activity/mine/MineInformation;->access$1600(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/shishicai/app/activity/mine/MineInformation;->access$1502(Lcom/shishicai/app/activity/mine/MineInformation;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    iget-object v5, p0, Lcom/shishicai/app/activity/mine/MineInformation$4;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    iget-object v6, p0, Lcom/shishicai/app/activity/mine/MineInformation$4;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v6}, Lcom/shishicai/app/activity/mine/MineInformation;->access$1800(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/shishicai/app/activity/mine/MineInformation;->access$1702(Lcom/shishicai/app/activity/mine/MineInformation;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    const-string v5, "\u8bf7\u9009\u62e9"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 137
    const-string v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "birthArr":[Ljava/lang/String;
    iget-object v5, p0, Lcom/shishicai/app/activity/mine/MineInformation$4;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-static {v5, v6}, Lcom/shishicai/app/activity/mine/MineInformation;->access$1902(Lcom/shishicai/app/activity/mine/MineInformation;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    iget-object v5, p0, Lcom/shishicai/app/activity/mine/MineInformation$4;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-static {v5, v6}, Lcom/shishicai/app/activity/mine/MineInformation;->access$2002(Lcom/shishicai/app/activity/mine/MineInformation;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    iget-object v5, p0, Lcom/shishicai/app/activity/mine/MineInformation$4;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-static {v5, v6}, Lcom/shishicai/app/activity/mine/MineInformation;->access$2102(Lcom/shishicai/app/activity/mine/MineInformation;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .end local v0    # "birthArr":[Ljava/lang/String;
    :goto_0
    const-string v5, "\u4fdd\u5bc6"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 148
    iget-object v5, p0, Lcom/shishicai/app/activity/mine/MineInformation$4;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    const-string v6, "0"

    invoke-static {v5, v6}, Lcom/shishicai/app/activity/mine/MineInformation;->access$2202(Lcom/shishicai/app/activity/mine/MineInformation;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    :goto_1
    iget-object v5, p0, Lcom/shishicai/app/activity/mine/MineInformation$4;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v5}, Lcom/shishicai/app/service/HttpMethod;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 157
    new-instance v4, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v4}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 158
    .local v4, "params":Lcom/loopj/android/http/RequestParams;
    const-string v5, "act"

    const-string v6, "act_edit_profile"

    invoke-virtual {v4, v5, v6}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v5, "authkey"

    sget-object v6, Lcom/shishicai/app/Constant;->session_id:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v5, "birthdayYear"

    iget-object v6, p0, Lcom/shishicai/app/activity/mine/MineInformation$4;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v6}, Lcom/shishicai/app/activity/mine/MineInformation;->access$1900(Lcom/shishicai/app/activity/mine/MineInformation;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v5, "birthdayMonth"

    iget-object v6, p0, Lcom/shishicai/app/activity/mine/MineInformation$4;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v6}, Lcom/shishicai/app/activity/mine/MineInformation;->access$2000(Lcom/shishicai/app/activity/mine/MineInformation;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v5, "birthdayDay"

    iget-object v6, p0, Lcom/shishicai/app/activity/mine/MineInformation$4;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v6}, Lcom/shishicai/app/activity/mine/MineInformation;->access$2100(Lcom/shishicai/app/activity/mine/MineInformation;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v5, "birthdayDay"

    iget-object v6, p0, Lcom/shishicai/app/activity/mine/MineInformation$4;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v6}, Lcom/shishicai/app/activity/mine/MineInformation;->access$2100(Lcom/shishicai/app/activity/mine/MineInformation;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v5, "email"

    iget-object v6, p0, Lcom/shishicai/app/activity/mine/MineInformation$4;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v6}, Lcom/shishicai/app/activity/mine/MineInformation;->access$1500(Lcom/shishicai/app/activity/mine/MineInformation;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v5, "nickname"

    iget-object v6, p0, Lcom/shishicai/app/activity/mine/MineInformation$4;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v6}, Lcom/shishicai/app/activity/mine/MineInformation;->access$1700(Lcom/shishicai/app/activity/mine/MineInformation;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v5, "sex"

    iget-object v6, p0, Lcom/shishicai/app/activity/mine/MineInformation$4;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v6}, Lcom/shishicai/app/activity/mine/MineInformation;->access$2200(Lcom/shishicai/app/activity/mine/MineInformation;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    sget-object v5, Lcom/shishicai/app/Constant;->URLUser:Ljava/lang/String;

    new-instance v6, Lcom/shishicai/app/activity/mine/MineInformation$4$1;

    invoke-direct {v6, p0}, Lcom/shishicai/app/activity/mine/MineInformation$4$1;-><init>(Lcom/shishicai/app/activity/mine/MineInformation$4;)V

    invoke-static {v5, v4, v6}, Lcom/shishicai/app/service/HttpUser;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 189
    .end local v4    # "params":Lcom/loopj/android/http/RequestParams;
    :goto_2
    return-void

    .line 142
    :cond_0
    iget-object v5, p0, Lcom/shishicai/app/activity/mine/MineInformation$4;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    const-string v6, "1990"

    invoke-static {v5, v6}, Lcom/shishicai/app/activity/mine/MineInformation;->access$1902(Lcom/shishicai/app/activity/mine/MineInformation;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    iget-object v5, p0, Lcom/shishicai/app/activity/mine/MineInformation$4;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    const-string v6, "1"

    invoke-static {v5, v6}, Lcom/shishicai/app/activity/mine/MineInformation;->access$2002(Lcom/shishicai/app/activity/mine/MineInformation;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    iget-object v5, p0, Lcom/shishicai/app/activity/mine/MineInformation$4;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    const-string v6, "1"

    invoke-static {v5, v6}, Lcom/shishicai/app/activity/mine/MineInformation;->access$2102(Lcom/shishicai/app/activity/mine/MineInformation;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 149
    :cond_1
    const-string v5, "\u7537"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 150
    iget-object v5, p0, Lcom/shishicai/app/activity/mine/MineInformation$4;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    const-string v6, "1"

    invoke-static {v5, v6}, Lcom/shishicai/app/activity/mine/MineInformation;->access$2202(Lcom/shishicai/app/activity/mine/MineInformation;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 151
    :cond_2
    const-string v5, "\u5973"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 152
    iget-object v5, p0, Lcom/shishicai/app/activity/mine/MineInformation$4;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    const-string v6, "2"

    invoke-static {v5, v6}, Lcom/shishicai/app/activity/mine/MineInformation;->access$2202(Lcom/shishicai/app/activity/mine/MineInformation;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 154
    :cond_3
    iget-object v5, p0, Lcom/shishicai/app/activity/mine/MineInformation$4;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    const-string v6, "0"

    invoke-static {v5, v6}, Lcom/shishicai/app/activity/mine/MineInformation;->access$2202(Lcom/shishicai/app/activity/mine/MineInformation;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 187
    :cond_4
    iget-object v5, p0, Lcom/shishicai/app/activity/mine/MineInformation$4;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v5}, Lcom/shishicai/app/service/HttpMethod;->Toast(Landroid/content/Context;)V

    goto :goto_2
.end method
