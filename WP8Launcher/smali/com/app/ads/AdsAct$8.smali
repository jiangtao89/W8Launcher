.class Lcom/app/ads/AdsAct$8;
.super Ljava/lang/Object;
.source "AdsAct.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/ads/AdsAct;->createListView(Landroid/widget/AdapterView$OnItemClickListener;Landroid/view/View$OnClickListener;)Lcom/app/common/view/ListViewLM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/ads/AdsAct;

.field private final synthetic val$loadListener:Landroid/view/View$OnClickListener;

.field private final synthetic val$lvwlm:Lcom/app/common/view/ListViewLM;


# direct methods
.method constructor <init>(Lcom/app/ads/AdsAct;Lcom/app/common/view/ListViewLM;Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/ads/AdsAct$8;->this$0:Lcom/app/ads/AdsAct;

    iput-object p2, p0, Lcom/app/ads/AdsAct$8;->val$lvwlm:Lcom/app/common/view/ListViewLM;

    iput-object p3, p0, Lcom/app/ads/AdsAct$8;->val$loadListener:Landroid/view/View$OnClickListener;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 292
    invoke-static {}, Lcom/app/common/config/BaseGlobal;->isAutoLoadMore()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/app/ads/AdsAct$8;->val$lvwlm:Lcom/app/common/view/ListViewLM;

    invoke-virtual {v0}, Lcom/app/common/view/ListViewLM;->isLoadMoreShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    add-int v0, p2, p3

    if-ne v0, p4, :cond_0

    iget-object v0, p0, Lcom/app/ads/AdsAct$8;->val$lvwlm:Lcom/app/common/view/ListViewLM;

    invoke-virtual {v0}, Lcom/app/common/view/ListViewLM;->isBindingTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/app/ads/AdsAct$8;->val$loadListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 296
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 286
    return-void
.end method
