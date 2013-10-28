.class public Lcom/lx/launcher8/setting/view/SizeLayout;
.super Landroid/widget/LinearLayout;
.source "SizeLayout.java"


# instance fields
.field private mSizeView:Lcom/lx/launcher8/setting/view/CellSizeView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lx/launcher8/setting/view/SizeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0}, Lcom/lx/launcher8/setting/view/SizeLayout;->init()V

    .line 24
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 27
    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/view/SizeLayout;->setOrientation(I)V

    .line 28
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/SizeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 29
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/lx/launcher8/setting/view/CellSizeView;

    invoke-direct {v1, v0}, Lcom/lx/launcher8/setting/view/CellSizeView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/view/SizeLayout;->mSizeView:Lcom/lx/launcher8/setting/view/CellSizeView;

    .line 30
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SizeLayout;->mSizeView:Lcom/lx/launcher8/setting/view/CellSizeView;

    const v2, 0x7f02004c

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/setting/view/CellSizeView;->setBackgroundResource(I)V

    .line 31
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SizeLayout;->mSizeView:Lcom/lx/launcher8/setting/view/CellSizeView;

    invoke-static {v4, v3}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/lx/launcher8/setting/view/SizeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/view/SizeLayout;->mTextView:Landroid/widget/TextView;

    .line 33
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SizeLayout;->mTextView:Landroid/widget/TextView;

    const/high16 v2, 0x4150

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 34
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SizeLayout;->mTextView:Landroid/widget/TextView;

    const v2, -0x878788

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SizeLayout;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 36
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SizeLayout;->mTextView:Landroid/widget/TextView;

    invoke-static {v4, v3}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/lx/launcher8/setting/view/SizeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SizeLayout;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SizeLayout;->mSizeView:Lcom/lx/launcher8/setting/view/CellSizeView;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/view/CellSizeView;->getSizeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/SizeLayout;->mSizeView:Lcom/lx/launcher8/setting/view/CellSizeView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/CellSizeView;->getSize()I

    move-result v0

    return v0
.end method

.method public setCellColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/SizeLayout;->mSizeView:Lcom/lx/launcher8/setting/view/CellSizeView;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/setting/view/CellSizeView;->setDrawColor(I)V

    .line 55
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .parameter "selected"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/SizeLayout;->mSizeView:Lcom/lx/launcher8/setting/view/CellSizeView;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/setting/view/CellSizeView;->setSelected(Z)V

    .line 59
    return-void
.end method

.method public setSize(II)V
    .locals 2
    .parameter "w"
    .parameter "h"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/SizeLayout;->mSizeView:Lcom/lx/launcher8/setting/view/CellSizeView;

    invoke-virtual {v0, p1, p2}, Lcom/lx/launcher8/setting/view/CellSizeView;->setSize(II)V

    .line 42
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/SizeLayout;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SizeLayout;->mSizeView:Lcom/lx/launcher8/setting/view/CellSizeView;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/view/CellSizeView;->getSizeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/SizeLayout;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    return-void
.end method

.method public setTextSize(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/SizeLayout;->mTextView:Landroid/widget/TextView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 47
    return-void
.end method
