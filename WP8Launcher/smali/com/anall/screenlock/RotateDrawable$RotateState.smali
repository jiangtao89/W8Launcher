.class final Lcom/anall/screenlock/RotateDrawable$RotateState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "RotateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anall/screenlock/RotateDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RotateState"
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mChangingConfigurations:I

.field mMatrix:Landroid/graphics/Matrix;

.field mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 134
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/anall/screenlock/RotateDrawable$RotateState;->mBitmap:Landroid/graphics/Bitmap;

    .line 136
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/anall/screenlock/RotateDrawable$RotateState;->mPaint:Landroid/graphics/Paint;

    .line 137
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/anall/screenlock/RotateDrawable$RotateState;->mMatrix:Landroid/graphics/Matrix;

    .line 138
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/anall/screenlock/RotateDrawable$RotateState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    new-instance v0, Lcom/anall/screenlock/RotateDrawable;

    invoke-direct {v0, p0, v1, v1}, Lcom/anall/screenlock/RotateDrawable;-><init>(Lcom/anall/screenlock/RotateDrawable$RotateState;Landroid/content/res/Resources;Lcom/anall/screenlock/RotateDrawable;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "res"

    .prologue
    .line 147
    new-instance v0, Lcom/anall/screenlock/RotateDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/anall/screenlock/RotateDrawable;-><init>(Lcom/anall/screenlock/RotateDrawable$RotateState;Landroid/content/res/Resources;Lcom/anall/screenlock/RotateDrawable;)V

    return-object v0
.end method
