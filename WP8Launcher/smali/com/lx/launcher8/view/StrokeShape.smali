.class public Lcom/lx/launcher8/view/StrokeShape;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "StrokeShape.java"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mPfd:Landroid/graphics/PaintFlagsDrawFilter;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/shapes/Shape;I)V
    .locals 3
    .parameter "s"
    .parameter "paintColor"

    .prologue
    const/4 v2, 0x3

    .line 14
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/lx/launcher8/view/StrokeShape;->mPaint:Landroid/graphics/Paint;

    .line 16
    iget-object v0, p0, Lcom/lx/launcher8/view/StrokeShape;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    iget-object v0, p0, Lcom/lx/launcher8/view/StrokeShape;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 18
    iget-object v0, p0, Lcom/lx/launcher8/view/StrokeShape;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/lx/launcher8/view/StrokeShape;->mPfd:Landroid/graphics/PaintFlagsDrawFilter;

    .line 20
    return-void
.end method


# virtual methods
.method public getStrokePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lx/launcher8/view/StrokeShape;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2
    .parameter "s"
    .parameter "c"
    .parameter "p"

    .prologue
    const/4 v1, 0x0

    .line 28
    iget-object v0, p0, Lcom/lx/launcher8/view/StrokeShape;->mPfd:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 29
    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 30
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/ShapeDrawable;->onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 32
    iget-object v0, p0, Lcom/lx/launcher8/view/StrokeShape;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/shapes/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 33
    return-void
.end method
