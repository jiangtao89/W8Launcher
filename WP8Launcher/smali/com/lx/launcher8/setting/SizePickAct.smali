.class public Lcom/lx/launcher8/setting/SizePickAct;
.super Lcom/lx/launcher8/NoSearchAct;
.source "SizePickAct.java"


# instance fields
.field private mClick:Landroid/view/View$OnClickListener;

.field private mFirstTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;-><init>()V

    .line 54
    new-instance v0, Lcom/lx/launcher8/setting/SizePickAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/SizePickAct$1;-><init>(Lcom/lx/launcher8/setting/SizePickAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/SizePickAct;->mClick:Landroid/view/View$OnClickListener;

    .line 16
    return-void
.end method

.method private initCell()V
    .locals 6

    .prologue
    .line 44
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v4, 0x10

    if-lt v1, v4, :cond_0

    .line 52
    return-void

    .line 45
    :cond_0
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

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/SizePickAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/setting/view/SizeLayout;

    .line 46
    .local v2, sl:Lcom/lx/launcher8/setting/view/SizeLayout;
    div-int/lit8 v4, v1, 0x4

    add-int/lit8 v3, v4, 0x1

    .line 47
    .local v3, w:I
    rem-int/lit8 v4, v1, 0x4

    add-int/lit8 v0, v4, 0x1

    .line 48
    .local v0, h:I
    invoke-virtual {v2, v3, v0}, Lcom/lx/launcher8/setting/view/SizeLayout;->setSize(II)V

    .line 49
    invoke-virtual {v2}, Lcom/lx/launcher8/setting/view/SizeLayout;->getSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lx/launcher8/setting/view/SizeLayout;->setTag(Ljava/lang/Object;)V

    .line 50
    iget-object v4, p0, Lcom/lx/launcher8/setting/SizePickAct;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Lcom/lx/launcher8/setting/view/SizeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v3, 0x7f030019

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/SizePickAct;->setContentView(I)V

    .line 27
    const v3, 0x7f090006

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/SizePickAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lx/launcher8/setting/SizePickAct;->mFirstTitle:Landroid/widget/TextView;

    .line 28
    iget-object v3, p0, Lcom/lx/launcher8/setting/SizePickAct;->mFirstTitle:Landroid/widget/TextView;

    new-instance v4, Lcom/lx/launcher8/setting/SizePickAct$2;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/setting/SizePickAct$2;-><init>(Lcom/lx/launcher8/setting/SizePickAct;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SizePickAct;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "extral_info"

    const v5, 0x10001

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 37
    .local v0, def:I
    shr-int/lit8 v3, v0, 0x10

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x4

    const v4, 0xffff

    and-int/2addr v4, v0

    add-int/2addr v3, v4

    add-int/lit8 v1, v3, -0x1

    .line 38
    .local v1, index:I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cell"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-static {p0, v3, v4}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/SizePickAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/setting/view/SizeLayout;

    .line 39
    .local v2, sl:Lcom/lx/launcher8/setting/view/SizeLayout;
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/view/SizeLayout;->setSelected(Z)V

    .line 40
    :cond_0
    invoke-direct {p0}, Lcom/lx/launcher8/setting/SizePickAct;->initCell()V

    .line 41
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 67
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/SizePickAct;->setResult(I)V

    .line 70
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/NoSearchAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
