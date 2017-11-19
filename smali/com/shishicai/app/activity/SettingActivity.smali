.class public Lcom/shishicai/app/activity/SettingActivity;
.super Lcom/shishicai/app/utils/Base2Activity;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private beforeTime:I

.field private isChecked1:Z

.field private isChecked2:Z

.field private mTogBtn1:Landroid/widget/ToggleButton;

.field private mTogBtn2:Landroid/widget/ToggleButton;

.field private mTogBtn3:Landroid/widget/ToggleButton;

.field private playTimes:I

.field private settings:Landroid/content/SharedPreferences;

.field private timeEt:Landroid/widget/EditText;

.field private timesEt:Landroid/widget/EditText;

.field private title:Landroid/widget/TextView;

.field private titleimgLeft:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 22
    invoke-direct {p0}, Lcom/shishicai/app/utils/Base2Activity;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcom/shishicai/app/activity/SettingActivity;->isChecked1:Z

    .line 32
    iput-boolean v0, p0, Lcom/shishicai/app/activity/SettingActivity;->isChecked2:Z

    .line 33
    const/16 v0, 0x1e

    iput v0, p0, Lcom/shishicai/app/activity/SettingActivity;->beforeTime:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/shishicai/app/activity/SettingActivity;->playTimes:I

    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/activity/SettingActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/SettingActivity;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/shishicai/app/activity/SettingActivity;->isChecked1:Z

    return v0
.end method

.method static synthetic access$002(Lcom/shishicai/app/activity/SettingActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/SettingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/shishicai/app/activity/SettingActivity;->isChecked1:Z

    return p1
.end method

.method static synthetic access$100(Lcom/shishicai/app/activity/SettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/SettingActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/shishicai/app/activity/SettingActivity;->mTogBtn3:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shishicai/app/activity/SettingActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/SettingActivity;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/shishicai/app/activity/SettingActivity;->isChecked2:Z

    return v0
.end method

.method static synthetic access$202(Lcom/shishicai/app/activity/SettingActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/SettingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/shishicai/app/activity/SettingActivity;->isChecked2:Z

    return p1
.end method

.method static synthetic access$300(Lcom/shishicai/app/activity/SettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/SettingActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/shishicai/app/activity/SettingActivity;->mTogBtn1:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/shishicai/app/activity/SettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/SettingActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/shishicai/app/activity/SettingActivity;->mTogBtn2:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/shishicai/app/activity/SettingActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/SettingActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/shishicai/app/activity/SettingActivity;->timeEt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/shishicai/app/activity/SettingActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/SettingActivity;

    .prologue
    .line 22
    iget v0, p0, Lcom/shishicai/app/activity/SettingActivity;->beforeTime:I

    return v0
.end method

.method static synthetic access$602(Lcom/shishicai/app/activity/SettingActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/SettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/shishicai/app/activity/SettingActivity;->beforeTime:I

    return p1
.end method

.method static synthetic access$700(Lcom/shishicai/app/activity/SettingActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/SettingActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/shishicai/app/activity/SettingActivity;->timesEt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/shishicai/app/activity/SettingActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/SettingActivity;

    .prologue
    .line 22
    iget v0, p0, Lcom/shishicai/app/activity/SettingActivity;->playTimes:I

    return v0
.end method

.method static synthetic access$802(Lcom/shishicai/app/activity/SettingActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/SettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/shishicai/app/activity/SettingActivity;->playTimes:I

    return p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 150
    :goto_0
    return-void

    .line 147
    :pswitch_0
    invoke-virtual {p0}, Lcom/shishicai/app/activity/SettingActivity;->finish()V

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x7f0900f0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 38
    invoke-super {p0, p1}, Lcom/shishicai/app/utils/Base2Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/SettingActivity;->setContentView(I)V

    .line 40
    const-string v0, "SettingActivity"

    iput-object v0, p0, Lcom/shishicai/app/activity/SettingActivity;->TAG:Ljava/lang/String;

    .line 41
    const v0, 0x7f0900f1

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/activity/SettingActivity;->title:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/shishicai/app/activity/SettingActivity;->title:Landroid/widget/TextView;

    const-string v1, "\u5e94\u7528\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    const v0, 0x7f0900f0

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shishicai/app/activity/SettingActivity;->titleimgLeft:Landroid/widget/ImageView;

    .line 44
    iget-object v0, p0, Lcom/shishicai/app/activity/SettingActivity;->titleimgLeft:Landroid/widget/ImageView;

    const v1, 0x7f020110

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    iget-object v0, p0, Lcom/shishicai/app/activity/SettingActivity;->titleimgLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v0, 0x7f090037

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/shishicai/app/activity/SettingActivity;->mTogBtn1:Landroid/widget/ToggleButton;

    .line 47
    const v0, 0x7f090039

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/shishicai/app/activity/SettingActivity;->mTogBtn2:Landroid/widget/ToggleButton;

    .line 48
    const v0, 0x7f09003d

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/shishicai/app/activity/SettingActivity;->mTogBtn3:Landroid/widget/ToggleButton;

    .line 49
    const v0, 0x7f09003b

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/shishicai/app/activity/SettingActivity;->timeEt:Landroid/widget/EditText;

    .line 50
    const v0, 0x7f09003c

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/shishicai/app/activity/SettingActivity;->timesEt:Landroid/widget/EditText;

    .line 51
    iget-object v0, p0, Lcom/shishicai/app/activity/SettingActivity;->timeEt:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 52
    iget-object v0, p0, Lcom/shishicai/app/activity/SettingActivity;->timesEt:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 53
    const-string v0, "AndroidCommon"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shishicai/app/activity/SettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/shishicai/app/activity/SettingActivity;->settings:Landroid/content/SharedPreferences;

    .line 55
    iget-object v0, p0, Lcom/shishicai/app/activity/SettingActivity;->settings:Landroid/content/SharedPreferences;

    const-string v1, "is_play_beep"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/shishicai/app/activity/SettingActivity;->isChecked1:Z

    .line 56
    iget-object v0, p0, Lcom/shishicai/app/activity/SettingActivity;->settings:Landroid/content/SharedPreferences;

    const-string v1, "is_vibrate"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/shishicai/app/activity/SettingActivity;->isChecked2:Z

    .line 57
    iget-object v0, p0, Lcom/shishicai/app/activity/SettingActivity;->mTogBtn1:Landroid/widget/ToggleButton;

    iget-boolean v1, p0, Lcom/shishicai/app/activity/SettingActivity;->isChecked1:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 58
    iget-object v0, p0, Lcom/shishicai/app/activity/SettingActivity;->mTogBtn2:Landroid/widget/ToggleButton;

    iget-boolean v1, p0, Lcom/shishicai/app/activity/SettingActivity;->isChecked2:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 59
    iget-object v0, p0, Lcom/shishicai/app/activity/SettingActivity;->settings:Landroid/content/SharedPreferences;

    const-string v1, "play_before_time"

    const/16 v2, 0x1e

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shishicai/app/activity/SettingActivity;->beforeTime:I

    .line 60
    iget-object v0, p0, Lcom/shishicai/app/activity/SettingActivity;->settings:Landroid/content/SharedPreferences;

    const-string v1, "play_times"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shishicai/app/activity/SettingActivity;->playTimes:I

    .line 61
    iget-object v0, p0, Lcom/shishicai/app/activity/SettingActivity;->timeEt:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/shishicai/app/activity/SettingActivity;->beforeTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/shishicai/app/activity/SettingActivity;->timesEt:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/shishicai/app/activity/SettingActivity;->playTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/shishicai/app/activity/SettingActivity;->mTogBtn1:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/shishicai/app/activity/SettingActivity$1;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/SettingActivity$1;-><init>(Lcom/shishicai/app/activity/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 83
    iget-object v0, p0, Lcom/shishicai/app/activity/SettingActivity;->mTogBtn2:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/shishicai/app/activity/SettingActivity$2;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/SettingActivity$2;-><init>(Lcom/shishicai/app/activity/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 103
    iget-object v0, p0, Lcom/shishicai/app/activity/SettingActivity;->mTogBtn3:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/shishicai/app/activity/SettingActivity$3;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/SettingActivity$3;-><init>(Lcom/shishicai/app/activity/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 139
    return-void
.end method
