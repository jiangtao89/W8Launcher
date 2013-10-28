.class public Lcom/app/common/view/LoadMoreFooter;
.super Landroid/widget/LinearLayout;
.source "LoadMoreFooter.java"


# instance fields
.field private final TEXT_LOADING:Ljava/lang/String;

.field private final TEXT_SHOW:Ljava/lang/String;

.field public mProgressBar:Landroid/widget/ProgressBar;

.field public mTextViewload:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 17
    const-string v0, "\u67e5\u770b\u66f4\u591a"

    iput-object v0, p0, Lcom/app/common/view/LoadMoreFooter;->TEXT_SHOW:Ljava/lang/String;

    .line 18
    const-string v0, "\u6b63\u5728\u52a0\u8f7d"

    iput-object v0, p0, Lcom/app/common/view/LoadMoreFooter;->TEXT_LOADING:Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Lcom/app/common/view/LoadMoreFooter;->initView()V

    .line 23
    return-void
.end method

.method private initView()V
    .locals 9

    .prologue
    const/16 v8, 0x11

    const/4 v3, -0x2

    const/4 v7, 0x0

    .line 26
    invoke-virtual {p0, v8}, Lcom/app/common/view/LoadMoreFooter;->setGravity(I)V

    .line 28
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 31
    .local v2, params:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/app/common/view/LoadMoreFooter;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x1010288

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Lcom/app/common/view/LoadMoreFooter;->mProgressBar:Landroid/widget/ProgressBar;

    .line 32
    iget-object v3, p0, Lcom/app/common/view/LoadMoreFooter;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    iget-object v3, p0, Lcom/app/common/view/LoadMoreFooter;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 34
    iget-object v3, p0, Lcom/app/common/view/LoadMoreFooter;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v4, 0x4

    invoke-virtual {v3, v7, v7, v4, v7}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    .line 36
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/app/common/view/LoadMoreFooter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/app/common/view/LoadMoreFooter;->mTextViewload:Landroid/widget/TextView;

    .line 37
    iget-object v3, p0, Lcom/app/common/view/LoadMoreFooter;->mTextViewload:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    iget-object v3, p0, Lcom/app/common/view/LoadMoreFooter;->mTextViewload:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 39
    iget-object v3, p0, Lcom/app/common/view/LoadMoreFooter;->mTextViewload:Landroid/widget/TextView;

    const v4, -0xebb7a0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    iget-object v3, p0, Lcom/app/common/view/LoadMoreFooter;->mTextViewload:Landroid/widget/TextView;

    const-string v4, "\u67e5\u770b\u66f4\u591a"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v3, p0, Lcom/app/common/view/LoadMoreFooter;->mTextViewload:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/app/common/view/LoadMoreFooter;->mTextViewload:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 42
    iget-object v3, p0, Lcom/app/common/view/LoadMoreFooter;->mTextViewload:Landroid/widget/TextView;

    const/high16 v4, 0x4170

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 44
    invoke-virtual {p0}, Lcom/app/common/view/LoadMoreFooter;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/app/common/config/Resources;->list_item_selecte:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 45
    .local v1, fouce:I
    invoke-virtual {p0}, Lcom/app/common/view/LoadMoreFooter;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/app/common/config/Resources;->list_item_default:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 46
    .local v0, def:I
    invoke-virtual {p0}, Lcom/app/common/view/LoadMoreFooter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lcom/app/common/utils/ViewHelper;->getDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/app/common/view/LoadMoreFooter;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    iget-object v3, p0, Lcom/app/common/view/LoadMoreFooter;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v3}, Lcom/app/common/view/LoadMoreFooter;->addView(Landroid/view/View;)V

    .line 48
    iget-object v3, p0, Lcom/app/common/view/LoadMoreFooter;->mTextViewload:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/app/common/view/LoadMoreFooter;->addView(Landroid/view/View;)V

    .line 49
    invoke-virtual {p0}, Lcom/app/common/view/LoadMoreFooter;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x4282

    invoke-static {v3, v4}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v3}, Lcom/app/common/view/LoadMoreFooter;->setMinimumHeight(I)V

    .line 50
    return-void
.end method


# virtual methods
.method public hideRotateIcon()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/app/common/view/LoadMoreFooter;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 60
    iget-object v1, p0, Lcom/app/common/view/LoadMoreFooter;->mTextViewload:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/app/common/view/LoadMoreFooter;->mTextViewload:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/app/common/view/LoadMoreFooter;->setEnabled(Z)V

    .line 62
    return-void
.end method

.method public setFooterViewVisible(Z)V
    .locals 1
    .parameter "isShow"

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/app/common/view/LoadMoreFooter;->setVisibility(I)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/app/common/view/LoadMoreFooter;->setVisibility(I)V

    goto :goto_0
.end method

.method public showRotateIcon()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    iget-object v0, p0, Lcom/app/common/view/LoadMoreFooter;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/app/common/view/LoadMoreFooter;->mTextViewload:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p0, v2}, Lcom/app/common/view/LoadMoreFooter;->setEnabled(Z)V

    .line 56
    return-void
.end method
