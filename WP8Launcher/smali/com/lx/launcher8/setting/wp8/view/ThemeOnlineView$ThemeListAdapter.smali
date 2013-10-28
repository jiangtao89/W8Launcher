.class Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThemeOnlineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThemeListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mHeight:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mTextColor:I

.field private mWidth:I

.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;Landroid/content/Context;III)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "textColor"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 283
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 284
    iput p4, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;->mWidth:I

    .line 285
    iput p5, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;->mHeight:I

    .line 286
    iput p3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;->mTextColor:I

    .line 287
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 288
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mThemeList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->access$0(Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mThemeList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->access$0(Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 303
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 308
    const/4 v10, 0x0

    .line 309
    .local v10, vh:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter$ViewHolder;
    if-nez p2, :cond_2

    .line 310
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030039

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 311
    new-instance v10, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter$ViewHolder;

    .end local v10           #vh:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter$ViewHolder;
    invoke-direct {v10, p0}, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter$ViewHolder;-><init>(Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;)V

    .line 312
    .restart local v10       #vh:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter$ViewHolder;
    const v0, 0x7f090079

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v10, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter$ViewHolder;->loading:Landroid/widget/LinearLayout;

    .line 313
    const v0, 0x7f0900ee

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v10, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter$ViewHolder;->fl:Landroid/widget/FrameLayout;

    .line 314
    iget-object v0, v10, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter$ViewHolder;->fl:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;->mWidth:I

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;->mHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;->mWidth:I

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;->mHeight:I

    invoke-direct {v8, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 316
    .local v8, params:Landroid/widget/FrameLayout$LayoutParams;
    const v0, 0x7f0900ef

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v10, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter$ViewHolder;->screenShotTv:Landroid/widget/ImageView;

    .line 317
    iget-object v0, v10, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter$ViewHolder;->screenShotTv:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    const v0, 0x7f0900e4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter$ViewHolder;->textTv:Landroid/widget/TextView;

    .line 319
    iget-object v0, v10, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter$ViewHolder;->textTv:Landroid/widget/TextView;

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;->mTextColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 320
    invoke-virtual {p2, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 323
    .end local v8           #params:Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mThemeList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->access$0(Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lx/launcher8/setting/bean/Theme;

    .line 324
    .local v9, theme:Lcom/lx/launcher8/setting/bean/Theme;
    iget-object v0, v10, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter$ViewHolder;->textTv:Landroid/widget/TextView;

    iget-object v2, v9, Lcom/lx/launcher8/setting/bean/Theme;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    const/4 v6, 0x0

    .line 327
    .local v6, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, v9, Lcom/lx/launcher8/setting/bean/Theme;->screenUrl:Ljava/lang/String;

    .line 328
    .local v1, url:Ljava/lang/String;
    move-object v7, v10

    .line 329
    .local v7, h:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter$ViewHolder;
    if-eqz v1, :cond_0

    .line 330
    invoke-static {}, Lcom/lx/launcher8/util/ImageLoader;->getInstance()Lcom/lx/launcher8/util/ImageLoader;

    move-result-object v0

    invoke-static {v1}, Lcom/lx/launcher8/util/ImageLoader;->convertURLToCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 331
    new-instance v3, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter$1;

    invoke-direct {v3, p0, v7}, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter$ViewHolder;)V

    .line 342
    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;->mWidth:I

    iget v5, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;->mHeight:I

    .line 330
    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/util/ImageLoader;->loadImage(Ljava/lang/String;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 344
    :cond_0
    if-eqz v6, :cond_1

    .line 345
    iget-object v0, v10, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter$ViewHolder;->screenShotTv:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 347
    :cond_1
    return-object p2

    .line 322
    .end local v1           #url:Ljava/lang/String;
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #h:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter$ViewHolder;
    .end local v9           #theme:Lcom/lx/launcher8/setting/bean/Theme;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    .end local v10           #vh:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter$ViewHolder;
    check-cast v10, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter$ViewHolder;

    .restart local v10       #vh:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter$ViewHolder;
    goto :goto_0
.end method
