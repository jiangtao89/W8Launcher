.class public Lcom/lx/launcher8/view/LoadingText;
.super Landroid/widget/LinearLayout;
.source "LoadingText.java"


# instance fields
.field handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private points:[Ljava/lang/String;

.field private position:I

.field private tv1:Landroid/widget/TextView;

.field private tv2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lx/launcher8/view/LoadingText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v5, 0x4180

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    iput-object v0, p0, Lcom/lx/launcher8/view/LoadingText;->tv1:Landroid/widget/TextView;

    .line 15
    iput-object v0, p0, Lcom/lx/launcher8/view/LoadingText;->tv2:Landroid/widget/TextView;

    .line 17
    iput-object v0, p0, Lcom/lx/launcher8/view/LoadingText;->mContext:Landroid/content/Context;

    .line 19
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".     "

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "..    "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "...   "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "....  "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "..... "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "......"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lx/launcher8/view/LoadingText;->points:[Ljava/lang/String;

    .line 21
    iput v4, p0, Lcom/lx/launcher8/view/LoadingText;->position:I

    .line 29
    iput-object p1, p0, Lcom/lx/launcher8/view/LoadingText;->mContext:Landroid/content/Context;

    .line 30
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lx/launcher8/view/LoadingText;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/LoadingText;->tv1:Landroid/widget/TextView;

    .line 31
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lx/launcher8/view/LoadingText;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/LoadingText;->tv2:Landroid/widget/TextView;

    .line 33
    invoke-virtual {p0, v4}, Lcom/lx/launcher8/view/LoadingText;->setOrientation(I)V

    .line 34
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/LoadingText;->setGravity(I)V

    .line 36
    iget-object v0, p0, Lcom/lx/launcher8/view/LoadingText;->tv1:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/view/LoadingText;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object v0, p0, Lcom/lx/launcher8/view/LoadingText;->tv2:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/view/LoadingText;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    iget-object v0, p0, Lcom/lx/launcher8/view/LoadingText;->tv1:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 40
    iget-object v0, p0, Lcom/lx/launcher8/view/LoadingText;->tv1:Landroid/widget/TextView;

    const-string v1, "#955c01"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    iget-object v0, p0, Lcom/lx/launcher8/view/LoadingText;->tv2:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 42
    iget-object v0, p0, Lcom/lx/launcher8/view/LoadingText;->tv2:Landroid/widget/TextView;

    const-string v1, "#955c01"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/view/LoadingText;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lx/launcher8/view/LoadingText;->tv2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/view/LoadingText;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lx/launcher8/view/LoadingText;->points:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/view/LoadingText;)I
    .locals 1
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/lx/launcher8/view/LoadingText;->getNextPosition()I

    move-result v0

    return v0
.end method

.method private getNextPosition()I
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Lcom/lx/launcher8/view/LoadingText;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lx/launcher8/view/LoadingText;->position:I

    .line 79
    iget v0, p0, Lcom/lx/launcher8/view/LoadingText;->position:I

    iget-object v1, p0, Lcom/lx/launcher8/view/LoadingText;->points:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/lx/launcher8/view/LoadingText;->position:I

    .line 80
    :cond_0
    iget v0, p0, Lcom/lx/launcher8/view/LoadingText;->position:I

    return v0
.end method


# virtual methods
.method public setText(Ljava/lang/String;I)V
    .locals 3
    .parameter "text"
    .parameter "color"

    .prologue
    .line 70
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/lx/launcher8/view/LoadingText;->tv1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "      "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/lx/launcher8/view/LoadingText;->tv1:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object v0, p0, Lcom/lx/launcher8/view/LoadingText;->tv2:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    :cond_0
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/lx/launcher8/view/LoadingText$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/view/LoadingText$1;-><init>(Lcom/lx/launcher8/view/LoadingText;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/LoadingText;->handler:Landroid/os/Handler;

    .line 59
    iget-object v0, p0, Lcom/lx/launcher8/view/LoadingText;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 60
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lx/launcher8/view/LoadingText;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/lx/launcher8/view/LoadingText;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 66
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/view/LoadingText;->handler:Landroid/os/Handler;

    .line 67
    return-void
.end method
