.class Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;
.super Ljava/lang/Object;
.source "TopAppDownloadView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;

.field private final synthetic val$fileSeed:Lcom/lx/launcher8/download/FileSeed;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;Lcom/lx/launcher8/download/FileSeed;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;->this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;->val$fileSeed:Lcom/lx/launcher8/download/FileSeed;

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;
    .locals 1
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;->this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 318
    const/high16 v0, -0x100

    .line 319
    .local v0, backColor:I
    const/4 v7, -0x1

    .line 320
    .local v7, textColor:I
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;->this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;
    invoke-static {v9}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    move-result-object v9

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v9}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$5(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v9

    iget v9, v9, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mbgColorValue:I

    const/high16 v10, -0x100

    if-ne v9, v10, :cond_0

    .line 321
    const/4 v0, -0x1

    .line 322
    const/high16 v7, -0x100

    .line 324
    :cond_0
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;->this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;
    invoke-static {v9}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    move-result-object v9

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v9}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$5(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f030078

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 325
    .local v6, popview:Landroid/view/View;
    new-instance v5, Landroid/widget/PopupWindow;

    const/4 v9, -0x1

    .line 326
    const/4 v10, -0x2

    .line 325
    invoke-direct {v5, v6, v9, v10, v13}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 327
    .local v5, pop:Landroid/widget/PopupWindow;
    invoke-virtual {v5, v13}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 328
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v9, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 330
    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;->val$fileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-direct {v2, p0, v9, v5}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;Lcom/lx/launcher8/download/FileSeed;Landroid/widget/PopupWindow;)V

    .line 364
    .local v2, click:Landroid/view/View$OnClickListener;
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;->this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;
    invoke-static {v9}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    move-result-object v9

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v9}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$5(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v9

    const/high16 v10, 0x41a0

    invoke-static {v9, v10}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 365
    .local v4, margin:I
    const v9, 0x7f090203

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 366
    .local v1, btn:Landroid/widget/TextView;
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 367
    invoke-virtual {v1, v4, v12, v12, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 368
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 370
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;->val$fileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v9}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v9

    const/16 v10, 0x10

    if-ne v9, v10, :cond_1

    .line 371
    const v9, 0x7f090202

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #btn:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 372
    .restart local v1       #btn:Landroid/widget/TextView;
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    invoke-virtual {v1, v4, v12, v12, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 374
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 378
    :cond_1
    const/4 v9, 0x2

    new-array v8, v9, [I

    .line 379
    .local v8, xy:[I
    invoke-virtual {p1, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 380
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;->this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;
    invoke-static {v9}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    move-result-object v9

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mRes:Landroid/content/res/Resources;
    invoke-static {v9}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$6(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v3, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 381
    .local v3, height:I
    aget v9, v8, v13

    div-int/lit8 v10, v3, 0x2

    if-le v9, v10, :cond_2

    .line 382
    const/16 v9, 0x53

    aget v10, v8, v13

    sub-int v10, v3, v10

    invoke-virtual {v5, p1, v9, v12, v10}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_2
    const/16 v9, 0x33

    aget v10, v8, v13

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v5, p1, v9, v12, v10}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method
