.class Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;
.super Landroid/os/Handler;
.source "TopAppCellView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/view/TopAppCellView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/view/TopAppCellView;


# direct methods
.method private constructor <init>(Lcom/lx/launcher8/view/TopAppCellView;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lx/launcher8/view/TopAppCellView;Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;-><init>(Lcom/lx/launcher8/view/TopAppCellView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 240
    iget-object v7, p0, Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    #getter for: Lcom/lx/launcher8/view/TopAppCellView;->mRootView:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/lx/launcher8/view/TopAppCellView;->access$3(Lcom/lx/launcher8/view/TopAppCellView;)Landroid/widget/LinearLayout;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    #getter for: Lcom/lx/launcher8/view/TopAppCellView;->mCount:I
    invoke-static {v7}, Lcom/lx/launcher8/view/TopAppCellView;->access$4(Lcom/lx/launcher8/view/TopAppCellView;)I

    move-result v7

    if-nez v7, :cond_1

    .line 241
    :cond_0
    iget-object v7, p0, Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    #setter for: Lcom/lx/launcher8/view/TopAppCellView;->mIsPlaying:Z
    invoke-static {v7, v10}, Lcom/lx/launcher8/view/TopAppCellView;->access$5(Lcom/lx/launcher8/view/TopAppCellView;Z)V

    .line 299
    :goto_0
    return-void

    .line 245
    :cond_1
    const/4 v0, 0x0

    .line 246
    .local v0, Only:Lcom/lx/launcher8/view/TopAppCellView$IconItem;
    iget-object v7, p0, Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    #getter for: Lcom/lx/launcher8/view/TopAppCellView;->itemCount:I
    invoke-static {v7}, Lcom/lx/launcher8/view/TopAppCellView;->access$6(Lcom/lx/launcher8/view/TopAppCellView;)I

    move-result v7

    if-ne v7, v9, :cond_5

    .line 247
    iget-object v7, p0, Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    #getter for: Lcom/lx/launcher8/view/TopAppCellView;->mRootView:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/lx/launcher8/view/TopAppCellView;->access$3(Lcom/lx/launcher8/view/TopAppCellView;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 248
    .local v5, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/view/TopAppCellView$IconItem;

    .line 249
    .local v4, item:Lcom/lx/launcher8/view/TopAppCellView$IconItem;
    move-object v0, v4

    .line 250
    iget-boolean v7, v4, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->isDisplay:Z

    if-eqz v7, :cond_4

    .line 251
    iput-boolean v10, v4, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->isDisplay:Z

    .line 252
    iget-object v7, p0, Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    #getter for: Lcom/lx/launcher8/view/TopAppCellView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lx/launcher8/view/TopAppCellView;->access$2(Lcom/lx/launcher8/view/TopAppCellView;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f040002

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 253
    .local v1, anim:Landroid/view/animation/Animation;
    iget-object v7, p0, Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    invoke-virtual {v7, v1}, Lcom/lx/launcher8/view/TopAppCellView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 279
    .end local v1           #anim:Landroid/view/animation/Animation;
    .end local v4           #item:Lcom/lx/launcher8/view/TopAppCellView$IconItem;
    .end local v5           #layout:Landroid/widget/LinearLayout;
    :cond_2
    :goto_1
    const/16 v6, 0x9c4

    .line 280
    .local v6, time:I
    if-eqz v0, :cond_8

    iget-boolean v7, v0, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->isDisplay:Z

    if-nez v7, :cond_8

    .line 281
    const/16 v6, 0x12c

    .line 287
    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    #getter for: Lcom/lx/launcher8/view/TopAppCellView;->mCount:I
    invoke-static {v7}, Lcom/lx/launcher8/view/TopAppCellView;->access$4(Lcom/lx/launcher8/view/TopAppCellView;)I

    move-result v7

    if-eqz v7, :cond_9

    .line 288
    iget-object v7, p0, Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    #setter for: Lcom/lx/launcher8/view/TopAppCellView;->mIsPlaying:Z
    invoke-static {v7, v9}, Lcom/lx/launcher8/view/TopAppCellView;->access$5(Lcom/lx/launcher8/view/TopAppCellView;Z)V

    .line 289
    iget-object v7, p0, Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    #getter for: Lcom/lx/launcher8/view/TopAppCellView;->mHandler:Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;
    invoke-static {v7}, Lcom/lx/launcher8/view/TopAppCellView;->access$9(Lcom/lx/launcher8/view/TopAppCellView;)Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;

    move-result-object v7

    int-to-long v8, v6

    invoke-virtual {v7, v10, v8, v9}, Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 255
    .end local v6           #time:I
    .restart local v4       #item:Lcom/lx/launcher8/view/TopAppCellView$IconItem;
    .restart local v5       #layout:Landroid/widget/LinearLayout;
    :cond_4
    iput-boolean v9, v4, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->isDisplay:Z

    .line 256
    iget-object v7, p0, Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    #calls: Lcom/lx/launcher8/view/TopAppCellView;->getImageBitmap()Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/lx/launcher8/view/TopAppCellView;->access$7(Lcom/lx/launcher8/view/TopAppCellView;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 257
    .local v2, bit:Landroid/graphics/Bitmap;
    invoke-virtual {v4, v2, v10}, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 258
    iget-object v7, p0, Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    #getter for: Lcom/lx/launcher8/view/TopAppCellView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lx/launcher8/view/TopAppCellView;->access$2(Lcom/lx/launcher8/view/TopAppCellView;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f04000c

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 259
    .restart local v1       #anim:Landroid/view/animation/Animation;
    iget-object v7, p0, Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    invoke-virtual {v7, v1}, Lcom/lx/launcher8/view/TopAppCellView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 262
    .end local v1           #anim:Landroid/view/animation/Animation;
    .end local v2           #bit:Landroid/graphics/Bitmap;
    .end local v4           #item:Lcom/lx/launcher8/view/TopAppCellView$IconItem;
    .end local v5           #layout:Landroid/widget/LinearLayout;
    :cond_5
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    iget-object v7, p0, Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    #getter for: Lcom/lx/launcher8/view/TopAppCellView;->mRootView:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/lx/launcher8/view/TopAppCellView;->access$3(Lcom/lx/launcher8/view/TopAppCellView;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 263
    iget-object v7, p0, Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    #getter for: Lcom/lx/launcher8/view/TopAppCellView;->mRootView:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/lx/launcher8/view/TopAppCellView;->access$3(Lcom/lx/launcher8/view/TopAppCellView;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 264
    .restart local v5       #layout:Landroid/widget/LinearLayout;
    iget-object v7, p0, Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    iget-object v8, p0, Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    #getter for: Lcom/lx/launcher8/view/TopAppCellView;->countX:I
    invoke-static {v8}, Lcom/lx/launcher8/view/TopAppCellView;->access$0(Lcom/lx/launcher8/view/TopAppCellView;)I

    move-result v8

    #calls: Lcom/lx/launcher8/view/TopAppCellView;->getRandom(I)I
    invoke-static {v7, v8}, Lcom/lx/launcher8/view/TopAppCellView;->access$8(Lcom/lx/launcher8/view/TopAppCellView;I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/view/TopAppCellView$IconItem;

    .line 265
    .restart local v4       #item:Lcom/lx/launcher8/view/TopAppCellView$IconItem;
    iget-boolean v7, v4, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->isDisplay:Z

    if-eqz v7, :cond_7

    .line 266
    iput-boolean v10, v4, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->isDisplay:Z

    .line 267
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v9}, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 273
    :goto_4
    iget-object v7, p0, Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    #getter for: Lcom/lx/launcher8/view/TopAppCellView;->itemCount:I
    invoke-static {v7}, Lcom/lx/launcher8/view/TopAppCellView;->access$6(Lcom/lx/launcher8/view/TopAppCellView;)I

    move-result v7

    if-ne v7, v9, :cond_6

    .line 274
    move-object v0, v4

    .line 262
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 269
    :cond_7
    iput-boolean v9, v4, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->isDisplay:Z

    .line 270
    iget-object v7, p0, Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    #calls: Lcom/lx/launcher8/view/TopAppCellView;->getImageBitmap()Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/lx/launcher8/view/TopAppCellView;->access$7(Lcom/lx/launcher8/view/TopAppCellView;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 271
    .restart local v2       #bit:Landroid/graphics/Bitmap;
    invoke-virtual {v4, v2, v9}, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->setBitmap(Landroid/graphics/Bitmap;Z)V

    goto :goto_4

    .line 283
    .end local v2           #bit:Landroid/graphics/Bitmap;
    .end local v3           #i:I
    .end local v4           #item:Lcom/lx/launcher8/view/TopAppCellView$IconItem;
    .end local v5           #layout:Landroid/widget/LinearLayout;
    .restart local v6       #time:I
    :cond_8
    iget-object v7, p0, Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    #getter for: Lcom/lx/launcher8/view/TopAppCellView;->itemCount:I
    invoke-static {v7}, Lcom/lx/launcher8/view/TopAppCellView;->access$6(Lcom/lx/launcher8/view/TopAppCellView;)I

    move-result v7

    if-ne v7, v9, :cond_3

    .line 284
    iget-object v7, p0, Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    const/16 v8, 0x14

    #calls: Lcom/lx/launcher8/view/TopAppCellView;->getRandom(I)I
    invoke-static {v7, v8}, Lcom/lx/launcher8/view/TopAppCellView;->access$8(Lcom/lx/launcher8/view/TopAppCellView;I)I

    move-result v7

    add-int/lit8 v7, v7, 0x14

    mul-int/lit8 v6, v7, 0x64

    goto/16 :goto_2

    .line 291
    :cond_9
    if-eqz v0, :cond_a

    iget-object v7, p0, Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    #getter for: Lcom/lx/launcher8/view/TopAppCellView;->itemCount:I
    invoke-static {v7}, Lcom/lx/launcher8/view/TopAppCellView;->access$6(Lcom/lx/launcher8/view/TopAppCellView;)I

    move-result v7

    if-ne v7, v9, :cond_a

    iget-boolean v7, v0, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->isDisplay:Z

    if-nez v7, :cond_a

    .line 292
    invoke-virtual {v0}, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->clearAnimation()V

    .line 293
    iput-boolean v9, v0, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->isDisplay:Z

    .line 294
    iget-object v7, p0, Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    #calls: Lcom/lx/launcher8/view/TopAppCellView;->getImageBitmap()Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/lx/launcher8/view/TopAppCellView;->access$7(Lcom/lx/launcher8/view/TopAppCellView;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 295
    .restart local v2       #bit:Landroid/graphics/Bitmap;
    invoke-virtual {v0, v2, v10}, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 297
    .end local v2           #bit:Landroid/graphics/Bitmap;
    :cond_a
    iget-object v7, p0, Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/TopAppCellView;

    #setter for: Lcom/lx/launcher8/view/TopAppCellView;->mIsPlaying:Z
    invoke-static {v7, v10}, Lcom/lx/launcher8/view/TopAppCellView;->access$5(Lcom/lx/launcher8/view/TopAppCellView;Z)V

    goto/16 :goto_0
.end method
