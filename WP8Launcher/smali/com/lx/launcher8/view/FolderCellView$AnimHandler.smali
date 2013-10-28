.class Lcom/lx/launcher8/view/FolderCellView$AnimHandler;
.super Landroid/os/Handler;
.source "FolderCellView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/view/FolderCellView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/view/FolderCellView;


# direct methods
.method private constructor <init>(Lcom/lx/launcher8/view/FolderCellView;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/FolderCellView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lx/launcher8/view/FolderCellView;Lcom/lx/launcher8/view/FolderCellView$AnimHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;-><init>(Lcom/lx/launcher8/view/FolderCellView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 311
    iget-object v7, p0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/FolderCellView;

    #getter for: Lcom/lx/launcher8/view/FolderCellView;->mRootView:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/lx/launcher8/view/FolderCellView;->access$3(Lcom/lx/launcher8/view/FolderCellView;)Landroid/widget/LinearLayout;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/FolderCellView;

    #getter for: Lcom/lx/launcher8/view/FolderCellView;->count:I
    invoke-static {v7}, Lcom/lx/launcher8/view/FolderCellView;->access$4(Lcom/lx/launcher8/view/FolderCellView;)I

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/FolderCellView;

    #getter for: Lcom/lx/launcher8/view/FolderCellView;->isAnimation:Z
    invoke-static {v7}, Lcom/lx/launcher8/view/FolderCellView;->access$5(Lcom/lx/launcher8/view/FolderCellView;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 312
    :cond_0
    iget-object v7, p0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/FolderCellView;

    #setter for: Lcom/lx/launcher8/view/FolderCellView;->count:I
    invoke-static {v7, v10}, Lcom/lx/launcher8/view/FolderCellView;->access$6(Lcom/lx/launcher8/view/FolderCellView;I)V

    .line 313
    iget-object v7, p0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/FolderCellView;

    #setter for: Lcom/lx/launcher8/view/FolderCellView;->isPlaying:Z
    invoke-static {v7, v10}, Lcom/lx/launcher8/view/FolderCellView;->access$7(Lcom/lx/launcher8/view/FolderCellView;Z)V

    .line 375
    :goto_0
    return-void

    .line 316
    :cond_1
    const/4 v0, 0x0

    .line 317
    .local v0, Only:Lcom/lx/launcher8/view/FolderCellView$FolderItem;
    iget-object v7, p0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/FolderCellView;

    #getter for: Lcom/lx/launcher8/view/FolderCellView;->itemCount:I
    invoke-static {v7}, Lcom/lx/launcher8/view/FolderCellView;->access$8(Lcom/lx/launcher8/view/FolderCellView;)I

    move-result v7

    if-ne v7, v9, :cond_5

    .line 318
    iget-object v7, p0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/FolderCellView;

    #getter for: Lcom/lx/launcher8/view/FolderCellView;->mRootView:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/lx/launcher8/view/FolderCellView;->access$3(Lcom/lx/launcher8/view/FolderCellView;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 319
    .local v5, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/view/FolderCellView$FolderItem;

    .line 320
    .local v4, item:Lcom/lx/launcher8/view/FolderCellView$FolderItem;
    move-object v0, v4

    .line 321
    iget-boolean v7, v4, Lcom/lx/launcher8/view/FolderCellView$FolderItem;->isDisplay:Z

    if-eqz v7, :cond_4

    .line 322
    iput-boolean v10, v4, Lcom/lx/launcher8/view/FolderCellView$FolderItem;->isDisplay:Z

    .line 323
    iget-object v7, p0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/FolderCellView;

    #getter for: Lcom/lx/launcher8/view/FolderCellView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lx/launcher8/view/FolderCellView;->access$2(Lcom/lx/launcher8/view/FolderCellView;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f040002

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 324
    .local v1, anim:Landroid/view/animation/Animation;
    iget-object v7, p0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/FolderCellView;

    invoke-virtual {v7, v1}, Lcom/lx/launcher8/view/FolderCellView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 349
    .end local v1           #anim:Landroid/view/animation/Animation;
    .end local v4           #item:Lcom/lx/launcher8/view/FolderCellView$FolderItem;
    .end local v5           #layout:Landroid/widget/LinearLayout;
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/FolderCellView;

    #getter for: Lcom/lx/launcher8/view/FolderCellView;->count:I
    invoke-static {v7}, Lcom/lx/launcher8/view/FolderCellView;->access$4(Lcom/lx/launcher8/view/FolderCellView;)I

    move-result v7

    if-lez v7, :cond_8

    .line 350
    iget-object v7, p0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/FolderCellView;

    #getter for: Lcom/lx/launcher8/view/FolderCellView;->count:I
    invoke-static {v7}, Lcom/lx/launcher8/view/FolderCellView;->access$4(Lcom/lx/launcher8/view/FolderCellView;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    #setter for: Lcom/lx/launcher8/view/FolderCellView;->count:I
    invoke-static {v7, v8}, Lcom/lx/launcher8/view/FolderCellView;->access$6(Lcom/lx/launcher8/view/FolderCellView;I)V

    .line 354
    :goto_2
    const/16 v6, 0x9c4

    .line 355
    .local v6, time:I
    if-eqz v0, :cond_9

    iget-boolean v7, v0, Lcom/lx/launcher8/view/FolderCellView$FolderItem;->isDisplay:Z

    if-nez v7, :cond_9

    .line 356
    const/16 v6, 0x12c

    .line 362
    :cond_3
    :goto_3
    iget-object v7, p0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/FolderCellView;

    #getter for: Lcom/lx/launcher8/view/FolderCellView;->isAnimation:Z
    invoke-static {v7}, Lcom/lx/launcher8/view/FolderCellView;->access$5(Lcom/lx/launcher8/view/FolderCellView;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/FolderCellView;

    #getter for: Lcom/lx/launcher8/view/FolderCellView;->count:I
    invoke-static {v7}, Lcom/lx/launcher8/view/FolderCellView;->access$4(Lcom/lx/launcher8/view/FolderCellView;)I

    move-result v7

    if-eqz v7, :cond_a

    .line 363
    iget-object v7, p0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/FolderCellView;

    #setter for: Lcom/lx/launcher8/view/FolderCellView;->isPlaying:Z
    invoke-static {v7, v9}, Lcom/lx/launcher8/view/FolderCellView;->access$7(Lcom/lx/launcher8/view/FolderCellView;Z)V

    .line 364
    iget-object v7, p0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/FolderCellView;

    #getter for: Lcom/lx/launcher8/view/FolderCellView;->handler:Lcom/lx/launcher8/view/FolderCellView$AnimHandler;
    invoke-static {v7}, Lcom/lx/launcher8/view/FolderCellView;->access$11(Lcom/lx/launcher8/view/FolderCellView;)Lcom/lx/launcher8/view/FolderCellView$AnimHandler;

    move-result-object v7

    int-to-long v8, v6

    invoke-virtual {v7, v10, v8, v9}, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 326
    .end local v6           #time:I
    .restart local v4       #item:Lcom/lx/launcher8/view/FolderCellView$FolderItem;
    .restart local v5       #layout:Landroid/widget/LinearLayout;
    :cond_4
    iput-boolean v9, v4, Lcom/lx/launcher8/view/FolderCellView$FolderItem;->isDisplay:Z

    .line 327
    iget-object v7, p0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/FolderCellView;

    #calls: Lcom/lx/launcher8/view/FolderCellView;->getImageBitmap()Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/lx/launcher8/view/FolderCellView;->access$9(Lcom/lx/launcher8/view/FolderCellView;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 328
    .local v2, bit:Landroid/graphics/Bitmap;
    invoke-virtual {v4, v2, v10}, Lcom/lx/launcher8/view/FolderCellView$FolderItem;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 329
    iget-object v7, p0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/FolderCellView;

    #getter for: Lcom/lx/launcher8/view/FolderCellView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lx/launcher8/view/FolderCellView;->access$2(Lcom/lx/launcher8/view/FolderCellView;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f04000c

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 330
    .restart local v1       #anim:Landroid/view/animation/Animation;
    iget-object v7, p0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/FolderCellView;

    invoke-virtual {v7, v1}, Lcom/lx/launcher8/view/FolderCellView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 333
    .end local v1           #anim:Landroid/view/animation/Animation;
    .end local v2           #bit:Landroid/graphics/Bitmap;
    .end local v4           #item:Lcom/lx/launcher8/view/FolderCellView$FolderItem;
    .end local v5           #layout:Landroid/widget/LinearLayout;
    :cond_5
    const/4 v3, 0x0

    .local v3, i:I
    :goto_4
    iget-object v7, p0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/FolderCellView;

    #getter for: Lcom/lx/launcher8/view/FolderCellView;->mRootView:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/lx/launcher8/view/FolderCellView;->access$3(Lcom/lx/launcher8/view/FolderCellView;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 334
    iget-object v7, p0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/FolderCellView;

    #getter for: Lcom/lx/launcher8/view/FolderCellView;->mRootView:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/lx/launcher8/view/FolderCellView;->access$3(Lcom/lx/launcher8/view/FolderCellView;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 335
    .restart local v5       #layout:Landroid/widget/LinearLayout;
    iget-object v7, p0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/FolderCellView;

    iget-object v8, p0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/FolderCellView;

    #getter for: Lcom/lx/launcher8/view/FolderCellView;->countX:I
    invoke-static {v8}, Lcom/lx/launcher8/view/FolderCellView;->access$0(Lcom/lx/launcher8/view/FolderCellView;)I

    move-result v8

    #calls: Lcom/lx/launcher8/view/FolderCellView;->getRandom(I)I
    invoke-static {v7, v8}, Lcom/lx/launcher8/view/FolderCellView;->access$10(Lcom/lx/launcher8/view/FolderCellView;I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/view/FolderCellView$FolderItem;

    .line 336
    .restart local v4       #item:Lcom/lx/launcher8/view/FolderCellView$FolderItem;
    iget-boolean v7, v4, Lcom/lx/launcher8/view/FolderCellView$FolderItem;->isDisplay:Z

    if-eqz v7, :cond_7

    .line 337
    iput-boolean v10, v4, Lcom/lx/launcher8/view/FolderCellView$FolderItem;->isDisplay:Z

    .line 338
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v9}, Lcom/lx/launcher8/view/FolderCellView$FolderItem;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 344
    :goto_5
    iget-object v7, p0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/FolderCellView;

    #getter for: Lcom/lx/launcher8/view/FolderCellView;->itemCount:I
    invoke-static {v7}, Lcom/lx/launcher8/view/FolderCellView;->access$8(Lcom/lx/launcher8/view/FolderCellView;)I

    move-result v7

    if-ne v7, v9, :cond_6

    .line 345
    move-object v0, v4

    .line 333
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 340
    :cond_7
    iput-boolean v9, v4, Lcom/lx/launcher8/view/FolderCellView$FolderItem;->isDisplay:Z

    .line 341
    iget-object v7, p0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/FolderCellView;

    #calls: Lcom/lx/launcher8/view/FolderCellView;->getImageBitmap()Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/lx/launcher8/view/FolderCellView;->access$9(Lcom/lx/launcher8/view/FolderCellView;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 342
    .restart local v2       #bit:Landroid/graphics/Bitmap;
    invoke-virtual {v4, v2, v9}, Lcom/lx/launcher8/view/FolderCellView$FolderItem;->setBitmap(Landroid/graphics/Bitmap;Z)V

    goto :goto_5

    .line 352
    .end local v2           #bit:Landroid/graphics/Bitmap;
    .end local v3           #i:I
    .end local v4           #item:Lcom/lx/launcher8/view/FolderCellView$FolderItem;
    .end local v5           #layout:Landroid/widget/LinearLayout;
    :cond_8
    iget-object v7, p0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/FolderCellView;

    #setter for: Lcom/lx/launcher8/view/FolderCellView;->count:I
    invoke-static {v7, v10}, Lcom/lx/launcher8/view/FolderCellView;->access$6(Lcom/lx/launcher8/view/FolderCellView;I)V

    goto/16 :goto_2

    .line 358
    .restart local v6       #time:I
    :cond_9
    iget-object v7, p0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/FolderCellView;

    #getter for: Lcom/lx/launcher8/view/FolderCellView;->itemCount:I
    invoke-static {v7}, Lcom/lx/launcher8/view/FolderCellView;->access$8(Lcom/lx/launcher8/view/FolderCellView;)I

    move-result v7

    if-ne v7, v9, :cond_3

    .line 359
    iget-object v7, p0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/FolderCellView;

    const/16 v8, 0x14

    #calls: Lcom/lx/launcher8/view/FolderCellView;->getRandom(I)I
    invoke-static {v7, v8}, Lcom/lx/launcher8/view/FolderCellView;->access$10(Lcom/lx/launcher8/view/FolderCellView;I)I

    move-result v7

    add-int/lit8 v7, v7, 0x14

    mul-int/lit8 v6, v7, 0x64

    goto/16 :goto_3

    .line 366
    :cond_a
    if-eqz v0, :cond_b

    iget-object v7, p0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/FolderCellView;

    #getter for: Lcom/lx/launcher8/view/FolderCellView;->itemCount:I
    invoke-static {v7}, Lcom/lx/launcher8/view/FolderCellView;->access$8(Lcom/lx/launcher8/view/FolderCellView;)I

    move-result v7

    if-ne v7, v9, :cond_b

    iget-boolean v7, v0, Lcom/lx/launcher8/view/FolderCellView$FolderItem;->isDisplay:Z

    if-nez v7, :cond_b

    .line 367
    invoke-virtual {v0}, Lcom/lx/launcher8/view/FolderCellView$FolderItem;->clearAnimation()V

    .line 368
    iput-boolean v9, v0, Lcom/lx/launcher8/view/FolderCellView$FolderItem;->isDisplay:Z

    .line 369
    iget-object v7, p0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/FolderCellView;

    #calls: Lcom/lx/launcher8/view/FolderCellView;->getImageBitmap()Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/lx/launcher8/view/FolderCellView;->access$9(Lcom/lx/launcher8/view/FolderCellView;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 370
    .restart local v2       #bit:Landroid/graphics/Bitmap;
    invoke-virtual {v0, v2, v10}, Lcom/lx/launcher8/view/FolderCellView$FolderItem;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 372
    .end local v2           #bit:Landroid/graphics/Bitmap;
    :cond_b
    iget-object v7, p0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->this$0:Lcom/lx/launcher8/view/FolderCellView;

    #setter for: Lcom/lx/launcher8/view/FolderCellView;->isPlaying:Z
    invoke-static {v7, v10}, Lcom/lx/launcher8/view/FolderCellView;->access$7(Lcom/lx/launcher8/view/FolderCellView;Z)V

    goto/16 :goto_0
.end method
