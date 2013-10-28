.class public Lcom/lx/launcher8/view/DragSeekBar2;
.super Landroid/widget/SeekBar;
.source "DragSeekBar2.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private padding:I

.field private paint:Landroid/graphics/Paint;

.field private paint1:Landroid/graphics/Paint;

.field private progress:Landroid/graphics/drawable/Drawable;

.field private seekBar:Landroid/widget/SeekBar;

.field private textDrawable:Landroid/graphics/drawable/Drawable;

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lx/launcher8/view/DragSeekBar2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-object v3, p0, Lcom/lx/launcher8/view/DragSeekBar2;->paint:Landroid/graphics/Paint;

    .line 24
    iput-object v3, p0, Lcom/lx/launcher8/view/DragSeekBar2;->paint1:Landroid/graphics/Paint;

    .line 26
    iput-object v3, p0, Lcom/lx/launcher8/view/DragSeekBar2;->seekBar:Landroid/widget/SeekBar;

    .line 28
    iput v5, p0, Lcom/lx/launcher8/view/DragSeekBar2;->padding:I

    .line 30
    iput v5, p0, Lcom/lx/launcher8/view/DragSeekBar2;->w:I

    .line 32
    iput-object v3, p0, Lcom/lx/launcher8/view/DragSeekBar2;->bitmap:Landroid/graphics/Bitmap;

    .line 75
    new-instance v3, Lcom/lx/launcher8/view/DragSeekBar2$1;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/view/DragSeekBar2$1;-><init>(Lcom/lx/launcher8/view/DragSeekBar2;)V

    iput-object v3, p0, Lcom/lx/launcher8/view/DragSeekBar2;->textDrawable:Landroid/graphics/drawable/Drawable;

    .line 116
    new-instance v3, Lcom/lx/launcher8/view/DragSeekBar2$2;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/view/DragSeekBar2$2;-><init>(Lcom/lx/launcher8/view/DragSeekBar2;)V

    iput-object v3, p0, Lcom/lx/launcher8/view/DragSeekBar2;->progress:Landroid/graphics/drawable/Drawable;

    .line 40
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/lx/launcher8/view/DragSeekBar2;->paint:Landroid/graphics/Paint;

    .line 41
    iget-object v3, p0, Lcom/lx/launcher8/view/DragSeekBar2;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    iget-object v3, p0, Lcom/lx/launcher8/view/DragSeekBar2;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    iget-object v3, p0, Lcom/lx/launcher8/view/DragSeekBar2;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x4180

    invoke-static {p1, v7, v4}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;IF)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 44
    iget-object v3, p0, Lcom/lx/launcher8/view/DragSeekBar2;->paint:Landroid/graphics/Paint;

    const-string v4, "#31b2e7"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/lx/launcher8/view/DragSeekBar2;->paint1:Landroid/graphics/Paint;

    .line 47
    iget-object v3, p0, Lcom/lx/launcher8/view/DragSeekBar2;->paint1:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    iget-object v3, p0, Lcom/lx/launcher8/view/DragSeekBar2;->paint1:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    iget-object v3, p0, Lcom/lx/launcher8/view/DragSeekBar2;->paint1:Landroid/graphics/Paint;

    const/high16 v4, 0x4160

    invoke-static {p1, v7, v4}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;IF)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 50
    iget-object v3, p0, Lcom/lx/launcher8/view/DragSeekBar2;->paint1:Landroid/graphics/Paint;

    const-string v4, "#a0a0a0"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iput-object p0, p0, Lcom/lx/launcher8/view/DragSeekBar2;->seekBar:Landroid/widget/SeekBar;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201db

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lx/launcher8/view/DragSeekBar2;->bitmap:Landroid/graphics/Bitmap;

    .line 56
    iget-object v3, p0, Lcom/lx/launcher8/view/DragSeekBar2;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/lx/launcher8/view/DragSeekBar2;->padding:I

    .line 58
    new-instance v2, Lcom/lx/launcher8/view/ColorDrawable;

    const/high16 v3, -0x1

    invoke-direct {v2, v3}, Lcom/lx/launcher8/view/ColorDrawable;-><init>(I)V

    .line 59
    .local v2, thumb:Lcom/lx/launcher8/view/ColorDrawable;
    iget-object v3, p0, Lcom/lx/launcher8/view/DragSeekBar2;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/lx/launcher8/view/DragSeekBar2;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Lcom/lx/launcher8/view/ColorDrawable;->setBounds(IIII)V

    .line 61
    iget-object v3, p0, Lcom/lx/launcher8/view/DragSeekBar2;->textDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/view/DragSeekBar2;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 62
    iget-object v3, p0, Lcom/lx/launcher8/view/DragSeekBar2;->progress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/view/DragSeekBar2;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    invoke-virtual {p0, v5}, Lcom/lx/launcher8/view/DragSeekBar2;->setFocusable(Z)V

    .line 65
    invoke-virtual {p0, v5}, Lcom/lx/launcher8/view/DragSeekBar2;->setFocusableInTouchMode(Z)V

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 68
    .local v0, rect:Landroid/graphics/Rect;
    const-string v1, "100%"

    .line 69
    .local v1, text:Ljava/lang/String;
    iget-object v3, p0, Lcom/lx/launcher8/view/DragSeekBar2;->paint1:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v1, v5, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 70
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, p0, Lcom/lx/launcher8/view/DragSeekBar2;->w:I

    .line 72
    iget v3, p0, Lcom/lx/launcher8/view/DragSeekBar2;->padding:I

    iget v4, p0, Lcom/lx/launcher8/view/DragSeekBar2;->padding:I

    invoke-virtual {p0, v3, v5, v4, v5}, Lcom/lx/launcher8/view/DragSeekBar2;->setPadding(IIII)V

    .line 73
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/view/DragSeekBar2;)Landroid/widget/SeekBar;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lx/launcher8/view/DragSeekBar2;->seekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/view/DragSeekBar2;)Landroid/graphics/Paint;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lx/launcher8/view/DragSeekBar2;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/view/DragSeekBar2;)I
    .locals 1
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lcom/lx/launcher8/view/DragSeekBar2;->padding:I

    return v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/view/DragSeekBar2;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lx/launcher8/view/DragSeekBar2;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/view/DragSeekBar2;)Landroid/graphics/Paint;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lx/launcher8/view/DragSeekBar2;->paint1:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/view/DragSeekBar2;)I
    .locals 1
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lcom/lx/launcher8/view/DragSeekBar2;->w:I

    return v0
.end method
