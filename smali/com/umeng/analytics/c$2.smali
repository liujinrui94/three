.class Lcom/umeng/analytics/c$2;
.super Lcom/umeng/analytics/e;
.source "InternalAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/c;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/umeng/analytics/c;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/c;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/umeng/analytics/c$2;->b:Lcom/umeng/analytics/c;

    iput-object p2, p0, Lcom/umeng/analytics/c$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/umeng/analytics/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/umeng/analytics/c$2;->b:Lcom/umeng/analytics/c;

    iget-object v1, p0, Lcom/umeng/analytics/c$2;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/analytics/c;->b(Lcom/umeng/analytics/c;Landroid/content/Context;)V

    .line 142
    return-void
.end method
