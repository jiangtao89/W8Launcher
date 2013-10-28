.class public Lcom/app/common/view/CShape$MyShapeDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "CShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/common/view/CShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyShapeDrawable"
.end annotation


# instance fields
.field private mCanvasColor:I

.field private mIsDarwStroke:Z

.field private mPfd:Landroid/graphics/PaintFlagsDrawFilter;

.field private mStrokePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/shapes/Shape;I)V
    .locals 3
    .parameter "s"
    .parameter "canvasColor"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 131
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/app/common/view/CShape$MyShapeDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 126
    iput-boolean v1, p0, Lcom/app/common/view/CShape$MyShapeDrawable;->mIsDarwStroke:Z

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcom/app/common/view/CShape$MyShapeDrawable;->mCanvasColor:I

    .line 132
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/app/common/view/CShape$MyShapeDrawable;->mPfd:Landroid/graphics/PaintFlagsDrawFilter;

    .line 134
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/app/common/view/CShape$MyShapeDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 135
    iget-object v0, p0, Lcom/app/common/view/CShape$MyShapeDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    iget-object v0, p0, Lcom/app/common/view/CShape$MyShapeDrawable;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 137
    iput p2, p0, Lcom/app/common/view/CShape$MyShapeDrawable;->mCanvasColor:I

    .line 138
    return-void
.end method

.method public static makeLinear()Landroid/graphics/Shader;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 141
    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v4, 0x4248

    const/4 v2, 0x3

    new-array v5, v2, [I

    fill-array-data v5, :array_0

    const/4 v6, 0x0

    .line 142
    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    .line 141
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v0

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
    .end array-data
.end method


# virtual methods
.method public getStrokePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/app/common/view/CShape$MyShapeDrawable;->mIsDarwStroke:Z

    .line 148
    iget-object v0, p0, Lcom/app/common/view/CShape$MyShapeDrawable;->mStrokePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1
    .parameter "s"
    .parameter "c"
    .parameter "p"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/app/common/view/CShape$MyShapeDrawable;->mPfd:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 154
    iget v0, p0, Lcom/app/common/view/CShape$MyShapeDrawable;->mCanvasColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 155
    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/shapes/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 157
    iget-boolean v0, p0, Lcom/app/common/view/CShape$MyShapeDrawable;->mIsDarwStroke:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/app/common/view/CShape$MyShapeDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/shapes/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 159
    :cond_0
    return-void
.end method
