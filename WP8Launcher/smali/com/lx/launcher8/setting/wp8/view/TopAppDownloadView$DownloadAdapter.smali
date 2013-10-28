.class Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;
.super Landroid/widget/BaseAdapter;
.source "TopAppDownloadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 192
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;
    .locals 1
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mDownloadList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$4(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mDownloadList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$4(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mDownloadList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$4(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 206
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 211
    const/4 v14, 0x0

    .line 212
    .local v14, vh:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 213
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$5(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v1

    iget v1, v1, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mbgColorValue:I

    invoke-static {v1}, Lcom/lx/launcher8/util/TopAppUtil;->getTextColor(I)I

    move-result v13

    .line 214
    .local v13, textColor:I
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$5(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03003b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 215
    new-instance v14, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;

    .end local v14           #vh:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;
    const/4 v1, 0x0

    invoke-direct {v14, p0, v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;)V

    .line 216
    .restart local v14       #vh:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;
    const v1, 0x7f0900f2

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    .line 217
    const v1, 0x7f0900b5

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 218
    const v1, 0x7f0900fc

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;->llRate:Landroid/widget/LinearLayout;

    .line 219
    const v1, 0x7f0900fd

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;->pbPercent:Landroid/widget/ProgressBar;

    .line 220
    const v1, 0x7f0900fe

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;->tvPercent:Landroid/widget/TextView;

    .line 221
    const v1, 0x7f0900fb

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;->tvStatus:Landroid/widget/TextView;

    .line 222
    const v1, 0x7f0900ff

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;->tvAction:Landroid/widget/TextView;

    .line 223
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;->pbPercent:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mRes:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$6(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020199

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$5(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v2

    iget v2, v2, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mTitleColorValue:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;->tvAction:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 233
    .end local v13           #textColor:I
    :goto_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mDownloadList:Ljava/util/List;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$4(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Ljava/util/List;

    move-result-object v1

    move/from16 v0, p1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lx/launcher8/download/FileSeed;

    .line 234
    .local v9, fileSeed:Lcom/lx/launcher8/download/FileSeed;
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/lx/launcher8/download/FileSeed;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    invoke-virtual {v9}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 274
    :goto_1
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;->tvAction:Landroid/widget/TextView;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$1;

    invoke-direct {v2, p0, v9}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;Lcom/lx/launcher8/download/FileSeed;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    move-object v10, v14

    .line 302
    .local v10, h:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;
    invoke-static {}, Lcom/lx/launcher8/util/ImageLoader;->getInstance()Lcom/lx/launcher8/util/ImageLoader;

    move-result-object v1

    invoke-virtual {v9}, Lcom/lx/launcher8/download/FileSeed;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    .line 303
    invoke-virtual {v9}, Lcom/lx/launcher8/download/FileSeed;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lx/launcher8/util/ImageLoader;->convertURLToCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$2;

    invoke-direct {v4, p0, v10}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$2;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;)V

    .line 312
    const/16 v5, 0x32

    const/16 v6, 0x32

    .line 302
    invoke-virtual/range {v1 .. v6}, Lcom/lx/launcher8/util/ImageLoader;->loadImage(Ljava/lang/String;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 313
    .local v7, bit:Landroid/graphics/Bitmap;
    iget-object v1, v10, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-static {v1, v7, v2}, Lcom/lx/launcher8/util/TopAppUtil;->setBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 315
    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;

    invoke-direct {v1, p0, v9}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;Lcom/lx/launcher8/download/FileSeed;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    return-object p2

    .line 230
    .end local v7           #bit:Landroid/graphics/Bitmap;
    .end local v9           #fileSeed:Lcom/lx/launcher8/download/FileSeed;
    .end local v10           #h:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    .end local v14           #vh:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;
    check-cast v14, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;

    .restart local v14       #vh:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;
    goto :goto_0

    .line 237
    .restart local v9       #fileSeed:Lcom/lx/launcher8/download/FileSeed;
    :sswitch_0
    const v12, 0x7f0a01c9

    .line 238
    .local v12, resId:I
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    #calls: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->isInstalled(Lcom/lx/launcher8/download/FileSeed;)Z
    invoke-static {v1, v9}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$7(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;Lcom/lx/launcher8/download/FileSeed;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    const v12, 0x7f0a01c1

    .line 242
    :cond_1
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$5(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v1

    invoke-virtual {v9}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$5(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v3

    iget v3, v3, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mbgColorValue:I

    invoke-static {v1, v2, v3}, Lcom/lx/launcher8/util/TopAppUtil;->getDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 244
    .local v8, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;->tvAction:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(I)V

    .line 245
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;->tvAction:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v8, v3, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 246
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;->tvStatus:Landroid/widget/TextView;

    const v2, 0x7f0a028c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 247
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;->tvStatus:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;->llRate:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 252
    .end local v8           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v12           #resId:I
    :sswitch_1
    const/4 v11, 0x0

    .line 253
    .local v11, progress:I
    invoke-virtual {v9}, Lcom/lx/launcher8/download/FileSeed;->getFileSize()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 254
    invoke-virtual {v9}, Lcom/lx/launcher8/download/FileSeed;->getLoadedSize()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    mul-long/2addr v1, v3

    invoke-virtual {v9}, Lcom/lx/launcher8/download/FileSeed;->getFileSize()J

    move-result-wide v3

    div-long/2addr v1, v3

    long-to-int v11, v1

    .line 255
    const/16 v1, 0x63

    if-le v11, v1, :cond_2

    const/16 v11, 0x63

    .line 256
    :cond_2
    if-gez v11, :cond_3

    .line 257
    const/4 v11, 0x0

    .line 261
    :cond_3
    invoke-virtual {v9}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/lx/launcher8/util/TopAppUtil;->getResId(I)I

    move-result v12

    .line 262
    .restart local v12       #resId:I
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$5(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v1

    invoke-virtual {v9}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$5(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v3

    iget v3, v3, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mbgColorValue:I

    invoke-static {v1, v2, v3}, Lcom/lx/launcher8/util/TopAppUtil;->getDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 264
    .restart local v8       #drawable:Landroid/graphics/drawable/Drawable;
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;->tvAction:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(I)V

    .line 265
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;->tvAction:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v8, v3, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 266
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;->pbPercent:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 267
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;->tvPercent:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;->llRate:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$ViewHolder;->tvStatus:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 235
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method
