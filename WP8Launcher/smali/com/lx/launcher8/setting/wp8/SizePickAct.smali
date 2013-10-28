.class public Lcom/lx/launcher8/setting/wp8/SizePickAct;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.source "SizePickAct.java"


# instance fields
.field private mClick:Landroid/view/View$OnClickListener;

.field private mMainView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SizePickAct;->mMainView:Landroid/view/View;

    .line 48
    new-instance v0, Lcom/lx/launcher8/setting/wp8/SizePickAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/SizePickAct$1;-><init>(Lcom/lx/launcher8/setting/wp8/SizePickAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SizePickAct;->mClick:Landroid/view/View$OnClickListener;

    .line 15
    return-void
.end method

.method private createView()V
    .locals 6

    .prologue
    .line 29
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03001a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/SizePickAct;->mMainView:Landroid/view/View;

    .line 30
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SizePickAct;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "extral_info"

    const v5, 0x10001

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 31
    .local v0, def:I
    shr-int/lit8 v3, v0, 0x10

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x4

    const v4, 0xffff

    and-int/2addr v4, v0

    add-int/2addr v3, v4

    add-int/lit8 v1, v3, -0x1

    .line 32
    .local v1, index:I
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SizePickAct;->mMainView:Landroid/view/View;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cell"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-static {p0, v4, v5}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/setting/view/SizeLayout;

    .line 33
    .local v2, sl:Lcom/lx/launcher8/setting/view/SizeLayout;
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/view/SizeLayout;->setSelected(Z)V

    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SizePickAct;->initCell()V

    .line 35
    return-void
.end method

.method private initCell()V
    .locals 7

    .prologue
    .line 38
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v4, 0x10

    if-lt v1, v4, :cond_0

    .line 46
    return-void

    .line 39
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SizePickAct;->mMainView:Landroid/view/View;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cell"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "id"

    invoke-static {p0, v5, v6}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/setting/view/SizeLayout;

    .line 40
    .local v2, sl:Lcom/lx/launcher8/setting/view/SizeLayout;
    div-int/lit8 v4, v1, 0x4

    add-int/lit8 v3, v4, 0x1

    .line 41
    .local v3, w:I
    rem-int/lit8 v4, v1, 0x4

    add-int/lit8 v0, v4, 0x1

    .line 42
    .local v0, h:I
    invoke-virtual {v2, v3, v0}, Lcom/lx/launcher8/setting/view/SizeLayout;->setSize(II)V

    .line 43
    invoke-virtual {v2}, Lcom/lx/launcher8/setting/view/SizeLayout;->getSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lx/launcher8/setting/view/SizeLayout;->setTag(Ljava/lang/Object;)V

    .line 44
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SizePickAct;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Lcom/lx/launcher8/setting/view/SizeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected initData()V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SizePickAct;->mTitleBar:Landroid/widget/TextView;

    const v1, 0x7f0a0050

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/SizePickAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SizePickAct;->createView()V

    .line 25
    const v0, 0x7f0a0079

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/SizePickAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SizePickAct;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/wp8/SizePickAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 26
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 61
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/SizePickAct;->setResult(I)V

    .line 64
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
