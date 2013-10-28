.class final Lcom/lx/launcher8/view/ColorDrawable$ColorState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "ColorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/view/ColorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ColorState"
.end annotation


# instance fields
.field mBaseColor:I

.field mChangingConfigurations:I

.field mUseColor:I


# direct methods
.method constructor <init>(Lcom/lx/launcher8/view/ColorDrawable$ColorState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 163
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 164
    if-eqz p1, :cond_0

    .line 165
    iget v0, p1, Lcom/lx/launcher8/view/ColorDrawable$ColorState;->mBaseColor:I

    iput v0, p0, Lcom/lx/launcher8/view/ColorDrawable$ColorState;->mBaseColor:I

    .line 166
    iget v0, p1, Lcom/lx/launcher8/view/ColorDrawable$ColorState;->mUseColor:I

    iput v0, p0, Lcom/lx/launcher8/view/ColorDrawable$ColorState;->mUseColor:I

    .line 168
    :cond_0
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/lx/launcher8/view/ColorDrawable$ColorState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 172
    new-instance v0, Lcom/lx/launcher8/view/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lx/launcher8/view/ColorDrawable;-><init>(Lcom/lx/launcher8/view/ColorDrawable$ColorState;Lcom/lx/launcher8/view/ColorDrawable;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "res"

    .prologue
    .line 177
    new-instance v0, Lcom/lx/launcher8/view/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lx/launcher8/view/ColorDrawable;-><init>(Lcom/lx/launcher8/view/ColorDrawable$ColorState;Lcom/lx/launcher8/view/ColorDrawable;)V

    return-object v0
.end method
