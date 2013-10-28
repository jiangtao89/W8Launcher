.class Lcom/app/ads/view/AdsBar$1;
.super Ljava/lang/Object;
.source "AdsBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/ads/view/AdsBar;->initData()V
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
    iput-object p1, p0, Lcom/app/ads/view/AdsBar$1;->this$0:Lcom/app/ads/view/AdsBar;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 105
    iget-object v2, p0, Lcom/app/ads/view/AdsBar$1;->this$0:Lcom/app/ads/view/AdsBar;

    #getter for: Lcom/app/ads/view/AdsBar;->mAdInfoAdapter:Lcom/app/ads/adapter/AdInfoAdapter;
    invoke-static {v2}, Lcom/app/ads/view/AdsBar;->access$0(Lcom/app/ads/view/AdsBar;)Lcom/app/ads/adapter/AdInfoAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/app/ads/adapter/AdInfoAdapter;->getCount()I

    move-result v0

    .line 107
    .local v0, count:I
    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    .line 108
    iget-object v2, p0, Lcom/app/ads/view/AdsBar$1;->this$0:Lcom/app/ads/view/AdsBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/app/ads/view/AdsBar;->showAdAt(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    :goto_0
    return-void

    .line 110
    :cond_0
    if-lez v0, :cond_2

    .line 111
    const/4 v1, 0x0

    .line 113
    .local v1, serachCount:I
    :cond_1
    if-lt v1, v0, :cond_3

    .line 124
    .end local v1           #serachCount:I
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/app/ads/view/AdsBar$1;->this$0:Lcom/app/ads/view/AdsBar;

    #getter for: Lcom/app/ads/view/AdsBar;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/app/ads/view/AdsBar;->access$3(Lcom/app/ads/view/AdsBar;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/app/ads/view/AdsBar$1;->this$0:Lcom/app/ads/view/AdsBar;

    #getter for: Lcom/app/ads/view/AdsBar;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/app/ads/view/AdsBar;->access$4(Lcom/app/ads/view/AdsBar;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v4, p0, Lcom/app/ads/view/AdsBar$1;->this$0:Lcom/app/ads/view/AdsBar;

    invoke-virtual {v4}, Lcom/app/ads/view/AdsBar;->getSlideTime()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 114
    .restart local v1       #serachCount:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 116
    iget-object v2, p0, Lcom/app/ads/view/AdsBar$1;->this$0:Lcom/app/ads/view/AdsBar;

    iget-object v3, p0, Lcom/app/ads/view/AdsBar$1;->this$0:Lcom/app/ads/view/AdsBar;

    #getter for: Lcom/app/ads/view/AdsBar;->mAdLoop:I
    invoke-static {v3}, Lcom/app/ads/view/AdsBar;->access$1(Lcom/app/ads/view/AdsBar;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    #setter for: Lcom/app/ads/view/AdsBar;->mAdLoop:I
    invoke-static {v3, v4}, Lcom/app/ads/view/AdsBar;->access$2(Lcom/app/ads/view/AdsBar;I)V

    rem-int v3, v4, v0

    #setter for: Lcom/app/ads/view/AdsBar;->mAdLoop:I
    invoke-static {v2, v3}, Lcom/app/ads/view/AdsBar;->access$2(Lcom/app/ads/view/AdsBar;I)V

    .line 118
    iget-object v2, p0, Lcom/app/ads/view/AdsBar$1;->this$0:Lcom/app/ads/view/AdsBar;

    iget-object v3, p0, Lcom/app/ads/view/AdsBar$1;->this$0:Lcom/app/ads/view/AdsBar;

    #getter for: Lcom/app/ads/view/AdsBar;->mAdLoop:I
    invoke-static {v3}, Lcom/app/ads/view/AdsBar;->access$1(Lcom/app/ads/view/AdsBar;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/app/ads/view/AdsBar;->showAdAt(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1
.end method
