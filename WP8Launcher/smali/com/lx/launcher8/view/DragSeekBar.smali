.class public Lcom/lx/launcher8/view/DragSeekBar;
.super Landroid/widget/SeekBar;
.source "DragSeekBar.java"


# instance fields
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
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lx/launcher8/view/DragSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/high16 v5, 0x4160

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-object v2, p0, Lcom/lx/launcher8/view/DragSeekBar;->paint:Landroid/graphics/Paint;

    .line 20
    iput-object v2, p0, Lcom/lx/launcher8/view/DragSeekBar;->paint1:Landroid/graphics/Paint;

    .line 22
    iput-object v2, p0, Lcom/lx/launcher8/view/DragSeekBar;->seekBar:Landroid/widget/SeekBar;

    .line 24
    iput v4, p0, Lcom/lx/launcher8/view/DragSeekBar;->padding:I

    .line 26
    iput v4, p0, Lcom/lx/launcher8/view/DragSeekBar;->w:I

    .line 60
    new-instance v2, Lcom/lx/launcher8/view/DragSeekBar$1;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/view/DragSeekBar$1;-><init>(Lcom/lx/launcher8/view/DragSeekBar;)V

    iput-object v2, p0, Lcom/lx/launcher8/view/DragSeekBar;->textDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    new-instance v2, Lcom/lx/launcher8/view/DragSeekBar$2;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/view/DragSeekBar$2;-><init>(Lcom/lx/launcher8/view/DragSeekBar;)V

    iput-object v2, p0, Lcom/lx/launcher8/view/DragSeekBar;->progress:Landroid/graphics/drawable/Drawable;

    .line 34
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/lx/launcher8/view/DragSeekBar;->paint:Landroid/graphics/Paint;

    .line 35
    iget-object v2, p0, Lcom/lx/launcher8/view/DragSeekBar;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    iget-object v2, p0, Lcom/lx/launcher8/view/DragSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    iget-object v2, p0, Lcom/lx/launcher8/view/DragSeekBar;->paint:Landroid/graphics/Paint;

    invoke-static {p1, v7, v5}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;IF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 38
    iget-object v2, p0, Lcom/lx/launcher8/view/DragSeekBar;->paint:Landroid/graphics/Paint;

    const-string v3, "#31b2e7"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/lx/launcher8/view/DragSeekBar;->paint1:Landroid/graphics/Paint;

    .line 41
    iget-object v2, p0, Lcom/lx/launcher8/view/DragSeekBar;->paint1:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    iget-object v2, p0, Lcom/lx/launcher8/view/DragSeekBar;->paint1:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    iget-object v2, p0, Lcom/lx/launcher8/view/DragSeekBar;->paint1:Landroid/graphics/Paint;

    invoke-static {p1, v7, v5}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;IF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 44
    iget-object v2, p0, Lcom/lx/launcher8/view/DragSeekBar;->paint1:Landroid/graphics/Paint;

    const-string v3, "#a0a0a0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iput-object p0, p0, Lcom/lx/launcher8/view/DragSeekBar;->seekBar:Landroid/widget/SeekBar;

    .line 48
    iget-object v2, p0, Lcom/lx/launcher8/view/DragSeekBar;->textDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/view/DragSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 49
    iget-object v2, p0, Lcom/lx/launcher8/view/DragSeekBar;->progress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/view/DragSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    invoke-virtual {p0, v4}, Lcom/lx/launcher8/view/DragSeekBar;->setFocusable(Z)V

    .line 52
    invoke-virtual {p0, v4}, Lcom/lx/launcher8/view/DragSeekBar;->setFocusableInTouchMode(Z)V

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 55
    .local v0, rect:Landroid/graphics/Rect;
    const-string v1, "100%"

    .line 56
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/lx/launcher8/view/DragSeekBar;->paint1:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v1, v4, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 57
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Lcom/lx/launcher8/view/DragSeekBar;->w:I

    .line 58
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/view/DragSeekBar;)Landroid/widget/SeekBar;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lx/launcher8/view/DragSeekBar;->seekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/view/DragSeekBar;)Landroid/graphics/Paint;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lx/launcher8/view/DragSeekBar;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/view/DragSeekBar;)I
    .locals 1
    .parameter

    .prologue
    .line 24
    iget v0, p0, Lcom/lx/launcher8/view/DragSeekBar;->padding:I

    return v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/view/DragSeekBar;)Landroid/graphics/Paint;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lx/launcher8/view/DragSeekBar;->paint1:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/view/DragSeekBar;)I
    .locals 1
    .parameter

    .prologue
    .line 26
    iget v0, p0, Lcom/lx/launcher8/view/DragSeekBar;->w:I

    return v0
.end method


# virtual methods
.method public setPadding(I)V
    .locals 0
    .parameter "padding"

    .prologue
    .line 117
    iput p1, p0, Lcom/lx/launcher8/view/DragSeekBar;->padding:I

    .line 118
    return-void
.end method
