.class Lcom/lx/launcher8/view/TopAppCellView$IconItem;
.super Landroid/widget/ImageView;
.source "TopAppCellView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/view/TopAppCellView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IconItem"
.end annotation


# instance fields
.field isDisplay:Z

.field final synthetic this$0:Lcom/lx/launcher8/view/TopAppCellView;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/view/TopAppCellView;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    const/16 v2, 0xa

    .line 167
    iput-object p1, p0, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    .line 168
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 165
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->isDisplay:Z

    .line 169
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 170
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 171
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->setPadding(IIII)V

    .line 173
    return-void
.end method


# virtual methods
.method setBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 3
    .parameter "bit"
    .parameter "animation"

    .prologue
    const/4 v2, 0x1

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, anim:Landroid/view/animation/Animation;
    if-nez p1, :cond_3

    .line 184
    if-eqz p2, :cond_2

    .line 185
    iget-object v1, p0, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    #getter for: Lcom/lx/launcher8/view/TopAppCellView;->countX:I
    invoke-static {v1}, Lcom/lx/launcher8/view/TopAppCellView;->access$0(Lcom/lx/launcher8/view/TopAppCellView;)I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    #getter for: Lcom/lx/launcher8/view/TopAppCellView;->countY:I
    invoke-static {v1}, Lcom/lx/launcher8/view/TopAppCellView;->access$1(Lcom/lx/launcher8/view/TopAppCellView;)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 186
    iget-object v1, p0, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    #getter for: Lcom/lx/launcher8/view/TopAppCellView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lx/launcher8/view/TopAppCellView;->access$2(Lcom/lx/launcher8/view/TopAppCellView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 190
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->startAnimation(Landroid/view/animation/Animation;)V

    .line 191
    new-instance v1, Lcom/lx/launcher8/view/TopAppCellView$IconItem$1;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/view/TopAppCellView$IconItem$1;-><init>(Lcom/lx/launcher8/view/TopAppCellView$IconItem;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 220
    :cond_0
    :goto_1
    return-void

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    #getter for: Lcom/lx/launcher8/view/TopAppCellView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lx/launcher8/view/TopAppCellView;->access$2(Lcom/lx/launcher8/view/TopAppCellView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 207
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 210
    :cond_3
    invoke-virtual {p0, p1}, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 211
    if-eqz p2, :cond_0

    .line 212
    iget-object v1, p0, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    #getter for: Lcom/lx/launcher8/view/TopAppCellView;->countX:I
    invoke-static {v1}, Lcom/lx/launcher8/view/TopAppCellView;->access$0(Lcom/lx/launcher8/view/TopAppCellView;)I

    move-result v1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    #getter for: Lcom/lx/launcher8/view/TopAppCellView;->countY:I
    invoke-static {v1}, Lcom/lx/launcher8/view/TopAppCellView;->access$1(Lcom/lx/launcher8/view/TopAppCellView;)I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 213
    iget-object v1, p0, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    #getter for: Lcom/lx/launcher8/view/TopAppCellView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lx/launcher8/view/TopAppCellView;->access$2(Lcom/lx/launcher8/view/TopAppCellView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 217
    :goto_2
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 215
    :cond_4
    iget-object v1, p0, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    #getter for: Lcom/lx/launcher8/view/TopAppCellView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lx/launcher8/view/TopAppCellView;->access$2(Lcom/lx/launcher8/view/TopAppCellView;)Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f04

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_2
.end method
