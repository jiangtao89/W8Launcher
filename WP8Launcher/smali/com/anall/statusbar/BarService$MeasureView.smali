.class Lcom/anall/statusbar/BarService$MeasureView;
.super Landroid/view/View;
.source "BarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anall/statusbar/BarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MeasureView"
.end annotation


# instance fields
.field private final mMaxHeight:I

.field private final mMaxWidth:I

.field final synthetic this$0:Lcom/anall/statusbar/BarService;


# direct methods
.method public constructor <init>(Lcom/anall/statusbar/BarService;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 393
    iput-object p1, p0, Lcom/anall/statusbar/BarService$MeasureView;->this$0:Lcom/anall/statusbar/BarService;

    .line 394
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 395
    invoke-virtual {p0}, Lcom/anall/statusbar/BarService$MeasureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 396
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/anall/statusbar/BarService$MeasureView;->mMaxWidth:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/anall/statusbar/BarService$MeasureView;->mMaxHeight:I

    .line 397
    return-void
.end method

.method private isEqualLine(II)Z
    .locals 1
    .parameter "base"
    .parameter "current"

    .prologue
    .line 410
    add-int/lit8 v0, p1, -0x5

    if-le p2, v0, :cond_0

    add-int/lit8 v0, p1, 0x5

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 401
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 402
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iget-object v1, p0, Lcom/anall/statusbar/BarService$MeasureView;->this$0:Lcom/anall/statusbar/BarService;

    iget-object v1, v1, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 405
    .local v0, msg:Landroid/os/Message;
    iget v1, p0, Lcom/anall/statusbar/BarService$MeasureView;->mMaxWidth:I

    invoke-direct {p0, v1, p2}, Lcom/anall/statusbar/BarService$MeasureView;->isEqualLine(II)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/anall/statusbar/BarService$MeasureView;->mMaxHeight:I

    invoke-direct {p0, v1, p2}, Lcom/anall/statusbar/BarService$MeasureView;->isEqualLine(II)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_1
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 406
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 405
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method
