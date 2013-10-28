.class Lcom/app/ads/adapter/AdInfoAdapter$1$1;
.super Lcom/app/ads/bean/OnAdClick;
.source "AdInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/ads/adapter/AdInfoAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/app/ads/adapter/AdInfoAdapter$1;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/app/ads/adapter/AdInfoAdapter$1;Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/ads/adapter/AdInfoAdapter$1$1;->this$1:Lcom/app/ads/adapter/AdInfoAdapter$1;

    iput-object p3, p0, Lcom/app/ads/adapter/AdInfoAdapter$1$1;->val$v:Landroid/view/View;

    .line 77
    invoke-direct {p0, p2}, Lcom/app/ads/bean/OnAdClick;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getAdInfo()Lcom/app/ads/bean/AdInfo;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/app/ads/adapter/AdInfoAdapter$1$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/ads/bean/AdInfo;

    return-object v0
.end method
