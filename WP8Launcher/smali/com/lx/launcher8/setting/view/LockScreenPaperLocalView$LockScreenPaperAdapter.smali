.class Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;
.super Landroid/widget/BaseAdapter;
.source "LockScreenPaperLocalView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LockScreenPaperAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;)Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;
    .locals 1
    .parameter

    .prologue
    .line 270
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->access$0(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->access$0(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 284
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 289
    const/4 v15, 0x0

    .line 290
    .local v15, vh:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;
    if-nez p2, :cond_3

    .line 291
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->access$1(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030036

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 292
    new-instance v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;

    .end local v15           #vh:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;
    invoke-direct/range {v15 .. v16}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;-><init>(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;)V

    .line 293
    .restart local v15       #vh:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;
    const v1, 0x7f090079

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->loading:Landroid/widget/LinearLayout;

    .line 294
    const v1, 0x7f0900ee

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->fl:Landroid/widget/FrameLayout;

    .line 295
    iget-object v1, v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->fl:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->w:I
    invoke-static {v3}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->access$2(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->gapS:I
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->access$3(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->h:I
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->access$4(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->gapS:I
    invoke-static {v5}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->access$3(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    iget-object v1, v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->fl:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 297
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->w:I
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->access$2(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->h:I
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->access$4(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)I

    move-result v2

    const/16 v3, 0x11

    invoke-direct {v12, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 298
    .local v12, params:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->gapS:I
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->access$3(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->gapS:I
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->access$3(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->gapS:I
    invoke-static {v3}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->access$3(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->gapS:I
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->access$3(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)I

    move-result v4

    invoke-virtual {v12, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 299
    const v1, 0x7f0900ef

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    .line 300
    iget-object v1, v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    const v1, 0x7f0900e4

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->textTv:Landroid/widget/TextView;

    .line 302
    const v1, 0x7f0900f0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->selected:Landroid/widget/TextView;

    .line 303
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x55

    invoke-direct {v13, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 304
    .local v13, params1:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->gapS:I
    invoke-static {v3}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->access$3(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->gapS:I
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->access$3(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v13, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 305
    iget-object v1, v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->selected:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 308
    .end local v12           #params:Landroid/widget/FrameLayout$LayoutParams;
    .end local v13           #params1:Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    iget-object v1, v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->loading:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 309
    iget-object v1, v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    iget-object v1, v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->selected:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->access$0(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)Ljava/util/List;

    move-result-object v1

    move/from16 v0, p1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lx/launcher8/setting/bean/PaperInfo;

    .line 312
    .local v14, pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    iput-object v14, v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    .line 313
    iget-object v1, v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->textTv:Landroid/widget/TextView;

    invoke-virtual {v14}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v1, v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->textTv:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    move-object v9, v15

    .line 322
    .local v9, h:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;
    const/4 v7, 0x0

    .line 324
    .local v7, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->access$5(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)Lcom/lx/launcher8/util/BitmapManager;

    move-result-object v1

    iget-object v2, v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/util/BitmapManager;->getCacheBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 325
    const/4 v10, 0x1

    .line 326
    .local v10, isDefault:Z
    if-nez v7, :cond_0

    .line 327
    iget-object v1, v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 328
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->access$1(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020131

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 353
    :goto_1
    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->access$5(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)Lcom/lx/launcher8/util/BitmapManager;

    move-result-object v1

    iget-object v2, v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Lcom/lx/launcher8/util/BitmapManager;->addCacheBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 355
    :cond_0
    if-eqz v7, :cond_1

    .line 356
    if-eqz v10, :cond_7

    .line 357
    iget-object v1, v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 361
    :goto_2
    iget-object v1, v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 362
    iget-object v1, v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 363
    iget-object v1, v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->loading:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 365
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->selectedPaperPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->access$6(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getActUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->selected:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 372
    .end local v10           #isDefault:Z
    :cond_2
    :goto_3
    move/from16 v11, p1

    .line 373
    .local v11, p:I
    iget-object v1, v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    new-instance v2, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v11}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$2;-><init>(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    new-instance v1, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$3;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v11}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$3;-><init>(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;I)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    return-object p2

    .line 307
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .end local v9           #h:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;
    .end local v11           #p:I
    .end local v14           #pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    .end local v15           #vh:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;
    check-cast v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;

    .restart local v15       #vh:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;
    goto/16 :goto_0

    .line 329
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #h:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;
    .restart local v10       #isDefault:Z
    .restart local v14       #pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    :cond_4
    :try_start_1
    iget-object v1, v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lockscreen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 330
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->access$1(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto/16 :goto_1

    .line 331
    :cond_5
    iget-object v1, v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 332
    invoke-static {}, Lcom/lx/launcher8/util/ImageLoader;->getInstance()Lcom/lx/launcher8/util/ImageLoader;

    move-result-object v1

    iget-object v2, v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v3}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lx/launcher8/util/ImageLoader;->convertURLToCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 333
    new-instance v4, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v9}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$1;-><init>(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->screenWidth:I
    invoke-static {v5}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->access$7(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->screenHeight:I
    invoke-static {v6}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->access$8(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)I

    move-result v6

    .line 332
    invoke-virtual/range {v1 .. v6}, Lcom/lx/launcher8/util/ImageLoader;->loadImage(Ljava/lang/String;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;II)Landroid/graphics/Bitmap;

    move-result-object v7

    goto/16 :goto_1

    .line 350
    :cond_6
    iget-object v1, v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->screenWidth:I
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->access$7(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->screenHeight:I
    invoke-static {v3}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->access$8(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/lx/launcher8/util/DynTileManager;->getLocalBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 351
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 359
    :cond_7
    iget-object v1, v15, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 366
    .end local v10           #isDefault:Z
    :catch_0
    move-exception v8

    .line 367
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 368
    .end local v8           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 369
    .local v8, e:Ljava/lang/Error;
    invoke-virtual {v8}, Ljava/lang/Error;->printStackTrace()V

    goto/16 :goto_3
.end method
