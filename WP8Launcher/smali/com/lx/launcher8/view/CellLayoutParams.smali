.class public Lcom/lx/launcher8/view/CellLayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CellLayoutParams.java"


# instance fields
.field final mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

.field public mDstY:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "c"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "construct CellLayoutParams(Context,AttributeSet) isn\'t supported !!!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "construct CellLayoutParams(ViewGroup.LayoutParams) isn\'t supported !!!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/lx/launcher8/bean/ItemCell;)V
    .locals 2
    .parameter "cellInfo"

    .prologue
    const/4 v0, -0x1

    .line 26
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 27
    if-nez p1, :cond_0

    .line 28
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "param can\'t null!!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    iput-object p1, p0, Lcom/lx/launcher8/view/CellLayoutParams;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/lx/launcher8/view/CellLayoutParams;->mDstY:I

    .line 31
    return-void
.end method


# virtual methods
.method public changeCellYBy(I)V
    .locals 2
    .parameter "detal"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayoutParams;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v1, v0, Lcom/lx/launcher8/bean/ItemCell;->cellY:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/lx/launcher8/bean/ItemCell;->cellY:I

    .line 85
    iget v0, p0, Lcom/lx/launcher8/view/CellLayoutParams;->mDstY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lx/launcher8/view/CellLayoutParams;->mDstY:I

    .line 86
    return-void
.end method

.method public getCellSize()I
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayoutParams;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v0, v0, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    iget-object v1, p0, Lcom/lx/launcher8/view/CellLayoutParams;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v1, v1, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    invoke-static {v0, v1}, Lcom/lx/launcher8/bean/ItemCell;->getCellSize(II)I

    move-result v0

    return v0
.end method

.method public getCellX()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayoutParams;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v0, v0, Lcom/lx/launcher8/bean/ItemCell;->cellX:I

    return v0
.end method

.method public getCellY()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayoutParams;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v0, v0, Lcom/lx/launcher8/bean/ItemCell;->cellY:I

    return v0
.end method

.method public getSpanX()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayoutParams;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v0, v0, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    return v0
.end method

.method public getSpanY()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayoutParams;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v0, v0, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    return v0
.end method

.method public setCellSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayoutParams;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/bean/ItemCell;->setSize(I)V

    .line 66
    return-void
.end method

.method public setLocation(II)V
    .locals 1
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayoutParams;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iput p1, v0, Lcom/lx/launcher8/bean/ItemCell;->cellX:I

    .line 69
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayoutParams;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iput p2, v0, Lcom/lx/launcher8/bean/ItemCell;->cellY:I

    .line 70
    return-void
.end method

.method public setup(IIIIII)V
    .locals 6
    .parameter "cellWidth"
    .parameter "cellHeight"
    .parameter "widthGap"
    .parameter "heightGap"
    .parameter "hStartPadding"
    .parameter "vStartPadding"

    .prologue
    .line 45
    iget-object v4, p0, Lcom/lx/launcher8/view/CellLayoutParams;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v0, v4, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    .line 46
    .local v0, myCellHSpan:I
    iget-object v4, p0, Lcom/lx/launcher8/view/CellLayoutParams;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v1, v4, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    .line 47
    .local v1, myCellVSpan:I
    iget-object v4, p0, Lcom/lx/launcher8/view/CellLayoutParams;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v2, v4, Lcom/lx/launcher8/bean/ItemCell;->cellX:I

    .line 48
    .local v2, myCellX:I
    iget-object v4, p0, Lcom/lx/launcher8/view/CellLayoutParams;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v3, v4, Lcom/lx/launcher8/bean/ItemCell;->cellY:I

    .line 51
    .local v3, myCellY:I
    mul-int v4, v0, p1

    add-int/lit8 v5, v0, -0x1

    mul-int/2addr v5, p3

    add-int/2addr v4, v5

    .line 52
    iget v5, p0, Lcom/lx/launcher8/view/CellLayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lx/launcher8/view/CellLayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    .line 51
    iput v4, p0, Lcom/lx/launcher8/view/CellLayoutParams;->width:I

    .line 53
    mul-int v4, v1, p2

    add-int/lit8 v5, v1, -0x1

    mul-int/2addr v5, p4

    add-int/2addr v4, v5

    .line 54
    iget v5, p0, Lcom/lx/launcher8/view/CellLayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lx/launcher8/view/CellLayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    .line 53
    iput v4, p0, Lcom/lx/launcher8/view/CellLayoutParams;->height:I

    .line 57
    add-int v4, p1, p3

    mul-int/2addr v4, v2

    add-int/2addr v4, p5

    iget v5, p0, Lcom/lx/launcher8/view/CellLayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/lx/launcher8/view/CellLayoutParams;->x:I

    .line 58
    add-int v4, p2, p4

    mul-int/2addr v4, v3

    add-int/2addr v4, p6

    iget v5, p0, Lcom/lx/launcher8/view/CellLayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/lx/launcher8/view/CellLayoutParams;->y:I

    .line 59
    return-void
.end method
