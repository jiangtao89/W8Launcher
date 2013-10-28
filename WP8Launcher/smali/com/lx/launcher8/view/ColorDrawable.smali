.class public Lcom/lx/launcher8/view/ColorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ColorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/view/ColorDrawable$ColorState;
    }
.end annotation


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private mState:Lcom/lx/launcher8/view/ColorDrawable$ColorState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lx/launcher8/view/ColorDrawable;-><init>(Lcom/lx/launcher8/view/ColorDrawable$ColorState;)V

    .line 48
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lx/launcher8/view/ColorDrawable;-><init>(Lcom/lx/launcher8/view/ColorDrawable$ColorState;)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/lx/launcher8/view/ColorDrawable;->setColor(I)V

    .line 58
    return-void
.end method

.method private constructor <init>(Lcom/lx/launcher8/view/ColorDrawable$ColorState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/view/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Lcom/lx/launcher8/view/ColorDrawable$ColorState;

    invoke-direct {v0, p1}, Lcom/lx/launcher8/view/ColorDrawable$ColorState;-><init>(Lcom/lx/launcher8/view/ColorDrawable$ColorState;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/ColorDrawable;->mState:Lcom/lx/launcher8/view/ColorDrawable$ColorState;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Lcom/lx/launcher8/view/ColorDrawable$ColorState;Lcom/lx/launcher8/view/ColorDrawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/lx/launcher8/view/ColorDrawable;-><init>(Lcom/lx/launcher8/view/ColorDrawable$ColorState;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lx/launcher8/view/ColorDrawable;->mState:Lcom/lx/launcher8/view/ColorDrawable$ColorState;

    iget v0, v0, Lcom/lx/launcher8/view/ColorDrawable$ColorState;->mUseColor:I

    ushr-int/lit8 v0, v0, 0x18

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/lx/launcher8/view/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/lx/launcher8/view/ColorDrawable;->mState:Lcom/lx/launcher8/view/ColorDrawable$ColorState;

    iget v1, v1, Lcom/lx/launcher8/view/ColorDrawable$ColorState;->mUseColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/view/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 75
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lx/launcher8/view/ColorDrawable;->mState:Lcom/lx/launcher8/view/ColorDrawable$ColorState;

    iget v0, v0, Lcom/lx/launcher8/view/ColorDrawable$ColorState;->mUseColor:I

    ushr-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/lx/launcher8/view/ColorDrawable;->mState:Lcom/lx/launcher8/view/ColorDrawable$ColorState;

    iget v1, v1, Lcom/lx/launcher8/view/ColorDrawable$ColorState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lx/launcher8/view/ColorDrawable;->mState:Lcom/lx/launcher8/view/ColorDrawable$ColorState;

    iget v0, v0, Lcom/lx/launcher8/view/ColorDrawable$ColorState;->mUseColor:I

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/lx/launcher8/view/ColorDrawable;->mState:Lcom/lx/launcher8/view/ColorDrawable$ColorState;

    invoke-virtual {p0}, Lcom/lx/launcher8/view/ColorDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/lx/launcher8/view/ColorDrawable$ColorState;->mChangingConfigurations:I

    .line 155
    iget-object v0, p0, Lcom/lx/launcher8/view/ColorDrawable;->mState:Lcom/lx/launcher8/view/ColorDrawable$ColorState;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lx/launcher8/view/ColorDrawable;->mState:Lcom/lx/launcher8/view/ColorDrawable$ColorState;

    iget v0, v0, Lcom/lx/launcher8/view/ColorDrawable$ColorState;->mUseColor:I

    ushr-int/lit8 v0, v0, 0x18

    sparse-switch v0, :sswitch_data_0

    .line 143
    const/4 v0, -0x3

    :goto_0
    return v0

    .line 139
    :sswitch_0
    const/4 v0, -0x1

    goto :goto_0

    .line 141
    :sswitch_1
    const/4 v0, -0x2

    goto :goto_0

    .line 137
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 150
    return-void
.end method

.method public setAlpha(I)V
    .locals 6
    .parameter "alpha"

    .prologue
    .line 118
    shr-int/lit8 v3, p1, 0x7

    add-int/2addr p1, v3

    .line 119
    iget-object v3, p0, Lcom/lx/launcher8/view/ColorDrawable;->mState:Lcom/lx/launcher8/view/ColorDrawable$ColorState;

    iget v3, v3, Lcom/lx/launcher8/view/ColorDrawable$ColorState;->mBaseColor:I

    ushr-int/lit8 v0, v3, 0x18

    .line 120
    .local v0, baseAlpha:I
    mul-int v3, v0, p1

    shr-int/lit8 v2, v3, 0x8

    .line 121
    .local v2, useAlpha:I
    iget-object v3, p0, Lcom/lx/launcher8/view/ColorDrawable;->mState:Lcom/lx/launcher8/view/ColorDrawable$ColorState;

    iget v1, v3, Lcom/lx/launcher8/view/ColorDrawable$ColorState;->mUseColor:I

    .line 122
    .local v1, oldUseColor:I
    iget-object v3, p0, Lcom/lx/launcher8/view/ColorDrawable;->mState:Lcom/lx/launcher8/view/ColorDrawable$ColorState;

    iget-object v4, p0, Lcom/lx/launcher8/view/ColorDrawable;->mState:Lcom/lx/launcher8/view/ColorDrawable$ColorState;

    iget v4, v4, Lcom/lx/launcher8/view/ColorDrawable$ColorState;->mBaseColor:I

    shl-int/lit8 v4, v4, 0x8

    ushr-int/lit8 v4, v4, 0x8

    shl-int/lit8 v5, v2, 0x18

    or-int/2addr v4, v5

    iput v4, v3, Lcom/lx/launcher8/view/ColorDrawable$ColorState;->mUseColor:I

    .line 123
    iget-object v3, p0, Lcom/lx/launcher8/view/ColorDrawable;->mState:Lcom/lx/launcher8/view/ColorDrawable$ColorState;

    iget v3, v3, Lcom/lx/launcher8/view/ColorDrawable$ColorState;->mUseColor:I

    if-eq v1, v3, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ColorDrawable;->invalidateSelf()V

    .line 126
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lx/launcher8/view/ColorDrawable;->mState:Lcom/lx/launcher8/view/ColorDrawable$ColorState;

    iget v0, v0, Lcom/lx/launcher8/view/ColorDrawable$ColorState;->mBaseColor:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/view/ColorDrawable;->mState:Lcom/lx/launcher8/view/ColorDrawable$ColorState;

    iget v0, v0, Lcom/lx/launcher8/view/ColorDrawable$ColorState;->mUseColor:I

    if-eq v0, p1, :cond_1

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ColorDrawable;->invalidateSelf()V

    .line 99
    iget-object v0, p0, Lcom/lx/launcher8/view/ColorDrawable;->mState:Lcom/lx/launcher8/view/ColorDrawable$ColorState;

    iget-object v1, p0, Lcom/lx/launcher8/view/ColorDrawable;->mState:Lcom/lx/launcher8/view/ColorDrawable$ColorState;

    iput p1, v1, Lcom/lx/launcher8/view/ColorDrawable$ColorState;->mUseColor:I

    iput p1, v0, Lcom/lx/launcher8/view/ColorDrawable$ColorState;->mBaseColor:I

    .line 101
    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "colorFilter"

    .prologue
    .line 134
    return-void
.end method
