.class public Lcom/lx/launcher8/policy/TextNumPolicy;
.super Ljava/lang/Object;
.source "TextNumPolicy.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconMargin:I

.field private mIsLargeScreen:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/lx/launcher8/policy/TextNumPolicy;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public getNumTextSize(II)F
    .locals 3
    .parameter "len"
    .parameter "spanX"

    .prologue
    const/4 v2, 0x1

    const/high16 v0, 0x41f0

    const/high16 v1, 0x41c0

    .line 114
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 117
    :pswitch_0
    if-le p2, v2, :cond_0

    const/high16 v0, 0x4270

    goto :goto_0

    .line 119
    :pswitch_1
    if-gt p2, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onChangeMargins(ZZ)V
    .locals 3
    .parameter "isLargeSize"
    .parameter "isLargeScreen"

    .prologue
    .line 28
    iput-boolean p2, p0, Lcom/lx/launcher8/policy/TextNumPolicy;->mIsLargeScreen:Z

    .line 29
    if-eqz p1, :cond_0

    const/16 v0, 0x1c

    .line 30
    .local v0, value:I
    :goto_0
    iget-object v1, p0, Lcom/lx/launcher8/policy/TextNumPolicy;->mContext:Landroid/content/Context;

    int-to-float v2, v0

    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/policy/TextNumPolicy;->mIconMargin:I

    .line 31
    return-void

    .line 29
    .end local v0           #value:I
    :cond_0
    const/16 v0, 0xf

    goto :goto_0
.end method

.method public setTitleChangeStyle(Landroid/widget/ImageView;IIZ)V
    .locals 7
    .parameter "iconIv"
    .parameter "gravity"
    .parameter "spanY"
    .parameter "isTitleShow"

    .prologue
    .line 101
    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const/4 v4, 0x0

    .line 103
    .local v4, offset:I
    const/4 v5, 0x1

    if-ne p3, v5, :cond_2

    if-eqz p4, :cond_2

    iget-boolean v5, p0, Lcom/lx/launcher8/policy/TextNumPolicy;->mIsLargeScreen:Z

    if-eqz v5, :cond_2

    .line 104
    iget-object v5, p0, Lcom/lx/launcher8/policy/TextNumPolicy;->mContext:Landroid/content/Context;

    const/high16 v6, 0x40a0

    invoke-static {v5, v6}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 106
    :cond_2
    iget v5, p0, Lcom/lx/launcher8/policy/TextNumPolicy;->mIconMargin:I

    sub-int v3, v5, v4

    .line 107
    .local v3, marginTop:I
    iget v5, p0, Lcom/lx/launcher8/policy/TextNumPolicy;->mIconMargin:I

    add-int v0, v5, v4

    .line 108
    .local v0, marginBottom:I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    .line 109
    .local v1, marginLeft:I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    .line 110
    .local v2, marginRight:I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setUIMargins(Landroid/widget/TextView;Landroid/widget/ImageView;IIIIZ)V
    .locals 8
    .parameter "numTv"
    .parameter "iconIv"
    .parameter "numLen"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "imgGravity"
    .parameter "isTitleShow"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 44
    if-gez p3, :cond_2

    if-eqz p1, :cond_2

    .line 45
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result p3

    .line 47
    :goto_0
    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p0, p3, p5}, Lcom/lx/launcher8/policy/TextNumPolicy;->getNumTextSize(II)F

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 49
    const/16 v5, 0x15

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 52
    :cond_0
    if-eqz p6, :cond_3

    .line 91
    :cond_1
    :goto_1
    return-void

    .line 46
    :cond_2
    const/4 p3, 0x0

    goto :goto_0

    .line 53
    :cond_3
    const/16 v4, 0x8

    .line 54
    .local v4, paddingRight:I
    iget v2, p0, Lcom/lx/launcher8/policy/TextNumPolicy;->mIconMargin:I

    .line 55
    .local v2, marginRight:I
    iget v1, p0, Lcom/lx/launcher8/policy/TextNumPolicy;->mIconMargin:I

    .line 56
    .local v1, marginLeft:I
    packed-switch p3, :pswitch_data_0

    .line 79
    const/16 v4, 0xf

    .line 80
    const/16 v2, 0x32

    .line 83
    :goto_2
    :pswitch_0
    if-eqz p2, :cond_1

    if-nez p6, :cond_1

    .line 84
    if-eqz p1, :cond_4

    .line 85
    invoke-virtual {p1, v6, v6, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 86
    :cond_4
    invoke-virtual {p0, p2, p6, p5, p7}, Lcom/lx/launcher8/policy/TextNumPolicy;->setTitleChangeStyle(Landroid/widget/ImageView;IIZ)V

    .line 87
    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v3

    .line 88
    .local v3, marginTop:I
    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v0

    .line 89
    .local v0, marginBottom:I
    invoke-virtual {p2, v1, v3, v2, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_1

    .line 60
    .end local v0           #marginBottom:I
    .end local v3           #marginTop:I
    :pswitch_1
    if-ge p4, v7, :cond_5

    .line 61
    const/16 v1, 0x14

    .line 62
    const/16 v2, 0x28

    .line 63
    const/16 v4, 0x14

    goto :goto_2

    .line 65
    :cond_5
    const/16 v4, 0x14

    .line 66
    const/16 v2, 0x14

    .line 68
    goto :goto_2

    .line 70
    :pswitch_2
    if-ge p4, v7, :cond_6

    .line 71
    const/16 v1, 0x14

    .line 72
    const/16 v2, 0x28

    goto :goto_2

    .line 74
    :cond_6
    const/16 v4, 0x14

    .line 75
    const/16 v2, 0x1e

    .line 77
    goto :goto_2

    .line 56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
