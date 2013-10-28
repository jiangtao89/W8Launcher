.class public Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;
.super Ljava/lang/Object;
.source "ThemeDetailView.java"

# interfaces
.implements Lcom/lx/launcher8/setting/view/SettingView;


# instance fields
.field private isLoaded:Z

.field private isOnline:Z

.field private final mAct:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

.field private mLoadTv:Landroid/widget/TextView;

.field private mMainView:Landroid/view/View;

.field private mModelTv:Landroid/widget/TextView;

.field private mShareBtn:Landroid/widget/Button;

.field private mSizeTv:Landroid/widget/TextView;

.field private mTimeTv:Landroid/widget/TextView;

.field private mVersionTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;Z)V
    .locals 5
    .parameter "act"
    .parameter "online"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    .line 25
    iput-boolean p2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->isOnline:Z

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03006d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mMainView:Landroid/view/View;

    .line 28
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mMainView:Landroid/view/View;

    const v3, 0x7f0901c9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mSizeTv:Landroid/widget/TextView;

    .line 29
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mMainView:Landroid/view/View;

    const v3, 0x7f0901ca

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mVersionTv:Landroid/widget/TextView;

    .line 30
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mMainView:Landroid/view/View;

    const v3, 0x7f0901cb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mModelTv:Landroid/widget/TextView;

    .line 31
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mMainView:Landroid/view/View;

    const v3, 0x7f0901cc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mTimeTv:Landroid/widget/TextView;

    .line 32
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mMainView:Landroid/view/View;

    const v3, 0x7f0901cd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mLoadTv:Landroid/widget/TextView;

    .line 33
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mMainView:Landroid/view/View;

    const v3, 0x7f09014d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mShareBtn:Landroid/widget/Button;

    .line 34
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mMainView:Landroid/view/View;

    const v3, 0x7f0901c7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 36
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    iget v0, v2, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mTitleColorValue:I

    .line 37
    .local v0, textColor:I
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mSizeTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mVersionTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mModelTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mTimeTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mLoadTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mShareBtn:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 43
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getSecondBgColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 44
    iget-boolean v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->isOnline:Z

    if-eqz v2, :cond_0

    .line 45
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mShareBtn:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 56
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mShareBtn:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 48
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mShareBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    invoke-virtual {v3}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getSelectorButton()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 49
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mShareBtn:Landroid/widget/Button;

    new-instance v3, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView$1;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;)Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    return-object v0
.end method


# virtual methods
.method public getBottomBtns()[Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onViewMovingFront()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 84
    iget-boolean v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->isLoaded:Z

    if-eqz v1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getBaseInfos()[Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, infos:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 87
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mSizeTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    const v3, 0x7f0a01b7

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aget-object v4, v0, v5

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mVersionTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    const v3, 0x7f0a01b8

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aget-object v4, v0, v6

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mModelTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    const v3, 0x7f0a01b9

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x2

    aget-object v4, v0, v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mTimeTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    const v3, 0x7f0a01ba

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x3

    aget-object v4, v0, v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    array-length v1, v0

    if-le v1, v7, :cond_2

    .line 92
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mShareBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    const v3, 0x7f0a01bc

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aget-object v4, v0, v7

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 93
    :cond_2
    iget-boolean v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->isOnline:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->mShareBtn:Landroid/widget/Button;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
