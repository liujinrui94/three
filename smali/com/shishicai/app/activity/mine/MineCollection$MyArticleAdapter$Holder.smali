.class Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;
.super Ljava/lang/Object;
.source "MineCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field private article_addtime:Landroid/widget/TextView;

.field private article_logo:Landroid/widget/ImageView;

.field private article_name:Landroid/widget/TextView;

.field private delbtn:Landroid/widget/Button;

.field final synthetic this$1:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;


# direct methods
.method private constructor <init>(Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;->this$1:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;Lcom/shishicai/app/activity/mine/MineCollection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;
    .param p2, "x1"    # Lcom/shishicai/app/activity/mine/MineCollection$1;

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;-><init>(Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;->article_logo:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;->article_name:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;->article_name:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;->article_addtime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;->article_addtime:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;->delbtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;->delbtn:Landroid/widget/Button;

    return-object p1
.end method
