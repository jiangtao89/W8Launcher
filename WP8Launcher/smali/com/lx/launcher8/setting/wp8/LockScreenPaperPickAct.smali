.class public Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;
.super Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;
.source "LockScreenPaperPickAct.java"


# static fields
.field public static final EXTRAL_PAPER_TYPE:Ljava/lang/String; = "papertype"


# instance fields
.field private frontView:Landroid/view/View;

.field private mLockScreenPaperLocalView:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

.field private mLockScreenPaperOnlineView1:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;

.field private mLockScreenPaperOnlineView2:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;

.field private mLockScreenPaperTypeListView:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;

.field private mPaperType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperLocalView:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    .line 17
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperOnlineView1:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;

    .line 18
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperOnlineView2:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;

    .line 19
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperTypeListView:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;

    .line 13
    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 26
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "papertype"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mPaperType:I

    .line 27
    iget v3, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mPaperType:I

    if-ne v3, v6, :cond_0

    const v2, 0x7f0a0186

    .line 28
    .local v2, titleId:I
    :goto_0
    new-instance v3, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mPaperType:I

    invoke-direct {v3, p0, v4}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;-><init>(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;I)V

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperLocalView:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    .line 29
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperLocalView:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    invoke-virtual {v4}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 30
    new-instance v3, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mPaperType:I

    invoke-direct {v3, p0, v5, v4}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;-><init>(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;II)V

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperOnlineView1:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;

    .line 31
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperOnlineView1:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;

    invoke-virtual {v4}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 32
    new-instance v3, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mPaperType:I

    invoke-direct {v3, p0, v6, v4}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;-><init>(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;II)V

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperOnlineView2:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;

    .line 33
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperOnlineView2:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;

    invoke-virtual {v4}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 34
    new-instance v3, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mPaperType:I

    invoke-direct {v3, p0, v4}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;-><init>(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;I)V

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperTypeListView:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;

    .line 35
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperTypeListView:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;

    invoke-virtual {v4}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 37
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperLocalView:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    invoke-virtual {v3}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->getBottomBtns()[Landroid/widget/LinearLayout;

    move-result-object v0

    .line 38
    .local v0, bottomBtns:[Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v0

    if-lt v1, v3, :cond_1

    .line 41
    return-void

    .line 27
    .end local v0           #bottomBtns:[Landroid/widget/LinearLayout;
    .end local v1           #i:I
    .end local v2           #titleId:I
    :cond_0
    const v2, 0x7f0a0187

    goto :goto_0

    .line 39
    .restart local v0       #bottomBtns:[Landroid/widget/LinearLayout;
    .restart local v1       #i:I
    .restart local v2       #titleId:I
    :cond_1
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mBottomBtnLinear:Landroid/widget/LinearLayout;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, result:Z
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->frontView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 70
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->frontView:Landroid/view/View;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperLocalView:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperLocalView:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    invoke-virtual {v1, p1, p2, p3}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    .line 82
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 83
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->onActivityResult(IILandroid/content/Intent;)V

    .line 84
    :cond_1
    return-void

    .line 72
    :cond_2
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->frontView:Landroid/view/View;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperOnlineView1:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 73
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperOnlineView1:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;

    invoke-virtual {v1, p1, p2, p3}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    goto :goto_0

    .line 74
    :cond_3
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->frontView:Landroid/view/View;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperOnlineView2:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 75
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperOnlineView2:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;

    invoke-virtual {v1, p1, p2, p3}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    goto :goto_0

    .line 76
    :cond_4
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->frontView:Landroid/view/View;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperTypeListView:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperTypeListView:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;

    invoke-virtual {v1, p1, p2, p3}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    goto :goto_0

    .line 80
    :cond_5
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperLocalView:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    invoke-virtual {v1, p1, p2, p3}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->onDestroy()V

    .line 55
    new-instance v0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct$1;-><init>(Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;)V

    .line 62
    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct$1;->start()V

    .line 64
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->onResume()V

    .line 46
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperLocalView:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->onResume()V

    .line 47
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperOnlineView1:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->onResume()V

    .line 48
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperOnlineView2:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->onResume()V

    .line 49
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperTypeListView:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->onResume()V

    .line 50
    return-void
.end method

.method protected onViewInFront(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->frontView:Landroid/view/View;

    .line 89
    return-void
.end method

.method protected onViewMovingFront(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperLocalView:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperLocalView:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->getBottomBtns()[Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->addBottomBtn([Landroid/widget/LinearLayout;)V

    .line 107
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperOnlineView1:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperOnlineView1:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->getBottomBtns()[Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->addBottomBtn([Landroid/widget/LinearLayout;)V

    .line 97
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperOnlineView1:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->onViewMovingFront()V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperOnlineView2:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperOnlineView2:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->getBottomBtns()[Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->addBottomBtn([Landroid/widget/LinearLayout;)V

    .line 100
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperOnlineView2:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->onViewMovingFront()V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperTypeListView:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperTypeListView:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->getBottomBtns()[Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->addBottomBtn([Landroid/widget/LinearLayout;)V

    .line 103
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->mLockScreenPaperTypeListView:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->onViewMovingFront()V

    goto :goto_0

    .line 105
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;->addBottomBtn([Landroid/widget/LinearLayout;)V

    goto :goto_0
.end method
