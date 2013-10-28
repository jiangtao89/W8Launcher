.class Lcom/lx/launcher8/view/DragSeekBar$1;
.super Landroid/graphics/drawable/Drawable;
.source "DragSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/view/DragSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/view/DragSeekBar;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/view/DragSeekBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/view/DragSeekBar$1;->this$0:Lcom/lx/launcher8/view/DragSeekBar;

    .line 60
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    .line 64
    iget-object v6, p0, Lcom/lx/launcher8/view/DragSeekBar$1;->this$0:Lcom/lx/launcher8/view/DragSeekBar;

    #getter for: Lcom/lx/launcher8/view/DragSeekBar;->seekBar:Landroid/widget/SeekBar;
    invoke-static {v6}, Lcom/lx/launcher8/view/DragSeekBar;->access$0(Lcom/lx/launcher8/view/DragSeekBar;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getWidth()I

    move-result v4

    .line 65
    .local v4, width:I
    iget-object v6, p0, Lcom/lx/launcher8/view/DragSeekBar$1;->this$0:Lcom/lx/launcher8/view/DragSeekBar;

    #getter for: Lcom/lx/launcher8/view/DragSeekBar;->seekBar:Landroid/widget/SeekBar;
    invoke-static {v6}, Lcom/lx/launcher8/view/DragSeekBar;->access$0(Lcom/lx/launcher8/view/DragSeekBar;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getHeight()I

    move-result v0

    .line 66
    .local v0, height:I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 67
    .local v2, rect:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/lx/launcher8/view/DragSeekBar$1;->this$0:Lcom/lx/launcher8/view/DragSeekBar;

    #getter for: Lcom/lx/launcher8/view/DragSeekBar;->seekBar:Landroid/widget/SeekBar;
    invoke-static {v6}, Lcom/lx/launcher8/view/DragSeekBar;->access$0(Lcom/lx/launcher8/view/DragSeekBar;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 68
    .local v1, progress:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, text:Ljava/lang/String;
    iget-object v6, p0, Lcom/lx/launcher8/view/DragSeekBar$1;->this$0:Lcom/lx/launcher8/view/DragSeekBar;

    #getter for: Lcom/lx/launcher8/view/DragSeekBar;->paint:Landroid/graphics/Paint;
    invoke-static {v6}, Lcom/lx/launcher8/view/DragSeekBar;->access$1(Lcom/lx/launcher8/view/DragSeekBar;)Landroid/graphics/Paint;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v3, v7, v8, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 70
    int-to-float v6, v1

    iget-object v7, p0, Lcom/lx/launcher8/view/DragSeekBar$1;->this$0:Lcom/lx/launcher8/view/DragSeekBar;

    #getter for: Lcom/lx/launcher8/view/DragSeekBar;->padding:I
    invoke-static {v7}, Lcom/lx/launcher8/view/DragSeekBar;->access$2(Lcom/lx/launcher8/view/DragSeekBar;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v4, v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    const/high16 v7, 0x42c8

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/lx/launcher8/view/DragSeekBar$1;->this$0:Lcom/lx/launcher8/view/DragSeekBar;

    #getter for: Lcom/lx/launcher8/view/DragSeekBar;->padding:I
    invoke-static {v7}, Lcom/lx/launcher8/view/DragSeekBar;->access$2(Lcom/lx/launcher8/view/DragSeekBar;)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    sub-float v5, v6, v7

    .line 71
    .local v5, x:F
    cmpg-float v6, v5, v9

    if-gez v6, :cond_0

    const/4 v5, 0x0

    .line 72
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v5

    int-to-float v7, v4

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int v6, v4, v6

    add-int/lit8 v6, v6, -0x2

    int-to-float v5, v6

    .line 73
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    int-to-float v7, v0

    iget-object v8, p0, Lcom/lx/launcher8/view/DragSeekBar$1;->this$0:Lcom/lx/launcher8/view/DragSeekBar;

    #getter for: Lcom/lx/launcher8/view/DragSeekBar;->paint:Landroid/graphics/Paint;
    invoke-static {v8}, Lcom/lx/launcher8/view/DragSeekBar;->access$1(Lcom/lx/launcher8/view/DragSeekBar;)Landroid/graphics/Paint;

    move-result-object v8

    invoke-virtual {p1, v6, v5, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 75
    const/16 v6, 0xa

    if-le v1, v6, :cond_2

    const-string v6, "0%"

    int-to-float v7, v0

    iget-object v8, p0, Lcom/lx/launcher8/view/DragSeekBar$1;->this$0:Lcom/lx/launcher8/view/DragSeekBar;

    #getter for: Lcom/lx/launcher8/view/DragSeekBar;->paint1:Landroid/graphics/Paint;
    invoke-static {v8}, Lcom/lx/launcher8/view/DragSeekBar;->access$3(Lcom/lx/launcher8/view/DragSeekBar;)Landroid/graphics/Paint;

    move-result-object v8

    invoke-virtual {p1, v6, v9, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 76
    :cond_2
    const/16 v6, 0x55

    if-ge v1, v6, :cond_3

    const-string v6, "100%"

    iget-object v7, p0, Lcom/lx/launcher8/view/DragSeekBar$1;->this$0:Lcom/lx/launcher8/view/DragSeekBar;

    #getter for: Lcom/lx/launcher8/view/DragSeekBar;->w:I
    invoke-static {v7}, Lcom/lx/launcher8/view/DragSeekBar;->access$4(Lcom/lx/launcher8/view/DragSeekBar;)I

    move-result v7

    sub-int v7, v4, v7

    add-int/lit8 v7, v7, -0x2

    int-to-float v7, v7

    int-to-float v8, v0

    iget-object v9, p0, Lcom/lx/launcher8/view/DragSeekBar$1;->this$0:Lcom/lx/launcher8/view/DragSeekBar;

    #getter for: Lcom/lx/launcher8/view/DragSeekBar;->paint1:Landroid/graphics/Paint;
    invoke-static {v9}, Lcom/lx/launcher8/view/DragSeekBar;->access$3(Lcom/lx/launcher8/view/DragSeekBar;)Landroid/graphics/Paint;

    move-result-object v9

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 77
    :cond_3
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 82
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 87
    return-void
.end method
