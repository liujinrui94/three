.class Lcom/shishicai/app/activity/SettingActivity$2;
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
    .line 83
    iput-object p1, p0, Lcom/shishicai/app/activity/SettingActivity$2;->this$0:Lcom/shishicai/app/activity/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    iget-object v0, p0, Lcom/shishicai/app/activity/SettingActivity$2;->this$0:Lcom/shishicai/app/activity/SettingActivity;

    invoke-static {v0, p2}, Lcom/shishicai/app/activity/SettingActivity;->access$202(Lcom/shishicai/app/activity/SettingActivity;Z)Z

    .line 89
    if-eqz p2, :cond_1

    .line 91
    iget-object v0, p0, Lcom/shishicai/app/activity/SettingActivity$2;->this$0:Lcom/shishicai/app/activity/SettingActivity;

    invoke-static {v0}, Lcom/shishicai/app/activity/SettingActivity;->access$100(Lcom/shishicai/app/activity/SettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 92
    iget-object v0, p0, Lcom/shishicai/app/activity/SettingActivity$2;->this$0:Lcom/shishicai/app/activity/SettingActivity;

    const-string v1, "is_vibrate"

    invoke-static {v0, v1, v3}, Lcom/shishicai/app/utils/PreferencesUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/shishicai/app/activity/SettingActivity$2;->this$0:Lcom/shishicai/app/activity/SettingActivity;

    const-string v1, "is_vibrate"

    invoke-static {v0, v1, v2}, Lcom/shishicai/app/utils/PreferencesUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 96
    iget-object v0, p0, Lcom/shishicai/app/activity/SettingActivity$2;->this$0:Lcom/shishicai/app/activity/SettingActivity;

    invoke-static {v0}, Lcom/shishicai/app/activity/SettingActivity;->access$000(Lcom/shishicai/app/activity/SettingActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/shishicai/app/activity/SettingActivity$2;->this$0:Lcom/shishicai/app/activity/SettingActivity;

    invoke-static {v0}, Lcom/shishicai/app/activity/SettingActivity;->access$100(Lcom/shishicai/app/activity/SettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method
