.class public Lcom/app/common/view/ItemHintView;
.super Landroid/widget/LinearLayout;
.source "ItemHintView.java"


# instance fields
.field public mIcon:Landroid/widget/ImageView;

.field public mIconB:Landroid/widget/ImageView;

.field public mInfo:Landroid/widget/TextView;

.field public mInfoB:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/app/common/view/ItemHintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-virtual {p0}, Lcom/app/common/view/ItemHintView;->initView()V

    .line 34
    return-void
.end method

.method public static transForm(Landroid/content/Context;Landroid/view/View;)Lcom/app/common/view/ItemHintView;
    .locals 0
    .parameter "context"
    .parameter "view"

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 114
    new-instance p1, Lcom/app/common/view/ItemHintView;

    .end local p1
    invoke-direct {p1, p0}, Lcom/app/common/view/ItemHintView;-><init>(Landroid/content/Context;)V

    .line 116
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    check-cast p1, Lcom/app/common/view/ItemHintView;

    goto :goto_0
.end method


# virtual methods
.method protected initView()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const v7, -0xb1a98e

    const/high16 v6, 0x4170

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 36
    invoke-virtual {p0}, Lcom/app/common/view/ItemHintView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    .local v0, context:Landroid/content/Context;
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/app/common/view/ItemHintView;->setGravity(I)V

    .line 38
    invoke-static {v0, v6}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v2

    float-to-int v1, v2

    .line 39
    .local v1, tmp:I
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/app/common/view/ItemHintView;->setPadding(IIII)V

    .line 40
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/app/common/view/ItemHintView;->mIcon:Landroid/widget/ImageView;

    .line 41
    iget-object v2, p0, Lcom/app/common/view/ItemHintView;->mIcon:Landroid/widget/ImageView;

    invoke-static {v4, v4}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iget-object v2, p0, Lcom/app/common/view/ItemHintView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/app/common/view/ItemHintView;->addView(Landroid/view/View;)V

    .line 44
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/app/common/view/ItemHintView;->mInfo:Landroid/widget/TextView;

    .line 45
    iget-object v2, p0, Lcom/app/common/view/ItemHintView;->mInfo:Landroid/widget/TextView;

    const/high16 v3, 0x3f80

    invoke-static {v4, v4, v3}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    iget-object v2, p0, Lcom/app/common/view/ItemHintView;->mInfo:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 47
    iget-object v2, p0, Lcom/app/common/view/ItemHintView;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    iget-object v2, p0, Lcom/app/common/view/ItemHintView;->mInfo:Landroid/widget/TextView;

    const/high16 v3, 0x4180

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 49
    iget-object v2, p0, Lcom/app/common/view/ItemHintView;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 50
    iget-object v2, p0, Lcom/app/common/view/ItemHintView;->mInfo:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 51
    iget-object v2, p0, Lcom/app/common/view/ItemHintView;->mInfo:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/app/common/view/ItemHintView;->addView(Landroid/view/View;)V

    .line 53
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/app/common/view/ItemHintView;->mInfoB:Landroid/widget/TextView;

    .line 54
    iget-object v2, p0, Lcom/app/common/view/ItemHintView;->mInfoB:Landroid/widget/TextView;

    invoke-static {v4, v4}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object v2, p0, Lcom/app/common/view/ItemHintView;->mInfoB:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/app/common/view/ItemHintView;->mInfoB:Landroid/widget/TextView;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    iget-object v2, p0, Lcom/app/common/view/ItemHintView;->mInfoB:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 57
    iget-object v2, p0, Lcom/app/common/view/ItemHintView;->mInfoB:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/app/common/view/ItemHintView;->addView(Landroid/view/View;)V

    .line 58
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/app/common/view/ItemHintView;->mIconB:Landroid/widget/ImageView;

    .line 59
    iget-object v2, p0, Lcom/app/common/view/ItemHintView;->mIconB:Landroid/widget/ImageView;

    invoke-static {v4, v4}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object v2, p0, Lcom/app/common/view/ItemHintView;->mIconB:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/app/common/view/ItemHintView;->addView(Landroid/view/View;)V

    .line 62
    iget-object v2, p0, Lcom/app/common/view/ItemHintView;->mInfo:Landroid/widget/TextView;

    const v3, -0x777778

    invoke-static {v5, v5, v5, v7, v3}, Lcom/app/common/utils/ViewHelper;->getColor(IIIII)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 63
    iget-object v2, p0, Lcom/app/common/view/ItemHintView;->mInfoB:Landroid/widget/TextView;

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 65
    const/16 v2, 0xc

    const/4 v3, 0x7

    invoke-virtual {p0, v8, v2, v8, v3}, Lcom/app/common/view/ItemHintView;->setPadding(IIII)V

    .line 66
    return-void
.end method

.method public initView(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "bg"
    .parameter "iconLeft"
    .parameter "infoCenter"
    .parameter "infoRight"
    .parameter "iconRight"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 79
    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p0, p1}, Lcom/app/common/view/ItemHintView;->setBackgroundResource(I)V

    .line 83
    :cond_0
    if-nez p2, :cond_1

    .line 84
    iget-object v0, p0, Lcom/app/common/view/ItemHintView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    :goto_0
    iget-object v0, p0, Lcom/app/common/view/ItemHintView;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    if-nez p4, :cond_2

    .line 93
    iget-object v0, p0, Lcom/app/common/view/ItemHintView;->mInfoB:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    :goto_1
    if-nez p5, :cond_3

    .line 100
    iget-object v0, p0, Lcom/app/common/view/ItemHintView;->mIconB:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    :goto_2
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/app/common/view/ItemHintView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/app/common/view/ItemHintView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/app/common/view/ItemHintView;->mInfoB:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/app/common/view/ItemHintView;->mInfoB:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/app/common/view/ItemHintView;->mIconB:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/app/common/view/ItemHintView;->mIconB:Landroid/widget/ImageView;

    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method public initView(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "iconLeft"
    .parameter "infoCenter"
    .parameter "infoRight"
    .parameter "iconRight"

    .prologue
    .line 75
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/app/common/view/ItemHintView;->initView(IILjava/lang/String;Ljava/lang/String;I)V

    .line 76
    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0
    .parameter "minHeight"

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/app/common/view/ItemHintView;->setMinimumHeight(I)V

    .line 110
    return-void
.end method
