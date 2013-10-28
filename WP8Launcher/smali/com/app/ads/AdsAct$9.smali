.class Lcom/app/ads/AdsAct$9;
.super Ljava/lang/Object;
.source "AdsAct.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/ads/AdsAct;->createDetailView()V
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
    iput-object p1, p0, Lcom/app/ads/AdsAct$9;->this$0:Lcom/app/ads/AdsAct;

    .line 455
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
    .line 458
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/app/ads/AdsAct$9;->this$0:Lcom/app/ads/AdsAct;

    sget-object v1, Lcom/app/ads/AdsAct$ViewType;->AD_PIC:Lcom/app/ads/AdsAct$ViewType;

    iput-object v1, v0, Lcom/app/ads/AdsAct;->mShowType:Lcom/app/ads/AdsAct$ViewType;

    .line 459
    iget-object v0, p0, Lcom/app/ads/AdsAct$9;->this$0:Lcom/app/ads/AdsAct;

    iput p3, v0, Lcom/app/ads/AdsAct;->mShowPicIndex:I

    .line 460
    iget-object v0, p0, Lcom/app/ads/AdsAct$9;->this$0:Lcom/app/ads/AdsAct;

    invoke-virtual {v0}, Lcom/app/ads/AdsAct;->switchViews()V

    .line 461
    return-void
.end method
