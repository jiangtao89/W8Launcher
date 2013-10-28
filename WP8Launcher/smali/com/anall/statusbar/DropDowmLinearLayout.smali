.class public Lcom/anall/statusbar/DropDowmLinearLayout;
.super Landroid/widget/LinearLayout;
.source "DropDowmLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anall/statusbar/DropDowmLinearLayout$ScrollRunnable;
    }
.end annotation


# instance fields
.field private isOpen:Z

.field private mChild:[I

.field private mContext:Landroid/content/Context;

.field private mScroll:Landroid/widget/ScrollView;

.field private mSettings:Lcom/lx/launcher8/cfg/DeskSetting;

.field private selectedID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ScrollView;)V
    .locals 5
    .parameter "context"
    .parameter "scroll"

    .prologue
    const/high16 v4, 0x4120

    const/4 v3, 0x0

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p1, p0, Lcom/anall/statusbar/DropDowmLinearLayout;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/anall/statusbar/DropDowmLinearLayout;->mScroll:Landroid/widget/ScrollView;

    .line 25
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    .line 26
    const/4 v2, -0x2

    .line 25
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 27
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/anall/statusbar/DropDowmLinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 28
    iget-object v2, p0, Lcom/anall/statusbar/DropDowmLinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    .line 27
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/anall/statusbar/DropDowmLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/anall/statusbar/DropDowmLinearLayout;->setOrientation(I)V

    .line 31
    new-instance v1, Lcom/lx/launcher8/cfg/DeskSetting;

    iget-object v2, p0, Lcom/anall/statusbar/DropDowmLinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anall/statusbar/DropDowmLinearLayout;->mSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 32
    iput-boolean v3, p0, Lcom/anall/statusbar/DropDowmLinearLayout;->isOpen:Z

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/anall/statusbar/DropDowmLinearLayout;)Landroid/widget/ScrollView;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/anall/statusbar/DropDowmLinearLayout;->mScroll:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private desPlayChild(I)V
    .locals 7
    .parameter "visible"

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/anall/statusbar/DropDowmLinearLayout;->getChildCount()I

    move-result v0

    .line 120
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 125
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0, v1}, Lcom/anall/statusbar/DropDowmLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 122
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    invoke-virtual {p0}, Lcom/anall/statusbar/DropDowmLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/anall/statusbar/DropDowmLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "deep_black"

    const-string v6, "color"

    invoke-static {v4, v5, v6}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private show(I)V
    .locals 7
    .parameter "which"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 95
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/anall/statusbar/DropDowmLinearLayout;->getChildCount()I

    move-result v2

    if-lt v2, v6, :cond_0

    invoke-virtual {p0}, Lcom/anall/statusbar/DropDowmLinearLayout;->getChildCount()I

    move-result v2

    if-le p1, v2, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/anall/statusbar/DropDowmLinearLayout;->desPlayChild(I)V

    .line 99
    iget-boolean v2, p0, Lcom/anall/statusbar/DropDowmLinearLayout;->isOpen:Z

    if-eqz v2, :cond_2

    .line 100
    invoke-direct {p0, v5}, Lcom/anall/statusbar/DropDowmLinearLayout;->desPlayChild(I)V

    .line 101
    invoke-virtual {p0}, Lcom/anall/statusbar/DropDowmLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "item_selected"

    const-string v4, "drawable"

    invoke-static {v2, v3, v4}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/anall/statusbar/DropDowmLinearLayout;->setBackgroundResource(I)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/anall/statusbar/DropDowmLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/anall/statusbar/DropDowmLinearLayout;->mSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v3}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    iput-boolean v5, p0, Lcom/anall/statusbar/DropDowmLinearLayout;->isOpen:Z

    .line 104
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 105
    .local v1, xy:[I
    invoke-virtual {p0}, Lcom/anall/statusbar/DropDowmLinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/anall/statusbar/DropDowmLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 106
    new-instance v0, Lcom/anall/statusbar/DropDowmLinearLayout$ScrollRunnable;

    invoke-direct {v0, p0}, Lcom/anall/statusbar/DropDowmLinearLayout$ScrollRunnable;-><init>(Lcom/anall/statusbar/DropDowmLinearLayout;)V

    .line 107
    .local v0, runnable:Lcom/anall/statusbar/DropDowmLinearLayout$ScrollRunnable;
    aget v2, v1, v6

    invoke-virtual {v0, v2}, Lcom/anall/statusbar/DropDowmLinearLayout$ScrollRunnable;->setScrollY(I)V

    .line 108
    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/anall/statusbar/DropDowmLinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 110
    .end local v0           #runnable:Lcom/anall/statusbar/DropDowmLinearLayout$ScrollRunnable;
    .end local v1           #xy:[I
    :cond_2
    invoke-virtual {p0, p1}, Lcom/anall/statusbar/DropDowmLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/anall/statusbar/DropDowmLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    iput v2, p0, Lcom/anall/statusbar/DropDowmLinearLayout;->selectedID:I

    .line 112
    invoke-virtual {p0}, Lcom/anall/statusbar/DropDowmLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 113
    const/high16 v3, 0x106

    .line 112
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/anall/statusbar/DropDowmLinearLayout;->setBackgroundColor(I)V

    .line 114
    iput-boolean v6, p0, Lcom/anall/statusbar/DropDowmLinearLayout;->isOpen:Z

    goto :goto_0
.end method


# virtual methods
.method public addChild([ILandroid/view/View$OnClickListener;)V
    .locals 6
    .parameter "child"
    .parameter "listener"

    .prologue
    .line 43
    if-nez p1, :cond_1

    .line 62
    :cond_0
    return-void

    .line 46
    :cond_1
    iput-object p1, p0, Lcom/anall/statusbar/DropDowmLinearLayout;->mChild:[I

    .line 47
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_0

    .line 48
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    .line 49
    const/4 v5, -0x2

    .line 48
    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/anall/statusbar/DropDowmLinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 51
    .local v3, tv:Landroid/widget/TextView;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 52
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    const/16 v4, 0x53

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 54
    iget-object v4, p0, Lcom/anall/statusbar/DropDowmLinearLayout;->mContext:Landroid/content/Context;

    const/high16 v5, 0x4120

    invoke-static {v4, v5}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v4

    float-to-int v2, v4

    .line 55
    .local v2, padding:I
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 56
    aget v4, p1, v0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 57
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    aget v4, p1, v0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    .line 60
    invoke-virtual {p0, v3}, Lcom/anall/statusbar/DropDowmLinearLayout;->addView(Landroid/view/View;)V

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSelectedChildID()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/anall/statusbar/DropDowmLinearLayout;->selectedID:I

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/anall/statusbar/DropDowmLinearLayout;->isOpen:Z

    return v0
.end method

.method public selected(I)V
    .locals 2
    .parameter "childID"

    .prologue
    .line 136
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/anall/statusbar/DropDowmLinearLayout;->mChild:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 143
    :goto_1
    return-void

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/anall/statusbar/DropDowmLinearLayout;->mChild:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 138
    iput p1, p0, Lcom/anall/statusbar/DropDowmLinearLayout;->selectedID:I

    .line 139
    invoke-direct {p0, v0}, Lcom/anall/statusbar/DropDowmLinearLayout;->show(I)V

    goto :goto_1

    .line 136
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setMargins(IIII)V
    .locals 6
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/anall/statusbar/DropDowmLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 37
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/anall/statusbar/DropDowmLinearLayout;->mContext:Landroid/content/Context;

    int-to-float v2, p1

    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 38
    iget-object v2, p0, Lcom/anall/statusbar/DropDowmLinearLayout;->mContext:Landroid/content/Context;

    int-to-float v3, p2

    invoke-static {v2, v3}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/anall/statusbar/DropDowmLinearLayout;->mContext:Landroid/content/Context;

    int-to-float v4, p3

    invoke-static {v3, v4}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    .line 39
    iget-object v4, p0, Lcom/anall/statusbar/DropDowmLinearLayout;->mContext:Landroid/content/Context;

    int-to-float v5, p4

    invoke-static {v4, v5}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    .line 37
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 40
    return-void
.end method

.method public show(IZ)V
    .locals 0
    .parameter "which"
    .parameter "isOpen"

    .prologue
    .line 90
    iput-boolean p2, p0, Lcom/anall/statusbar/DropDowmLinearLayout;->isOpen:Z

    .line 91
    invoke-direct {p0, p1}, Lcom/anall/statusbar/DropDowmLinearLayout;->show(I)V

    .line 92
    return-void
.end method
