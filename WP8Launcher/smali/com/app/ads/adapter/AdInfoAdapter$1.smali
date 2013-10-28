.class Lcom/app/ads/adapter/AdInfoAdapter$1;
.super Ljava/lang/Object;
.source "AdInfoAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/ads/adapter/AdInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/ads/adapter/AdInfoAdapter;


# direct methods
.method constructor <init>(Lcom/app/ads/adapter/AdInfoAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/ads/adapter/AdInfoAdapter$1;->this$0:Lcom/app/ads/adapter/AdInfoAdapter;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 77
    new-instance v0, Lcom/app/ads/adapter/AdInfoAdapter$1$1;

    iget-object v1, p0, Lcom/app/ads/adapter/AdInfoAdapter$1;->this$0:Lcom/app/ads/adapter/AdInfoAdapter;

    #getter for: Lcom/app/ads/adapter/AdInfoAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/app/ads/adapter/AdInfoAdapter;->access$1(Lcom/app/ads/adapter/AdInfoAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/app/ads/adapter/AdInfoAdapter$1$1;-><init>(Lcom/app/ads/adapter/AdInfoAdapter$1;Landroid/content/Context;Landroid/view/View;)V

    .line 82
    invoke-virtual {v0, p1}, Lcom/app/ads/adapter/AdInfoAdapter$1$1;->onClick(Landroid/view/View;)V

    .line 84
    return-void
.end method
