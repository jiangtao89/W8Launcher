.class Lcom/app/ads/AdsAct$12;
.super Ljava/lang/Object;
.source "AdsAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/ads/AdsAct;->execDetail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/ads/AdsAct;


# direct methods
.method constructor <init>(Lcom/app/ads/AdsAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/ads/AdsAct$12;->this$0:Lcom/app/ads/AdsAct;

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/app/ads/AdsAct$12;)Lcom/app/ads/AdsAct;
    .locals 1
    .parameter

    .prologue
    .line 501
    iget-object v0, p0, Lcom/app/ads/AdsAct$12;->this$0:Lcom/app/ads/AdsAct;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/app/ads/AdsAct$12;->this$0:Lcom/app/ads/AdsAct;

    #getter for: Lcom/app/ads/AdsAct;->mAdInfo:Lcom/app/ads/bean/AdInfo;
    invoke-static {v0}, Lcom/app/ads/AdsAct;->access$6(Lcom/app/ads/AdsAct;)Lcom/app/ads/bean/AdInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 505
    new-instance v0, Lcom/app/ads/AdsAct$12$1;

    iget-object v1, p0, Lcom/app/ads/AdsAct$12;->this$0:Lcom/app/ads/AdsAct;

    #getter for: Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;
    invoke-static {v1}, Lcom/app/ads/AdsAct;->access$3(Lcom/app/ads/AdsAct;)Lcom/app/common/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/app/ads/AdsAct$12$1;-><init>(Lcom/app/ads/AdsAct$12;Landroid/content/Context;)V

    .line 511
    invoke-virtual {v0, p1}, Lcom/app/ads/AdsAct$12$1;->onClick(Landroid/view/View;)V

    move-object v0, p1

    .line 512
    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u4e0b\u8f7d\u4e2d.."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 515
    :cond_0
    return-void
.end method
