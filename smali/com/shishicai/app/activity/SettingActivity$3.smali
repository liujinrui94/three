.class Lcom/shishicai/app/activity/SettingActivity$3;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/SettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/SettingActivity;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/SettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/SettingActivity;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/shishicai/app/activity/SettingActivity$3;->this$0:Lcom/shishicai/app/activity/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    if-eqz p2, :cond_3

    .line 110
    iget-object v2, p0, Lcom/shishicai/app/activity/SettingActivity$3;->this$0:Lcom/shishicai/app/activity/SettingActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/SettingActivity;->access$000(Lcom/shishicai/app/activity/SettingActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/shishicai/app/activity/SettingActivity$3;->this$0:Lcom/shishicai/app/activity/SettingActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/SettingActivity;->access$200(Lcom/shishicai/app/activity/SettingActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/shishicai/app/activity/SettingActivity$3;->this$0:Lcom/shishicai/app/activity/SettingActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/SettingActivity;->access$300(Lcom/shishicai/app/activity/SettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 113
    iget-object v2, p0, Lcom/shishicai/app/activity/SettingActivity$3;->this$0:Lcom/shishicai/app/activity/SettingActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/SettingActivity;->access$400(Lcom/shishicai/app/activity/SettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/shishicai/app/activity/SettingActivity$3;->this$0:Lcom/shishicai/app/activity/SettingActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/SettingActivity;->access$500(Lcom/shishicai/app/activity/SettingActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "time":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/shishicai/app/activity/SettingActivity$3;->this$0:Lcom/shishicai/app/activity/SettingActivity;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/shishicai/app/activity/SettingActivity;->access$602(Lcom/shishicai/app/activity/SettingActivity;I)I

    .line 122
    :goto_0
    iget-object v2, p0, Lcom/shishicai/app/activity/SettingActivity$3;->this$0:Lcom/shishicai/app/activity/SettingActivity;

    const-string v3, "play_before_time"

    iget-object v4, p0, Lcom/shishicai/app/activity/SettingActivity$3;->this$0:Lcom/shishicai/app/activity/SettingActivity;

    invoke-static {v4}, Lcom/shishicai/app/activity/SettingActivity;->access$600(Lcom/shishicai/app/activity/SettingActivity;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/shishicai/app/utils/PreferencesUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 123
    iget-object v2, p0, Lcom/shishicai/app/activity/SettingActivity$3;->this$0:Lcom/shishicai/app/activity/SettingActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/SettingActivity;->access$700(Lcom/shishicai/app/activity/SettingActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "times":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 126
    iget-object v2, p0, Lcom/shishicai/app/activity/SettingActivity$3;->this$0:Lcom/shishicai/app/activity/SettingActivity;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/shishicai/app/activity/SettingActivity;->access$802(Lcom/shishicai/app/activity/SettingActivity;I)I

    .line 130
    :goto_1
    iget-object v2, p0, Lcom/shishicai/app/activity/SettingActivity$3;->this$0:Lcom/shishicai/app/activity/SettingActivity;

    const-string v3, "play_times"

    iget-object v4, p0, Lcom/shishicai/app/activity/SettingActivity$3;->this$0:Lcom/shishicai/app/activity/SettingActivity;

    invoke-static {v4}, Lcom/shishicai/app/activity/SettingActivity;->access$800(Lcom/shishicai/app/activity/SettingActivity;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/shishicai/app/utils/PreferencesUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 137
    .end local v0    # "time":Ljava/lang/String;
    .end local v1    # "times":Ljava/lang/String;
    :goto_2
    return-void

    .line 120
    .restart local v0    # "time":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/shishicai/app/activity/SettingActivity$3;->this$0:Lcom/shishicai/app/activity/SettingActivity;

    const-string v3, "\u8bbe\u7f6e\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v2, v3}, Lcom/shishicai/app/service/HttpMethod;->Toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    .restart local v1    # "times":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/shishicai/app/activity/SettingActivity$3;->this$0:Lcom/shishicai/app/activity/SettingActivity;

    const-string v3, "\u8bbe\u7f6e\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v2, v3}, Lcom/shishicai/app/service/HttpMethod;->Toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 133
    .end local v0    # "time":Ljava/lang/String;
    .end local v1    # "times":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/shishicai/app/activity/SettingActivity$3;->this$0:Lcom/shishicai/app/activity/SettingActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/SettingActivity;->access$300(Lcom/shishicai/app/activity/SettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 134
    iget-object v2, p0, Lcom/shishicai/app/activity/SettingActivity$3;->this$0:Lcom/shishicai/app/activity/SettingActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/SettingActivity;->access$400(Lcom/shishicai/app/activity/SettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_2
.end method
