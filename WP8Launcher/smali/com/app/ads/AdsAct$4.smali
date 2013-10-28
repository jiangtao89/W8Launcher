.class Lcom/app/ads/AdsAct$4;
.super Ljava/lang/Object;
.source "AdsAct.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/ads/AdsAct;->execList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/ads/AdsAct;


# direct methods
.method constructor <init>(Lcom/app/ads/AdsAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/ads/AdsAct$4;->this$0:Lcom/app/ads/AdsAct;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/app/ads/AdsAct$4;->this$0:Lcom/app/ads/AdsAct;

    iget-object v0, v0, Lcom/app/ads/AdsAct;->mHotOrTopBar:Lcom/app/common/view/MenuBar;

    invoke-virtual {v0, p2}, Lcom/app/common/view/MenuBar;->setClickedView(Landroid/view/View;)V

    .line 191
    iget-object v0, p0, Lcom/app/ads/AdsAct$4;->this$0:Lcom/app/ads/AdsAct;

    invoke-virtual {v0, p3}, Lcom/app/ads/AdsAct;->show(I)V

    .line 192
    iget-object v0, p0, Lcom/app/ads/AdsAct$4;->this$0:Lcom/app/ads/AdsAct;

    #getter for: Lcom/app/ads/AdsAct;->mListView:Lcom/app/common/view/ListViewLM;
    invoke-static {v0}, Lcom/app/ads/AdsAct;->access$2(Lcom/app/ads/AdsAct;)Lcom/app/common/view/ListViewLM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/app/common/view/ListViewLM;->getGyAdapter()Lcom/app/common/gy/GyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/app/common/gy/GyAdapter;->getBll()Lcom/app/common/bll/BllXmlPull;

    move-result-object v0

    invoke-virtual {v0}, Lcom/app/common/bll/BllXmlPull;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/app/ads/AdsAct$4;->this$0:Lcom/app/ads/AdsAct;

    iget-object v1, p0, Lcom/app/ads/AdsAct$4;->this$0:Lcom/app/ads/AdsAct;

    invoke-virtual {v1}, Lcom/app/ads/AdsAct;->getOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/app/ads/AdsAct;->exeTask(I)V

    .line 195
    :cond_0
    return-void
.end method
