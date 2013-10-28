.class public Lcom/lx/launcher8/view/FolderDragGridView;
.super Landroid/widget/GridView;
.source "FolderDragGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;,
        Lcom/lx/launcher8/view/FolderDragGridView$ViewHolder;
    }
.end annotation


# instance fields
.field animHandler:Landroid/os/Handler;

.field private horizontalSpacing:I

.field private isEditing:Z

.field private isMoving:Z

.field private itemHeight:I

.field private itemWidth:I

.field private mAnimaPos:I

.field private mBgColor:I

.field private mContext:Landroid/content/Context;

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragImg:Landroid/widget/ImageView;

.field private mDragPos:I

.field private mDropPos:I

.field private mNumColumns:I

.field private mSatrtPos:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private padding:I

.field private verticalSpacing:I

.field private windowManager:Landroid/view/WindowManager;

.field private windowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 39
    iput v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mSatrtPos:I

    iput v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragPos:I

    iput v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDropPos:I

    iput v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mAnimaPos:I

    .line 41
    iput-object v2, p0, Lcom/lx/launcher8/view/FolderDragGridView;->windowManager:Landroid/view/WindowManager;

    .line 42
    iput-object v2, p0, Lcom/lx/launcher8/view/FolderDragGridView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    .line 44
    iput v0, p0, Lcom/lx/launcher8/view/FolderDragGridView;->horizontalSpacing:I

    .line 45
    iput v0, p0, Lcom/lx/launcher8/view/FolderDragGridView;->verticalSpacing:I

    .line 50
    iput-boolean v0, p0, Lcom/lx/launcher8/view/FolderDragGridView;->isMoving:Z

    .line 53
    iput-boolean v0, p0, Lcom/lx/launcher8/view/FolderDragGridView;->isEditing:Z

    .line 271
    new-instance v0, Lcom/lx/launcher8/view/FolderDragGridView$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/view/FolderDragGridView$1;-><init>(Lcom/lx/launcher8/view/FolderDragGridView;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/FolderDragGridView;->animHandler:Landroid/os/Handler;

    .line 315
    iput v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mBgColor:I

    .line 65
    iput-object p1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mContext:Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Lcom/lx/launcher8/view/FolderDragGridView;->initStyle()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mSatrtPos:I

    iput v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragPos:I

    iput v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDropPos:I

    iput v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mAnimaPos:I

    .line 41
    iput-object v2, p0, Lcom/lx/launcher8/view/FolderDragGridView;->windowManager:Landroid/view/WindowManager;

    .line 42
    iput-object v2, p0, Lcom/lx/launcher8/view/FolderDragGridView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    .line 44
    iput v0, p0, Lcom/lx/launcher8/view/FolderDragGridView;->horizontalSpacing:I

    .line 45
    iput v0, p0, Lcom/lx/launcher8/view/FolderDragGridView;->verticalSpacing:I

    .line 50
    iput-boolean v0, p0, Lcom/lx/launcher8/view/FolderDragGridView;->isMoving:Z

    .line 53
    iput-boolean v0, p0, Lcom/lx/launcher8/view/FolderDragGridView;->isEditing:Z

    .line 271
    new-instance v0, Lcom/lx/launcher8/view/FolderDragGridView$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/view/FolderDragGridView$1;-><init>(Lcom/lx/launcher8/view/FolderDragGridView;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/FolderDragGridView;->animHandler:Landroid/os/Handler;

    .line 315
    iput v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mBgColor:I

    .line 59
    iput-object p1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mContext:Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Lcom/lx/launcher8/view/FolderDragGridView;->initStyle()V

    .line 61
    return-void
.end method

.method private OnMove(II)V
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v11, -0x1

    const/4 v8, 0x0

    .line 213
    invoke-virtual {p0, p1, p2}, Lcom/lx/launcher8/view/FolderDragGridView;->pointToPosition(II)I

    move-result v6

    .line 214
    .local v6, touchPos:I
    if-eq v6, v11, :cond_0

    iget v7, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragPos:I

    if-eq v6, v7, :cond_0

    .line 215
    iput v6, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDropPos:I

    .line 219
    iget v7, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDropPos:I

    iget v9, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragPos:I

    sub-int v3, v7, v9

    .line 220
    .local v3, moveNum:I
    if-eqz v3, :cond_0

    .line 221
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/lx/launcher8/view/FolderDragGridView;->isMoving:Z

    .line 223
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-lt v2, v7, :cond_1

    .line 257
    .end local v2           #i:I
    .end local v3           #moveNum:I
    :cond_0
    return-void

    .line 224
    .restart local v2       #i:I
    .restart local v3       #moveNum:I
    :cond_1
    if-lez v3, :cond_5

    .line 225
    iget v7, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragPos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mAnimaPos:I

    .line 226
    iget v7, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragPos:I

    iget v9, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mNumColumns:I

    div-int/2addr v7, v9

    iget v9, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mAnimaPos:I

    .line 227
    iget v10, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mNumColumns:I

    div-int/2addr v9, v10

    .line 226
    if-ne v7, v9, :cond_3

    .line 227
    iget v7, p0, Lcom/lx/launcher8/view/FolderDragGridView;->itemWidth:I

    mul-int/lit8 v7, v7, -0x1

    iget v9, p0, Lcom/lx/launcher8/view/FolderDragGridView;->horizontalSpacing:I

    sub-int/2addr v7, v9

    .line 226
    :goto_1
    int-to-float v0, v7

    .line 230
    .local v0, Xoffset:F
    iget v7, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragPos:I

    iget v9, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mNumColumns:I

    div-int/2addr v7, v9

    iget v9, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mAnimaPos:I

    .line 231
    iget v10, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mNumColumns:I

    div-int/2addr v9, v10

    .line 230
    if-ne v7, v9, :cond_4

    move v7, v8

    :goto_2
    int-to-float v1, v7

    .line 243
    .local v1, Yoffset:F
    :goto_3
    iget v7, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mAnimaPos:I

    invoke-virtual {p0}, Lcom/lx/launcher8/view/FolderDragGridView;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v7, v9

    invoke-virtual {p0, v7}, Lcom/lx/launcher8/view/FolderDragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 244
    .local v4, moveView:Landroid/widget/ImageView;
    iget v7, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mAnimaPos:I

    iput v7, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragPos:I

    .line 245
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 246
    .local v5, msg:Landroid/os/Message;
    iput-object v4, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 247
    float-to-int v7, v0

    iput v7, v5, Landroid/os/Message;->arg1:I

    .line 248
    float-to-int v7, v1

    iput v7, v5, Landroid/os/Message;->arg2:I

    .line 249
    iput v8, v5, Landroid/os/Message;->what:I

    .line 250
    iget v7, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragPos:I

    iget v9, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDropPos:I

    if-ne v7, v9, :cond_2

    .line 251
    iput v11, v5, Landroid/os/Message;->what:I

    .line 253
    :cond_2
    iget-object v7, p0, Lcom/lx/launcher8/view/FolderDragGridView;->animHandler:Landroid/os/Handler;

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    .end local v0           #Xoffset:F
    .end local v1           #Yoffset:F
    .end local v4           #moveView:Landroid/widget/ImageView;
    .end local v5           #msg:Landroid/os/Message;
    :cond_3
    iget v7, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mNumColumns:I

    add-int/lit8 v7, v7, -0x1

    .line 229
    iget v9, p0, Lcom/lx/launcher8/view/FolderDragGridView;->itemWidth:I

    iget v10, p0, Lcom/lx/launcher8/view/FolderDragGridView;->horizontalSpacing:I

    add-int/2addr v9, v10

    .line 228
    mul-int/2addr v7, v9

    goto :goto_1

    .line 232
    .restart local v0       #Xoffset:F
    :cond_4
    iget v7, p0, Lcom/lx/launcher8/view/FolderDragGridView;->itemHeight:I

    mul-int/lit8 v7, v7, -0x1

    iget v9, p0, Lcom/lx/launcher8/view/FolderDragGridView;->verticalSpacing:I

    sub-int/2addr v7, v9

    goto :goto_2

    .line 234
    .end local v0           #Xoffset:F
    :cond_5
    iget v7, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragPos:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mAnimaPos:I

    .line 235
    iget v7, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragPos:I

    iget v9, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mNumColumns:I

    div-int/2addr v7, v9

    iget v9, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mAnimaPos:I

    .line 236
    iget v10, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mNumColumns:I

    div-int/2addr v9, v10

    .line 235
    if-ne v7, v9, :cond_6

    .line 236
    iget v7, p0, Lcom/lx/launcher8/view/FolderDragGridView;->itemWidth:I

    iget v9, p0, Lcom/lx/launcher8/view/FolderDragGridView;->horizontalSpacing:I

    add-int/2addr v7, v9

    mul-int/lit8 v7, v7, 0x1

    .line 235
    :goto_4
    int-to-float v0, v7

    .line 239
    .restart local v0       #Xoffset:F
    iget v7, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragPos:I

    iget v9, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mNumColumns:I

    div-int/2addr v7, v9

    iget v9, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mAnimaPos:I

    .line 240
    iget v10, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mNumColumns:I

    div-int/2addr v9, v10

    .line 239
    if-ne v7, v9, :cond_7

    move v7, v8

    :goto_5
    int-to-float v1, v7

    .restart local v1       #Yoffset:F
    goto :goto_3

    .line 237
    .end local v0           #Xoffset:F
    .end local v1           #Yoffset:F
    :cond_6
    iget v7, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mNumColumns:I

    add-int/lit8 v7, v7, -0x1

    neg-int v7, v7

    .line 238
    iget v9, p0, Lcom/lx/launcher8/view/FolderDragGridView;->itemWidth:I

    iget v10, p0, Lcom/lx/launcher8/view/FolderDragGridView;->horizontalSpacing:I

    add-int/2addr v9, v10

    .line 237
    mul-int/2addr v7, v9

    goto :goto_4

    .line 240
    .restart local v0       #Xoffset:F
    :cond_7
    iget v7, p0, Lcom/lx/launcher8/view/FolderDragGridView;->itemHeight:I

    mul-int/lit8 v7, v7, 0x1

    .line 241
    iget v9, p0, Lcom/lx/launcher8/view/FolderDragGridView;->verticalSpacing:I

    add-int/2addr v7, v9

    goto :goto_5
.end method

.method static synthetic access$0(Lcom/lx/launcher8/view/FolderDragGridView;)I
    .locals 1
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mSatrtPos:I

    return v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/view/FolderDragGridView;)I
    .locals 1
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDropPos:I

    return v0
.end method

.method static synthetic access$10(Lcom/lx/launcher8/view/FolderDragGridView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput p1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragPos:I

    return-void
.end method

.method static synthetic access$11(Lcom/lx/launcher8/view/FolderDragGridView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput p1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDropPos:I

    return-void
.end method

.method static synthetic access$2(Lcom/lx/launcher8/view/FolderDragGridView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput p1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mSatrtPos:I

    return-void
.end method

.method static synthetic access$3(Lcom/lx/launcher8/view/FolderDragGridView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->isMoving:Z

    return-void
.end method

.method static synthetic access$4(Lcom/lx/launcher8/view/FolderDragGridView;)I
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mNumColumns:I

    return v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/view/FolderDragGridView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->isEditing:Z

    return-void
.end method

.method static synthetic access$6(Lcom/lx/launcher8/view/FolderDragGridView;)Z
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/lx/launcher8/view/FolderDragGridView;->isEditing:Z

    return v0
.end method

.method static synthetic access$7(Lcom/lx/launcher8/view/FolderDragGridView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lx/launcher8/view/FolderDragGridView;)I
    .locals 1
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lcom/lx/launcher8/view/FolderDragGridView;->itemWidth:I

    return v0
.end method

.method static synthetic access$9(Lcom/lx/launcher8/view/FolderDragGridView;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lcom/lx/launcher8/view/FolderDragGridView;->itemHeight:I

    return v0
.end method

.method private initStyle()V
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 70
    const v1, 0x7f020061

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/view/FolderDragGridView;->setSelector(I)V

    .line 71
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 72
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/FolderDragGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x40a0

    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->padding:I

    .line 74
    iget v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->padding:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/view/FolderDragGridView;->setHorizontalSpacing(I)V

    .line 75
    iget v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->padding:I

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/view/FolderDragGridView;->setVerticalSpacing(I)V

    .line 77
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/view/FolderDragGridView;->setCacheColorHint(I)V

    .line 78
    iget v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->padding:I

    iget v2, p0, Lcom/lx/launcher8/view/FolderDragGridView;->padding:I

    iget v3, p0, Lcom/lx/launcher8/view/FolderDragGridView;->padding:I

    iget v4, p0, Lcom/lx/launcher8/view/FolderDragGridView;->padding:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/lx/launcher8/view/FolderDragGridView;->setPadding(IIII)V

    .line 79
    const/high16 v1, 0x200

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/view/FolderDragGridView;->setScrollBarStyle(I)V

    .line 80
    return-void
.end method

.method private onDrag(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 202
    iget-object v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragImg:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x3f4ccccd

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 204
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 205
    .local v0, xy:[I
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/FolderDragGridView;->getLocationOnScreen([I)V

    .line 206
    iget-object v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    aget v2, v0, v2

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragImg:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 207
    iget-object v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x1

    aget v2, v0, v2

    add-int/2addr v2, p2

    iget-object v3, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragImg:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 208
    iget-object v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragImg:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lx/launcher8/view/FolderDragGridView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    .end local v0           #xy:[I
    :cond_0
    return-void
.end method

.method private onDrop(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 307
    const/4 v0, -0x1

    iput v0, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragPos:I

    .line 308
    iget-boolean v0, p0, Lcom/lx/launcher8/view/FolderDragGridView;->isMoving:Z

    if-eqz v0, :cond_0

    .line 312
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/lx/launcher8/view/FolderDragGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private setOnItemLongClickListener(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 97
    new-instance v0, Lcom/lx/launcher8/view/FolderDragGridView$2;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/view/FolderDragGridView$2;-><init>(Lcom/lx/launcher8/view/FolderDragGridView;)V

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/FolderDragGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 116
    invoke-super {p0, p1}, Landroid/widget/GridView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private stopDrag()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lx/launcher8/view/FolderDragGridView;->isEditing:Z

    .line 154
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderDragGridView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragImg:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 156
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 158
    iput-object v2, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 160
    :cond_0
    iput-object v2, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragImg:Landroid/widget/ImageView;

    .line 162
    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 509
    const v0, -0x161617

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 510
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 511
    return-void
.end method

.method public getMoveAnimation(FFII)Landroid/view/animation/Animation;
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "pos"
    .parameter "what"

    .prologue
    const/4 v1, 0x0

    .line 260
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, p1, v1, p2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 261
    .local v0, go:Landroid/view/animation/TranslateAnimation;
    const/4 v1, -0x1

    if-ne p4, v1, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/lx/launcher8/view/FolderDragGridView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/lx/launcher8/view/FolderDragGridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x5a

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 267
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 268
    return-object v0

    .line 264
    :cond_0
    mul-int/lit8 v1, p3, 0x8

    add-int/lit8 v1, v1, 0x50

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/lx/launcher8/view/FolderDragGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->notifyDataSetChanged()V

    .line 486
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/widget/GridView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/16 v7, 0x3e8

    .line 166
    iget-object v5, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragImg:Landroid/widget/ImageView;

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragPos:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 167
    iget-object v5, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_0

    .line 168
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 170
    :cond_0
    iget-object v5, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 173
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 174
    .local v4, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 198
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 176
    .restart local v3       #x:I
    .restart local v4       #y:I
    :pswitch_0
    iget-object v5, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 177
    iget-object v5, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    float-to-int v1, v5

    .line 178
    .local v1, velocityX:I
    iget-object v5, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    float-to-int v2, v5

    .line 179
    .local v2, velocityY:I
    invoke-direct {p0, v3, v4}, Lcom/lx/launcher8/view/FolderDragGridView;->onDrag(II)V

    .line 180
    invoke-virtual {p0}, Lcom/lx/launcher8/view/FolderDragGridView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/lx/launcher8/view/FolderDragGridView;->getScrollY()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v5, v4

    const/16 v6, 0xa

    if-ge v5, v6, :cond_2

    .line 181
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/view/FolderDragGridView;->setEnabled(Z)V

    .line 182
    invoke-virtual {p0}, Lcom/lx/launcher8/view/FolderDragGridView;->getFirstVisiblePosition()I

    move-result v0

    .line 183
    .local v0, pos:I
    iget v5, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mNumColumns:I

    add-int/2addr v5, v0

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/view/FolderDragGridView;->setSelection(I)V

    goto :goto_0

    .line 184
    .end local v0           #pos:I
    :cond_2
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v5, v6

    if-ge v5, v7, :cond_1

    .line 185
    invoke-direct {p0, v3, v4}, Lcom/lx/launcher8/view/FolderDragGridView;->OnMove(II)V

    goto :goto_0

    .line 189
    .end local v1           #velocityX:I
    .end local v2           #velocityY:I
    :pswitch_1
    invoke-direct {p0}, Lcom/lx/launcher8/view/FolderDragGridView;->stopDrag()V

    .line 190
    invoke-direct {p0, v3, v4}, Lcom/lx/launcher8/view/FolderDragGridView;->onDrop(II)V

    .line 191
    iget-object v5, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_1

    .line 192
    iget-object v5, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 193
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAdapter(Ljava/util/ArrayList;I)V
    .locals 3
    .parameter
    .parameter "width"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/bean/AppCell;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 478
    .local p1, contains:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/bean/AppCell;>;"
    iget v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->padding:I

    iget v2, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mNumColumns:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    sub-int v1, p2, v1

    iget v2, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mNumColumns:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->itemWidth:I

    .line 479
    iget v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->itemWidth:I

    iput v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->itemHeight:I

    .line 480
    new-instance v0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;

    invoke-direct {v0, p0, p1}, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;-><init>(Lcom/lx/launcher8/view/FolderDragGridView;Ljava/util/ArrayList;)V

    .line 481
    .local v0, adapter:Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;
    invoke-super {p0, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 482
    return-void
.end method

.method public setBgColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 469
    iget v0, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mBgColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 470
    iput p1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mBgColor:I

    .line 475
    :goto_0
    return-void

    .line 472
    :cond_0
    iput p1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mBgColor:I

    .line 473
    invoke-virtual {p0}, Lcom/lx/launcher8/view/FolderDragGridView;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setHorizontalSpacing(I)V
    .locals 0
    .parameter "horizontalSpacing"

    .prologue
    .line 497
    invoke-super {p0, p1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 498
    iput p1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->horizontalSpacing:I

    .line 499
    return-void
.end method

.method public setNumColumns(I)V
    .locals 0
    .parameter "numColumns"

    .prologue
    .line 491
    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 492
    iput p1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mNumColumns:I

    .line 493
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1
    .parameter "verticalSpacing"

    .prologue
    .line 503
    iget v0, p0, Lcom/lx/launcher8/view/FolderDragGridView;->horizontalSpacing:I

    invoke-super {p0, v0}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 504
    iput p1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->verticalSpacing:I

    .line 505
    return-void
.end method

.method protected startDrag(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x2

    const/4 v4, 0x1

    .line 122
    iget-object v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragImg:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragImg:Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 124
    iget-object v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 126
    iput-object v6, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 128
    :cond_0
    iput-object v6, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragImg:Landroid/widget/ImageView;

    .line 130
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 131
    invoke-virtual {p1, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 132
    invoke-virtual {p1, v3}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 133
    invoke-virtual {p1, v4}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 134
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 135
    .local v0, xy:[I
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/FolderDragGridView;->getLocationOnScreen([I)V

    .line 136
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    .line 137
    iget-object v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 138
    iget-object v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    aget v3, v0, v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 139
    iget-object v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    aget v3, v0, v4

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 140
    iget-object v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 141
    iget-object v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 142
    iget-object v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x3f4ccccd

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 144
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lx/launcher8/view/FolderDragGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragImg:Landroid/widget/ImageView;

    .line 145
    iget-object v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragImg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 146
    invoke-virtual {p0}, Lcom/lx/launcher8/view/FolderDragGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 147
    const-string v2, "window"

    .line 146
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->windowManager:Landroid/view/WindowManager;

    .line 148
    iget-object v1, p0, Lcom/lx/launcher8/view/FolderDragGridView;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/lx/launcher8/view/FolderDragGridView;->mDragImg:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lx/launcher8/view/FolderDragGridView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    return-void
.end method
