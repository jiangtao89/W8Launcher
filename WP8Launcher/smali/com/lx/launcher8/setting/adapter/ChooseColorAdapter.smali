.class public Lcom/lx/launcher8/setting/adapter/ChooseColorAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChooseColorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/adapter/ChooseColorAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private colorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/setting/bean/ColorInfo;",
            ">;"
        }
    .end annotation
.end field

.field itemWidth:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 3
    .parameter "con"
    .parameter
    .parameter "wallPaper"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/setting/bean/ColorInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, colors:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/setting/bean/ColorInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/lx/launcher8/setting/adapter/ChooseColorAdapter;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/lx/launcher8/setting/adapter/ChooseColorAdapter;->colorList:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 28
    .local v1, width:I
    const/high16 v2, 0x4140

    invoke-static {p1, v2}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v2

    float-to-int v0, v2

    .line 29
    .local v0, padding:I
    mul-int/lit8 v2, v0, 0x5

    sub-int v2, v1, v2

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/lx/launcher8/setting/adapter/ChooseColorAdapter;->itemWidth:I

    .line 33
    return-void
.end method


# virtual methods
.method public getColorList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/setting/bean/ColorInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseColorAdapter;->colorList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseColorAdapter;->colorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 46
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 76
    move-object v0, p2

    check-cast v0, Lcom/anall/colorpick/ColorPanelView;

    .line 77
    .local v0, cv:Lcom/anall/colorpick/ColorPanelView;
    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/anall/colorpick/ColorPanelView;

    .end local v0           #cv:Lcom/anall/colorpick/ColorPanelView;
    iget-object v1, p0, Lcom/lx/launcher8/setting/adapter/ChooseColorAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anall/colorpick/ColorPanelView;-><init>(Landroid/content/Context;)V

    .line 79
    .restart local v0       #cv:Lcom/anall/colorpick/ColorPanelView;
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget v2, p0, Lcom/lx/launcher8/setting/adapter/ChooseColorAdapter;->itemWidth:I

    iget v3, p0, Lcom/lx/launcher8/setting/adapter/ChooseColorAdapter;->itemWidth:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/anall/colorpick/ColorPanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/adapter/ChooseColorAdapter;->colorList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/setting/bean/ColorInfo;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/ColorInfo;->getColorValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anall/colorpick/ColorPanelView;->setColor(I)V

    .line 82
    return-object v0
.end method

.method public setColorList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/setting/bean/ColorInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, colorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/setting/bean/ColorInfo;>;"
    iput-object p1, p0, Lcom/lx/launcher8/setting/adapter/ChooseColorAdapter;->colorList:Ljava/util/ArrayList;

    .line 95
    return-void
.end method
