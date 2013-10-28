.class public Lcom/app/common/view/CShape;
.super Ljava/lang/Object;
.source "CShape.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/common/view/CShape$MyShapeDrawable;
    }
.end annotation


# static fields
.field public static OuterRoundsBottom:[F

.field public static OuterRoundsTop:[F

.field public static RoundsAll:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 15
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/app/common/view/CShape;->OuterRoundsTop:[F

    .line 16
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/app/common/view/CShape;->OuterRoundsBottom:[F

    .line 17
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/app/common/view/CShape;->RoundsAll:[F

    .line 14
    return-void

    .line 15
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 16
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0xa0t 0x41t
    .end array-data

    .line 17
    :array_2
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0xa0t 0x41t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static creatSolidShapeDrawable(FILandroid/graphics/Rect;)Landroid/graphics/drawable/ShapeDrawable;
    .locals 1
    .parameter "outerR"
    .parameter "color"
    .parameter "padding"

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-static {p0, p1, p2, v0, v0}, Lcom/app/common/view/CShape;->creatSolidShapeDrawable(FILandroid/graphics/Rect;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static creatSolidShapeDrawable(FILandroid/graphics/Rect;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/drawable/ShapeDrawable;
    .locals 6
    .parameter "outerR"
    .parameter "color"
    .parameter "padding"
    .parameter "strokeWidth"
    .parameter "strokeColor"

    .prologue
    .line 107
    const/4 v0, -0x1

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/app/common/view/CShape;->creatSolidShapeDrawable(IFILandroid/graphics/Rect;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static creatSolidShapeDrawable(IFILandroid/graphics/Rect;)Landroid/graphics/drawable/ShapeDrawable;
    .locals 6
    .parameter "backColor"
    .parameter "outerR"
    .parameter "color"
    .parameter "padding"

    .prologue
    const/4 v4, 0x0

    .line 111
    move v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/app/common/view/CShape;->creatSolidShapeDrawable(IFILandroid/graphics/Rect;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static creatSolidShapeDrawable(IFILandroid/graphics/Rect;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/drawable/ShapeDrawable;
    .locals 7
    .parameter "backColor"
    .parameter "outerR"
    .parameter "color"
    .parameter "padding"
    .parameter "strokeWidth"
    .parameter "strokeColor"

    .prologue
    const/16 v0, 0x8

    .line 97
    new-array v1, v0, [F

    .line 98
    .local v1, outerRounds:[F
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-lt v6, v0, :cond_0

    move v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 102
    invoke-static/range {v0 .. v5}, Lcom/app/common/view/CShape;->creatSolidShapeDrawable(I[FILandroid/graphics/Rect;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    return-object v0

    .line 99
    :cond_0
    aput p1, v1, v6

    .line 98
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public static creatSolidShapeDrawable(I[FILandroid/graphics/Rect;)Landroid/graphics/drawable/ShapeDrawable;
    .locals 6
    .parameter "backColor"
    .parameter "outerRounds"
    .parameter "color"
    .parameter "padding"

    .prologue
    const/4 v4, 0x0

    .line 71
    move v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/app/common/view/CShape;->creatSolidShapeDrawable(I[FILandroid/graphics/Rect;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static creatSolidShapeDrawable(I[FILandroid/graphics/Rect;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/drawable/ShapeDrawable;
    .locals 9
    .parameter "backColor"
    .parameter "outerRounds"
    .parameter "color"
    .parameter "padding"
    .parameter "strokeWidth"
    .parameter "strokeColor"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x4

    .line 39
    if-nez p1, :cond_2

    .line 40
    new-array p1, v7, [F

    .line 52
    :cond_0
    :goto_0
    new-instance v0, Lcom/app/common/view/CShape$MyShapeDrawable;

    new-instance v5, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v5, p1, v8, v8}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v0, v5, p0}, Lcom/app/common/view/CShape$MyShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;I)V

    .line 54
    .local v0, drawable:Lcom/app/common/view/CShape$MyShapeDrawable;
    invoke-virtual {v0}, Lcom/app/common/view/CShape$MyShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    invoke-virtual {v0, p3}, Lcom/app/common/view/CShape$MyShapeDrawable;->setPadding(Landroid/graphics/Rect;)V

    .line 57
    if-eqz p5, :cond_1

    if-eqz p4, :cond_1

    .line 58
    invoke-virtual {v0}, Lcom/app/common/view/CShape$MyShapeDrawable;->getStrokePaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    invoke-virtual {v0}, Lcom/app/common/view/CShape$MyShapeDrawable;->getStrokePaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    :cond_1
    return-object v0

    .line 41
    .end local v0           #drawable:Lcom/app/common/view/CShape$MyShapeDrawable;
    :cond_2
    array-length v5, p1

    if-ne v6, v5, :cond_0

    .line 42
    new-array v4, v7, [F

    .line 44
    .local v4, tmp:[F
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x0

    .local v2, j:I
    move v3, v2

    .end local v2           #j:I
    .local v3, j:I
    :goto_1
    if-lt v1, v6, :cond_3

    .line 49
    move-object p1, v4

    goto :goto_0

    .line 45
    :cond_3
    add-int/lit8 v2, v3, 0x1

    .end local v3           #j:I
    .restart local v2       #j:I
    aget v5, p1, v1

    aput v5, v4, v3

    .line 46
    add-int/lit8 v3, v2, 0x1

    .end local v2           #j:I
    .restart local v3       #j:I
    aget v5, p1, v1

    aput v5, v4, v2

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static creatSolidShapeDrawable([FILandroid/graphics/Rect;)Landroid/graphics/drawable/ShapeDrawable;
    .locals 1
    .parameter "outerRounds"
    .parameter "color"
    .parameter "padding"

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-static {p0, p1, p2, v0, v0}, Lcom/app/common/view/CShape;->creatSolidShapeDrawable([FILandroid/graphics/Rect;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static creatSolidShapeDrawable([FILandroid/graphics/Rect;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/drawable/ShapeDrawable;
    .locals 6
    .parameter "outerRounds"
    .parameter "color"
    .parameter "padding"
    .parameter "strokeWidth"
    .parameter "strokeColor"

    .prologue
    .line 67
    const/4 v0, -0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/app/common/view/CShape;->creatSolidShapeDrawable(I[FILandroid/graphics/Rect;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    return-object v0
.end method
