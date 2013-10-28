.class Lcom/app/ads/view/AdsBar$2;
.super Ljava/lang/Object;
.source "AdsBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/ads/view/AdsBar;->initAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/ads/view/AdsBar;


# direct methods
.method constructor <init>(Lcom/app/ads/view/AdsBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/ads/view/AdsBar$2;->this$0:Lcom/app/ads/view/AdsBar;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/app/ads/view/AdsBar$2;->this$0:Lcom/app/ads/view/AdsBar;

    invoke-virtual {v0}, Lcom/app/ads/view/AdsBar;->close()V

    .line 134
    iget-object v0, p0, Lcom/app/ads/view/AdsBar$2;->this$0:Lcom/app/ads/view/AdsBar;

    #getter for: Lcom/app/ads/view/AdsBar;->mOnCloseListenner:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/app/ads/view/AdsBar;->access$5(Lcom/app/ads/view/AdsBar;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/app/ads/view/AdsBar$2;->this$0:Lcom/app/ads/view/AdsBar;

    #getter for: Lcom/app/ads/view/AdsBar;->mOnCloseListenner:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/app/ads/view/AdsBar;->access$5(Lcom/app/ads/view/AdsBar;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/app/ads/view/AdsBar$2;->this$0:Lcom/app/ads/view/AdsBar;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 135
    :cond_0
    return-void
.end method
