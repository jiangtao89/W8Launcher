.class public Lcom/lx/launcher8/view/MutiChooseView;
.super Landroid/widget/LinearLayout;
.source "MutiChooseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/view/MutiChooseView$ScrollRunnable;
    }
.end annotation


# instance fields
.field private isOpen:Z

.field private mClick:Landroid/view/View$OnClickListener;

.field private mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

.field private mItemSelectListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mSelect:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lx/launcher8/view/MutiChooseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance v0, Lcom/lx/launcher8/view/MutiChooseView$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/view/MutiChooseView$1;-><init>(Lcom/lx/launcher8/view/MutiChooseView;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/MutiChooseView;->mClick:Landroid/view/View$OnClickListener;

    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/MutiChooseView;->setOrientation(I)V

    .line 29
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/MutiChooseView;->setDescendantFocusability(I)V

    .line 30
    new-instance v0, Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-direct {v0, p1}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/MutiChooseView;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 31
    iput-boolean v1, p0, Lcom/lx/launcher8/view/MutiChooseView;->isOpen:Z

    .line 32
    iput v1, p0, Lcom/lx/launcher8/view/MutiChooseView;->mSelect:I

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/view/MutiChooseView;)Z
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/lx/launcher8/view/MutiChooseView;->isOpen:Z

    return v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/view/MutiChooseView;)I
    .locals 1
    .parameter

    .prologue
    .line 19
    iget v0, p0, Lcom/lx/launcher8/view/MutiChooseView;->mSelect:I

    return v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/view/MutiChooseView;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/lx/launcher8/view/MutiChooseView;->changeItemsVisible(ZI)V

    return-void
.end method

.method static synthetic access$3(Lcom/lx/launcher8/view/MutiChooseView;)Lcom/lx/launcher8/cfg/DeskSetting;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lx/launcher8/view/MutiChooseView;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/view/MutiChooseView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput p1, p0, Lcom/lx/launcher8/view/MutiChooseView;->mSelect:I

    return-void
.end method

.method static synthetic access$5(Lcom/lx/launcher8/view/MutiChooseView;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lx/launcher8/view/MutiChooseView;->mItemSelectListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method private changeItemsVisible(ZI)V
    .locals 8
    .parameter "show"
    .parameter "select"

    .prologue
    const/4 v6, 0x0

    .line 81
    iput-boolean p1, p0, Lcom/lx/launcher8/view/MutiChooseView;->isOpen:Z

    .line 82
    if-eqz p1, :cond_1

    move v5, v6

    .line 83
    .local v5, visible:I
    :goto_0
    invoke-virtual {p0}, Lcom/lx/launcher8/view/MutiChooseView;->getChildCount()I

    move-result v0

    .line 84
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v0, :cond_2

    .line 93
    if-lez v0, :cond_0

    iget-boolean v6, p0, Lcom/lx/launcher8/view/MutiChooseView;->isOpen:Z

    if-eqz v6, :cond_0

    .line 94
    const/4 v6, 0x2

    new-array v2, v6, [I

    .line 95
    .local v2, loc:[I
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Lcom/lx/launcher8/view/MutiChooseView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 96
    new-instance v3, Lcom/lx/launcher8/view/MutiChooseView$ScrollRunnable;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/view/MutiChooseView$ScrollRunnable;-><init>(Lcom/lx/launcher8/view/MutiChooseView;)V

    .line 97
    .local v3, runnable:Lcom/lx/launcher8/view/MutiChooseView$ScrollRunnable;
    const/4 v6, 0x1

    aget v6, v2, v6

    invoke-virtual {v3, v6}, Lcom/lx/launcher8/view/MutiChooseView$ScrollRunnable;->setScrollY(I)V

    .line 98
    const-wide/16 v6, 0xc8

    invoke-virtual {p0, v3, v6, v7}, Lcom/lx/launcher8/view/MutiChooseView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    .end local v2           #loc:[I
    .end local v3           #runnable:Lcom/lx/launcher8/view/MutiChooseView$ScrollRunnable;
    :cond_0
    iget-boolean v6, p0, Lcom/lx/launcher8/view/MutiChooseView;->isOpen:Z

    if-eqz v6, :cond_5

    .line 101
    const v6, 0x7f0200ef

    invoke-virtual {p0, v6}, Lcom/lx/launcher8/view/MutiChooseView;->setBackgroundResource(I)V

    .line 105
    :goto_2
    return-void

    .line 82
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v5           #visible:I
    :cond_1
    const/16 v5, 0x8

    goto :goto_0

    .line 85
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v5       #visible:I
    :cond_2
    invoke-virtual {p0, v1}, Lcom/lx/launcher8/view/MutiChooseView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 86
    .local v4, view:Landroid/view/View;
    if-eq v1, p2, :cond_4

    .line 87
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 91
    :goto_3
    iget-boolean v7, p0, Lcom/lx/launcher8/view/MutiChooseView;->isOpen:Z

    if-eqz v7, :cond_3

    check-cast v4, Landroid/widget/TextView;

    .end local v4           #view:Landroid/view/View;
    const/high16 v7, -0x100

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 89
    .restart local v4       #view:Landroid/view/View;
    :cond_4
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 103
    .end local v4           #view:Landroid/view/View;
    :cond_5
    invoke-virtual {p0}, Lcom/lx/launcher8/view/MutiChooseView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b00a3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/lx/launcher8/view/MutiChooseView;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method private createItem(Ljava/lang/String;II)Landroid/widget/TextView;
    .locals 2
    .parameter "item"
    .parameter "id"
    .parameter "pad"

    .prologue
    .line 54
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lx/launcher8/view/MutiChooseView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 55
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0, p3, p3, p3, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 56
    iget-object v1, p0, Lcom/lx/launcher8/view/MutiChooseView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    const/high16 v1, 0x4150

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 59
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setId(I)V

    .line 61
    return-object v0
.end method


# virtual methods
.method public setItems([Ljava/lang/String;I)V
    .locals 4
    .parameter "items"
    .parameter "select"

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/lx/launcher8/view/MutiChooseView;->removeAllViews()V

    .line 38
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    if-ltz p2, :cond_2

    array-length v2, p1

    if-lt p2, v2, :cond_3

    .line 41
    :cond_2
    const/4 p2, 0x0

    .line 42
    :cond_3
    invoke-virtual {p0}, Lcom/lx/launcher8/view/MutiChooseView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x4120

    invoke-static {v2, v3}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v2

    float-to-int v1, v2

    .line 43
    .local v1, pad:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-lt v0, v2, :cond_4

    .line 46
    iget-boolean v2, p0, Lcom/lx/launcher8/view/MutiChooseView;->isOpen:Z

    invoke-direct {p0, v2, p2}, Lcom/lx/launcher8/view/MutiChooseView;->changeItemsVisible(ZI)V

    goto :goto_0

    .line 44
    :cond_4
    aget-object v2, p1, v0

    invoke-direct {p0, v2, v0, v1}, Lcom/lx/launcher8/view/MutiChooseView;->createItem(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/view/MutiChooseView;->addView(Landroid/view/View;)V

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    .local p1, l:Landroid/widget/AdapterView$OnItemSelectedListener;,"Landroid/widget/AdapterView$OnItemSelectedListener;"
    iput-object p1, p0, Lcom/lx/launcher8/view/MutiChooseView;->mItemSelectListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 51
    return-void
.end method
