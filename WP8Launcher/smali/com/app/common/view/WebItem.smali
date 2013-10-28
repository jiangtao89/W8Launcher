.class public Lcom/app/common/view/WebItem;
.super Landroid/widget/LinearLayout;
.source "WebItem.java"


# instance fields
.field public mContentTv:Landroid/widget/TextView;

.field public mCopyB:Landroid/widget/Button;

.field public mDownloadB:Landroid/widget/Button;

.field public mTitleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {p0}, Lcom/app/common/view/WebItem;->initView()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-virtual {p0}, Lcom/app/common/view/WebItem;->initView()V

    .line 26
    return-void
.end method


# virtual methods
.method public initView()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/high16 v9, -0x100

    const/high16 v8, 0x4040

    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 29
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/app/common/view/WebItem;->setOrientation(I)V

    .line 30
    invoke-virtual {p0}, Lcom/app/common/view/WebItem;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 31
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    .local v1, ll:Landroid/widget/LinearLayout;
    invoke-static {v10, v6}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/app/common/view/WebItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/app/common/view/WebItem;->mTitleTv:Landroid/widget/TextView;

    .line 34
    iget-object v4, p0, Lcom/app/common/view/WebItem;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    iget-object v4, p0, Lcom/app/common/view/WebItem;->mTitleTv:Landroid/widget/TextView;

    invoke-static {v6, v6}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/app/common/view/WebItem;->mCopyB:Landroid/widget/Button;

    .line 37
    iget-object v4, p0, Lcom/app/common/view/WebItem;->mCopyB:Landroid/widget/Button;

    const-string v5, "\u590d\u5236"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-static {v6, v6}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 39
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v0, v8}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v4

    float-to-int v3, v4

    .line 40
    .local v3, margin:I
    invoke-virtual {v2, v3, v7, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 41
    iget-object v4, p0, Lcom/app/common/view/WebItem;->mCopyB:Landroid/widget/Button;

    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/app/common/view/WebItem;->mDownloadB:Landroid/widget/Button;

    .line 43
    iget-object v4, p0, Lcom/app/common/view/WebItem;->mDownloadB:Landroid/widget/Button;

    const-string v5, "\u4e0b\u8f7d"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-static {v6, v6}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 45
    invoke-static {v0, v8}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v4

    float-to-int v3, v4

    .line 46
    invoke-virtual {v2, v3, v7, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 47
    iget-object v4, p0, Lcom/app/common/view/WebItem;->mDownloadB:Landroid/widget/Button;

    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/app/common/view/WebItem;->mContentTv:Landroid/widget/TextView;

    .line 50
    iget-object v4, p0, Lcom/app/common/view/WebItem;->mContentTv:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    iget-object v4, p0, Lcom/app/common/view/WebItem;->mContentTv:Landroid/widget/TextView;

    invoke-static {v10, v6}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/app/common/view/WebItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v4, p0, Lcom/app/common/view/WebItem;->mDownloadB:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 54
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "title"
    .parameter "content"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/app/common/view/WebItem;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/app/common/view/WebItem;->mContentTv:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method
